<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validation</title>
    <link rel="stylesheet" href="valid.css">
</head>
<body>
    <div id="container">
    <h3>Enter Username:</h3>
    <input type="text" placeholder="Enter username" id="uname">
    <h3>Enter Password:</h3>
    <input type="password" placeholder="Enter password" id="pwd"><br>
  
    <button id="check" onclick="check()">Login</button>
    <p id="txt"></p>

    </div>
</body>
<script>
    function check() {
        const uname = document.getElementById("uname").value;
        const pwd = document.getElementById("pwd").value;

        if (uname === "abc" && pwd === "123") {
            document.getElementById("txt").textContent = "Logged In!";
        } else {
            document.getElementById("txt").textContent = "Invalid username or password";
        }
    }
</script>
</html>
