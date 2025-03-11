<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.model.Student"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<style>
	body, h2, a, table, th, td {
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

	h2 {
		font-size: 2rem;
		color: #fff;
		margin-bottom: 20px;
		text-align: center;
		text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
	}

	a {
		text-decoration: none;
		color: #fff;
		background: linear-gradient(135deg, #6a11cb, #2575fc);
		padding: 10px 20px;
		border-radius: 8px;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
		font-weight: bold;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
		margin-bottom: 20px;
	}

	a:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
		background: linear-gradient(135deg, #2575fc, #6a11cb);
	}

	table {
		width: 80%;
		border-collapse: collapse;
		background: rgba(255, 255, 255, 0.1);
		backdrop-filter: blur(10px);
		border-radius: 15px;
		overflow: hidden;
		box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
		border: 1px solid rgba(255, 255, 255, 0.1);
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

	@media (max-width: 768px) {
		table {
			width: 95%;
		}

		h2 {
			font-size: 1.5rem;
		}

		a {
			padding: 8px 16px;
			font-size: 0.9rem;
		}
	}
</style>
</head>
<body>
	<h2>Students List</h2>
	<a href="/student/home">Go Back</a>
	<div>
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Address</th>
			</tr>
			<c:forEach items="${students}" var="student">
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
					<td>${student.mobile}</td>
					<td>${student.address}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>