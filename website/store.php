<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

if ($conn) {
	echo "Connection Successfully";
}

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

    echo $sqlQuery;
    $result = mysqli_query($conn,$sqlQuery);
?>
<!DOCTYPE html>
<html>
  <head>
      <title>JavaScript Pie Chart</title>
      <script src="https://cdn.anychart.com/releases/8.0.1/js/anychart-core.min.js"></script>
      <script src="https://cdn.anychart.com/releases/8.0.1/js/anychart-pie.min.js"></script>
  </head>
  <body>
    <div id="container" style="width: 70%; height: 70%"></div>
    <script>
        anychart.onDocumentReady(function() {

          var data = [
            {x: "A", value: 637166},
            {x: "B", value: 721630},
            {x: "C", value: 148662, state:"selected"},
            {x: "D", value: 78662},
            {x: "E", value: 90000}
          ];

          // create the chart
          var chart = anychart.pie(data);

          // set the chart title
          chart.title("Customer Activities");
          // set legend position
          chart.legend().position("middle");
          // set items layout
          chart.legend().itemsLayout("vertical");
          // sort elements
          chart.sort("desc");

          // display the chart in the container
          chart.container(anychart.graphics.create("container"));
          chart.draw();
        });
    </script>
  </body>
</html>



