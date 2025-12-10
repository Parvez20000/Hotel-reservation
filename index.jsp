<%-- 
    Document   : index
    Created on : 18 Jul, 2025, 12:03:14 PM
    Author     : SHADAB
--%>

<%@ page language="java" %>
<html>
<head><title>Hotel Room Booking</title></head>
<body>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book a Room</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
      height: 100vh;
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .form-container {
      background: #fff;
      padding: 30px 40px;
      border-radius: 15px;
      box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
      width: 350px;
      text-align: center;
    }

    h2 {
      color: #333;
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: stretch;
    }

    label {
      text-align: left;
      margin-bottom: 5px;
      font-weight: bold;
      color: #444;
    }

    input, select {
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #ccc;
      margin-bottom: 15px;
      font-size: 14px;
      transition: 0.3s;
    }

    input:focus, select:focus {
      border-color: #6a11cb;
      outline: none;
      box-shadow: 0 0 5px #6a11cb;
    }

    input[type="submit"] {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: #fff;
      font-weight: bold;
      border: none;
      cursor: pointer;
      transition: 0.3s;
    }

    input[type="submit"]:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2>Book a Room</h2>
    <form action="bookRoom.jsp" method="post">
      <label>Name:</label>
      <input type="text" name="name" required>

      <label>Email:</label>
      <input type="email" name="email" required>

      <label>Room Type:</label>
      <select name="room_type">
        <option>Single</option>
        <option>Double</option>
        <option>Suite</option>
      </select>

      <label>Check-in Date:</label>
      <input type="date" name="check_in" required>

      <label>Check-out Date:</label>
      <input type="date" name="check_out" required>

      <input type="submit" value="Book Now">
    </form>
  </div>

</body>
</html>
  

