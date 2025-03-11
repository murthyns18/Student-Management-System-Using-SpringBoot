<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Student</title>
<style>
	body, h1, a, label, input, form, p, table, th, td {
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

	h1 {
		font-size: 2rem;
		color: #fff;
		margin-bottom: 20px;
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
		width: 400px;
		align-items: center;
		border: 1px solid rgba(255, 255, 255, 0.1);
	}

	.container input[type="number"], 
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

	.button-group {
		display: flex;
		gap: 10px;
		width: 100%;
	}

	.button-group a {
		text-decoration: none;
		color: #fff;
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		padding: 12px 24px;
		border-radius: 8px;
		text-align: center;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
		font-weight: bold;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
		flex: 1;
	}
	
	.button-group a:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
		background: linear-gradient(135deg, #2575fc, #6a11cb);
	}

	table {
		width: 100%;
		border-collapse: collapse;
		background: rgba(255, 255, 255, 0.1);
		backdrop-filter: blur(10px);
		border-radius: 15px;
		overflow: hidden;
		box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
		border: 1px solid rgba(255, 255, 255, 0.1);
		margin-top: 20px;
	}

	th, td {
		padding: 12px;
		text-align: left;
		border-bottom: 1px solid rgba(255, 255, 255, 0.1);
	}

	th {
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		color: #fff;
		font-weight: bold;
	}

	tr:hover {
		background: rgba(255, 255, 255, 0.05);
	}

	.msg {
		color: red;
		font-weight: bold;
		text-align: center;
		margin-top: 15px;
	}

	@media (max-width: 480px) {
		h1 {
			font-size: 1.5rem;
		}

		.container {
			width: 90%;
			padding: 20px 25px;
		}

		.button-group {
			flex-direction: column;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<form action="/student/fetchStudentById">
			<h1>Fetch Student by ID</h1>
			<label>Enter Student ID:</label>
			<input type="number" placeholder="Enter student id" required name="id">
			<div class="button-group">
				<input type="submit" value="Fetch">
				<a href="/student/home" class="back-button">Go Back</a>
			</div>
		</form>

		<c:if test="${not empty student}">
			<table>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Address</th>
				</tr>
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
					<td>${student.mobile}</td>
					<td>${student.address}</td>
				</tr>
			</table>
		</c:if>

		<div>
			<c:if test="${not empty msg}">
				<p class="msg">${msg}</p>
			</c:if>
		</div>
	</div>
</body>
</html>