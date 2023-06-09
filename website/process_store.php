<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');


// Retrieve the selected store from the form data
$selected_store = $_POST['store'];

// Output a message to the user indicating their selection
echo "<span style='background-color: #e0e0e0;'>You selected: $selected_store</span>";

// echo 'You selected: ' . $selected_store;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .row {
            display: flex;
            justify-content: center;
            margin-bottom: 10px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            width: 600px;
        }
    </style>
</head>
<body>
	<h2 align='center'>Admin Data Management</h2>

    <div class="row">
        <div class="button-container">
            <form action="admin/view.php" method="post">
                <input type="hidden" name="type" value="order">
                <button type="submit">Find Order</button>
            </form>

            <form action="admin/view.php" method="post">
                <input type="hidden" name="type" value="employee">
                <button type="submit">Find Employee</button>
            </form>

            <form action="admin/view.php" method="post">
                <input type="hidden" name="type" value="member">
                <button type="submit">Find Member</button>
            </form>
        </div>
    </div>

<!--    <div class="row">-->
<!--        <div class="button-container">-->
<!--            <form action="admin/create.php" method="post">-->
<!--                <input type="hidden" name="type" value="order">-->
<!--                <button type="submit">Create New Order</button>-->
<!--            </form>-->
<!---->
<!--            <form action="admin/create.php" method="post">-->
<!--                <input type="hidden" name="type" value="employee">-->
<!--                <button type="submit">Create New Employee</button>-->
<!--            </form>-->
<!---->
<!--            <form action="admin/create.php" method="post">-->
<!--                <input type="hidden" name="type" value="member">-->
<!--                <button type="submit">Create New Member</button>-->
<!--            </form>-->
<!--        </div>-->
<!--    </div>-->


<br>
</body>

<hr style="height: 3px; border: 10px; background-color: black;">


<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Dashboard</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2 align="center">Customer Activities</h2>
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
              $sqlQuery = "SELECT status, COUNT(status) as num
                           FROM(
                           SELECT CASE WHEN order_num >= 5 THEN 'ACTIVE MEMBER'
                                       WHEN order_num = 0 THEN 'INACTIVE MEMBER'
                                       ELSE 'OTHERS' END AS status
                           FROM(
                               SELECT id, COUNT(DISTINCT order_id) AS order_num, store_id
                               FROM market.`member` AS m
                               LEFT JOIN market.`order` AS o
                               ON o.member_id = m.id
                               WHERE (transaction_date >= DATE_SUB(NOW(), INTERVAL 6 MONTH) OR transaction_date IS NULL)
                                       AND (store_id IN(SELECT DISTINCT id FROM market.store WHERE name = '".$selected_store."') OR store_id IS NULL)
                               GROUP BY m.id, store_id
                           ) t1
                           )t
                           GROUP BY status";


              $result = mysqli_query($conn,$sqlQuery);

              while ($row = mysqli_fetch_array($result)) {
                  echo "['".$row["status"]."',".$row["num"]."],  ";
              }
          ?>
        ]);
        var options = {
          title: 'Active customer is defined as one who completed more than 5 orders within the last 6 months. Inactive customer is defined as one who has not ordered for the past 6 months.',
          pieHole: 0.4,
          is3d:true,
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
    </script>
    <div id="piechart" style="width: 100%; height: 300px;"></div>

<hr style="height: 3px; border: 10px; background-color: #ccc;">

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h2 align="center">Low Stock Products</h2>
            <p style="font-size: 14px; color: gray; text-align:center;"> A product is considered low in stock when the quantity <=3 </p>
        </div>
    </div>
</div>
<?php
    // Retrieve data from the database
    $sql = "SELECT DISTINCT p.product, p.supplier, t1.quantity
            FROM market.stock AS t1
            JOIN market.store AS t2
            ON t1.store_id = t2.id
            JOIN market.product AS p
            USING(product_id)
            WHERE t1.quantity <= 3 AND t2.name = '".$selected_store."'
            ORDER BY 1,2,3";
    $result = $conn->query($sql);

    // Generate the HTML table
    if ($result->num_rows > 0) {
        echo "<table class='center'>";
        echo "<tr><th>product</th><th>supplier</th><th>quantity</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["product"] . "</td>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["supplier"] . "</td>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["quantity"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

?>
<style>
    table.center {
      margin: auto;
    }
</style>

<hr style="height: 3px; border: 10px; background-color: #ccc;">

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h2 align="center">Popular Goods</h2>
            <p style="font-size: 14px; color: gray; text-align:center;"> Display popular products with top 5 ranks</p>
        </div>
    </div>
</div>
<?php
    // Retrieve data from the database
    $sql1 = "SELECT product, supplier,order_num, `rank`
            FROM(
                    SELECT product, supplier, count(1) as order_num,RANK() OVER(order by count(1) DESC) AS `rank`
                    FROM market.order_items o
                    JOIN market.product p
                    USING(product_id)
                    JOIN market.`order` od
                    USING(order_id)
                    JOIN market.store s
                    ON s.id = od.store_id
                    WHERE s.name = '".$selected_store."'
                    GROUP BY product, supplier
            ) t
            WHERE `rank` <= 5";
    $result = $conn->query($sql1);

    // Generate the HTML table
    if ($result->num_rows > 0) {
        echo "<table class='center'>";
        echo "<tr><th>product</th><th>supplier</th><th>order_num</th><th>rank</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["product"] . "</td>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["supplier"] . "</td>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["order_num"] . "</td>";
            echo "<td style='padding: 2px; border: 1px solid #ddd;'>" . $row["rank"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
?>
<style>
    table.center {
      margin: auto;
    }
</style>

</body>




</html>

