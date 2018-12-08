<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>register form</title>
</head>
<body>
    <form action="xuly.php" method="POST">
        <table>
            <tr>
                <td> User name: </td>
                <td> <input type="text" name="txtname"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="txtpass"></td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td><input type="text" name="txtP"></td>
            </tr>
            <tr>
            <td>Email:</td>
            <td><input type="text" name="txte"></td>
            </tr>
            <tr>
            <td> Giới tính:</td>
            <td>  </td>
            </tr>
        </table>
        <input type="submit" name="submit" value="Create acount">
    </form>
    
</body>
</html>