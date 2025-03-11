<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DeleteStudent</title>
<style>
	body, h1, label, input, a, p {
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
		color: #fff;
	}

	.container {
		background: rgba(255, 255, 255, 0.1);
		padding: 30px 40px;
		border-radius: 15px;
		backdrop-filter: blur(10px);
		box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
		width: 350px;
		border: 1px solid rgba(255, 255, 255, 0.1);
	}

	h1 {
		font-size: 2rem;
		margin-bottom: 20px;
		text-align: center;
		text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
	}

	label {
		font-size: 1rem;
		margin-bottom: 8px;
		display: block;
	}

	input[type="number"] {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: 1px solid rgba(255, 255, 255, 0.2);
		background: rgba(255, 255, 255, 0.1);
		color: #fff;
		font-size: 1rem;
		margin-bottom: 20px;
	}

	input[type="number"]::placeholder {
		color: rgba(255, 255, 255, 0.5);
	}

	.button-group {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	input[type="submit"], .back-button {
		text-decoration: none;
		color: #fff;
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		padding: 10px 20px;
		border-radius: 8px;
		border: none;
		cursor: pointer;
		font-weight: bold;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
		transition: transform 0.3s ease, box-shadow 0.3s ease;
	}

	input[type="submit"]:hover, .back-button:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
		background: linear-gradient(135deg, #2575fc, #6a11cb);
	}

	.dltmsg {
		margin-top: 20px;
		text-align: center;
		font-size: 1rem;
		color: #ff6b6b;
	}

	@media (max-width: 480px) {
		.container {
			width: 90%;
			padding: 20px 25px;
		}

		h1 {
			font-size: 1.8rem;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<form action="/student/deleteStudentById">
			<h1>Delete Student by ID</h1>
			<label>Enter Student ID:</label>
			<input type="number" placeholder="Enter id" required name="id">
			<div class="button-group">
				<input type="submit" value="Delete">
				<a href="/student/home" class="back-button">Go Back</a>
			</div>
			<div>
				<c:if test="${not empty msg}">
					<p class="dltmsg">${msg}</p>
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>