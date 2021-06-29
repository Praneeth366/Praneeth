<?php
session_start();
?>
<html>

<body>
    <form method="POST">
        <table>
            <tr>
                <td colspan=2>Login Sessions</td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="uname" id=""></td>
            </tr>
            <td>Password</td>
            <td><input type="password" name="password" id=""></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="submit" id="">
                </td>
            </tr>
        </table>
    </form>
    <?php
    
    if (isset($_POST['submit'])) {
        $nam = $_POST['uname'];
        $usr = "jack";
        if($nam == $usr)
            $_SESSION['c_name'] = $nam;

        

        header("location: 3a.php");
      
    }
    
    ?>
</body>

</html>