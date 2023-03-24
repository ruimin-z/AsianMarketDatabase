<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');


// Retrieve the selected store from the form data
$selected_store = $_POST['store'];

// Output a message to the user indicating their selection
echo 'You selected: ' . $selected_store;

$sqlQuery = "SELECT status, COUNT(status) as num
              FROM(
                  SELECT CASE WHEN order_num >= 5 THEN 'ACTIVE MEMBER'
                              WHEN order_num = 0 THEN 'INACTIVE MEMBER'
                              ELSE 'OTHERS' END AS status
                  FROM(
                      SELECT id, COUNT(DISTINCT order_id) AS order_num
                      FROM market.`member` AS m
                      LEFT JOIN market.`order` AS o
                      ON o.member_id = m.id
                      WHERE transaction_date >= DATE_SUB(NOW(), INTERVAL 6 MONTH) OR transaction_date IS NULL
                              AND store_id IN(SELECT store_id FROM market.store WHERE name = '".$selected_store."')
                      GROUP BY m.id
                  ) t1
              )t
              GROUP BY status";

$result = mysqli_query($conn,$sqlQuery);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Pie Chart</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h1 align="center">School Pie Chart Data</h1>
			</div>
		</div>
	</div>
	 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['status','num'],
          <?php
          	while ($row = mysqli_fetch_array($result)) {
          		//echo "<pre>";print_r($row); die;
          		echo "['".$row["status"]."',".$row["num"]."],  ";
          	}
          ?>
        ]);
        var options = {
          title: 'Customer Activities',
          pieHole: 0.4,
          is3d:true,
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
    </script>
    <div id="piechart" style="width: 100%; height: 500px;"></div>
</body>
<center> <p>Active customer is defined as one who completed more than 5 orders within the last 6 months. <br>
Inactive customer` is defined as one who has not ordered for the past 6 months.</p></center>

</html>