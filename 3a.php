<?php
session_start();
if (isset($_SESSION['c_name'])) {
    echo "Welcome " . $_SESSION['c_name'];

    if (isset($_SESSION['count'])) {
        $_SESSION['count'] += 1;
    } else
        $_SESSION['count'] = 1;
    echo "<br> Total visits" . $_SESSION['count'];
} else
    echo "Welcone new user";

?>
<html>
<br>
<a href="3.php">back</a><br>
<a href="3b.php">Logout</a>

</html>