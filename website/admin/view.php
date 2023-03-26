<?php
//include('../connectionData.txt');
//
//$conn = mysqli_connect($server, $user, $pass, $dbname, $port) or die('Error connecting to MySQL server.');

if (isset($_POST['type'])) {
    $type = $_POST['type'];

    switch($type) {
        case 'order':
            $label = 'Enter an order ID:';
            $name = 'order';
            break;
        case 'employee':
            $label = 'Enter an employee ID or name:';
            $name = 'employee';
            break;
        case 'member':
            $label = 'Enter a member ID or name:';
            $name = 'member';
            break;
        default:
            echo 'Invalid type';
            exit;
    }
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>Find Employee</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("form").submit(function(e){
                e.preventDefault();
                var inputText = $("#<?php echo $name ?>").val();
                var query = "";
                switch("<?php echo $type ?>") {
                    case 'order':
                        query = "SELECT a.order_id, a.store_id" +
                            ", a.member_id, c.name as member_name, c.phone, c.email" +
                            ", a.payment_method, a.transaction_date, total_price"+
                            ", b.items as items " +
                        "FROM market.`order` AS a " +
                        "JOIN market.member AS c " +
                        "ON a.member_id = c.id "+
                        "JOIN market.`store` AS d "+
                        "ON a.store_id = d.id "+
                        "JOIN ("+
                        "    SELECT JSON_ARRAYAGG(product) AS items"+
                        ", SUM(price * quantity) AS total_price"+
                        ", order_id " +
                        "FROM market.order_items "+
                        "JOIN market.`product` " +
                        "USING(product_id) "+
                        "GROUP BY order_id "+
                    ")AS b "+
                        "USING(order_id) "+
                        "WHERE a.order_id = '" + inputText + "'";
                        break;
                    case 'employee':
                        query = "SELECT * FROM market.employee WHERE id = '" + inputText + "' OR name LIKE '%" + inputText + "%'";
                        break;
                    case 'member':
                        query = "SELECT * FROM market.member WHERE id = '" + inputText + "' OR name LIKE '%" + inputText + "%'";
                        break;
                    default:
                        $("#view").html('Invalid type');
                        return;
                }
                $.ajax({
                    url: "query.php",
                    data: {query: query},
                    type: "POST",
                    success: function(response){
                        $("#view").html("Query: " + query + "<br>" + response);
                        // $("#view").html(response);
                        $("#view").addClass("style");
                    }
                });
            });
        });
    </script>
    <style>
        .style {
            /*background-color: gray;*/
            font-size: 16px;
            color: gray;
        }
    </style>
</head>
<body>
<form>
    <label for="<?php echo $name ?>"><?php echo $label ?></label>
    <input type="text" id="<?php echo $name ?>" name="<?php echo $name ?>">
    <input type="submit" value="submit">
</form>
<div id="view"></div>
</body>
</html>

