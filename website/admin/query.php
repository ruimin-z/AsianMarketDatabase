<?php
include('../connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port) or die('Error connecting to MySQL server.');


if(isset($_POST['query'])) {
    $query = $_POST['query'];
    // assume $conn is a valid MySQLi connection object and $query is a valid SELECT query
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        // output table header with CSS styling
        echo "<table style='border-collapse: collapse; width: 100%;'>";
        echo "<thead style='background-color: #333; color: #fff;'>";
        echo "<tr>";
        while ($fieldinfo = mysqli_fetch_field($result)) {
            echo "<th style='padding: 12px 15px; border: 1px solid #ddd;'>{$fieldinfo->name}</th>";
        }
        echo "</tr>";
        echo "</thead>";

        // output table rows with alternating background color and hover effect
        echo "<tbody>";
        $count = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $count++;
            $bg_color = ($count % 2 == 0) ? '#f2f2f2' : '#fff';
            echo "<tr style='background-color: {$bg_color};'>";
            foreach ($row as $value) {
                echo "<td style='padding: 12px 15px; border: 1px solid #ddd;'>{$value}</td>";
            }
            echo "</tr>";
        }
        echo "</tbody>";

        // output table footer
        echo "</table>";
    } else {
        echo "No results found.";
    }


    mysqli_close($conn);
}
?>
