<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>

<style>
	body, h1, a {
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

	<h1>Welcome to Student Management</h1>

	<div class="container">
		<a href="/student/insertStudent">Add Student</a>
		<a href="/student/fetchStudent">Fetch Student</a>
		<a href="/student/getAllStudents">Fetch All Students</a>
		<a href="/student/updateStudent">Update Student</a>
		<a href="/student/deleteStudent">Delete Student</a>
	</div>

</body>
</html>