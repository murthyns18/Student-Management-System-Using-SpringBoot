<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
	body, h1, a, input, form, p {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Arial', sans-serif;
	}

	body {
		background: linear-gradient(135deg, #1e1e2f, #2a2a40);
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		flex-direction: column;
		color: #fff;
	}

	h1 {
		font-size: 2.5rem;
		color: #fff;
		margin-bottom: 30px;
		text-align: center;
		text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
	}

	.container {
		background: rgba(255, 255, 255, 0.1);
		padding: 25px 35px;
		border-radius: 15px;
		backdrop-filter: blur(10px);
		box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
		display: flex;
		flex-direction: column;
		gap: 15px;
		width: 320px;
		align-items: center;
		border: 1px solid rgba(255, 255, 255, 0.1);
	}

	.container input[type="text"], .container input[type="submit"] {
		width: 100%;
		padding: 12px;
		border-radius: 8px;
		border: none;
		background: rgba(255, 255, 255, 0.1);
		color: #fff;
		font-size: 1rem;
		margin-bottom: 15px;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
	}

	.container input[type="submit"] {
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		color: #fff;
		font-weight: bold;
		cursor: pointer;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
	}

	.container input[type="submit"]:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
		background: linear-gradient(135deg, #2575fc, #6a11cb);
	}

	.container a {
		text-decoration: none;
		color: #fff;
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		padding: 12px 24px;
		border-radius: 8px;
		width: 100%;
		text-align: center;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
		font-weight: bold;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
	}
	
	.container a:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
		background: linear-gradient(135deg, #2575fc, #6a11cb);
	}

	.success {
		color: #4CAF50;
		font-weight: bold;
		text-align: center;
		margin-top: 15px;
	}

	@media (max-width: 480px) {
		h1 {
			font-size: 2rem;
		}

		.container {
			width: 90%;
			padding: 20px 25px;
		}
	}
</style>
</head>
<body>

	<h1>Add Student</h1>

	<div class="container">
		<form action="/student/saveStudent" method="post">
			<input type="text" placeholder="Enter your name" name="name" required>
			<input type="text" placeholder="Enter your email" name="email" required>
			<input type="text" placeholder="Enter your mobile" name="mobile" required>
			<input type="text" placeholder="Enter your address" name="address" required>
			<input type="submit" value="Submit">
		</form>
		<a href="/student/home">Go Back</a>
	</div>

	<div>
		<c:if test="${not empty msg}">
			<p class="success">${msg}</p>
		</c:if>
	</div>

</body>
</html>