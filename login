<!DOCTYPE html>
<html>
<head>
  <title>Login Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      background: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
      width: 100%;
      max-width: 400px;
      text-align: center;
    }
    .container h2 {
      margin: 0 0 20px;
      color: #333;
    }
    .form-group {
      margin: 0 0 10px;
    }
    .form-group label {
      display: block;
      text-align: left;
      margin-bottom: 5px;
    }
    .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .form-group .error-message {
      color: #ff0000;
      font-size: 14px;
    }
    .btn {
      width: 100%;
      background: #333;
      color: #fff;
      padding: 10px;
      border: 0;
      border-radius: 5px;
      cursor: pointer;
    }
    .btn:hover {
      background: #444;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Login Form</h2>
    <form id="loginForm">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
        <div class="error-message" id="usernameError"></div>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <div class="error-message" id="passwordError"></div>
      </div>
      <button type="button" class="btn" onclick="validateForm()">Login</button>
    </form>
  </div>

  <script>
    function validateForm() {
      // Reset error messages
      document.getElementById("usernameError").innerHTML = "";
      document.getElementById("passwordError").innerHTML = "";

      // Get input values
      var username = document.getElementById("username").value;
      var password = document.getElementById("password").value;

      // Validate username and password
      if (username === "") {
        document.getElementById("usernameError").innerHTML = "Username is required.";
      }

      if (password === "") {
        document.getElementById("passwordError").innerHTML = "Password is required.";
      }

      // Check if both fields are filled
      if (username !== "" && password !== "") {
        // You can add your login logic here, e.g., send a request to a server
        alert("Login successful!"); // For demonstration purposes
      }
    }
  </script>
</body>
</html>
