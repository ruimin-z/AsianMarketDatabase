<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
</head>


<body bgcolor="white">


<h3>Connecting to Asian Market MySQL Database/PHP</h3>

<?php
    include('connectionData.txt');
    $conn = mysqli_connect($server, $user, $pass, $dbname, $port)
    or die('Error connecting to MySQL server.');

    $sqlQuery = "SELECT DISTINCT name FROM market.store";
    $result = mysqli_query($conn,$sqlQuery);
?>

<form action="process_store.php" method="POST">
    <label for="store">Select a store:</label>
    <select id="store" name="store">
        <?php
            while ($row = $result->fetch_assoc()) {
                echo "<option value='" . $row["name"] . "'>" . $row["name"] . "</option>";
            }
        ?>
    </select>
    <br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
