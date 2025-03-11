<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<style>
	body, h2, h3, a, label, input, form, p {
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
		min-height: 100vh;
		flex-direction: column;
		color: #fff;
		padding: 20px;
	}

	h2, h3 {
		font-size: 2rem;
		color: #fff;
		margin-bottom: 20px;
		text-align: center;
		text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
	}

	h3 {
		font-size: 1.5rem;
		margin-top: 20px;
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

	.container input[type="text"], 
	.container input[type="number"], 
	.container input[type="email"], 
	.container input[type="submit"] {
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
		h2 {
			font-size: 1.5rem;
		}

		h3 {
			font-size: 1.2rem;
		}

		.container {
			width: 90%;
			padding: 20px 25px;
		}
	}
</style>
</head>
<body>
	<h2>Update Student By Id</h2>
	<div class="container">
		<form action="/student/updateStudent" method="get">
			<label>Enter Student Id:</label>
			<input type="number" placeholder="Enter Id" name="id" required>
			<input type="submit" value="Fetch Details">
		</form>
		<a href="/student/home">Go Back</a>
	</div>

	<c:if test="${not empty student}">
		<h3>Update Student Details</h3>
		<div class="container">
			<form action="/student/updateStudentById" method="post">
				<input type="hidden" name="id" value="${student.id}">

				<label>Name:</label>
				<input type="text" name="name" value="${student.name}" required>

				<label>Email:</label>
				<input type="email" name="email" value="${student.email}" required>

				<label>Mobile:</label>
				<input type="text" name="mobile" value="${student.mobile}" required>

				<label>Address:</label>
				<input type="text" name="address" value="${student.address}" required>

				<input type="submit" value="Update">
			</form>
		</div>
	</c:if>

	<div>
		<c:if test="${not empty msg}">
			<p class="success">${msg}</p>
		</c:if>
	</div>
</body>
</html>