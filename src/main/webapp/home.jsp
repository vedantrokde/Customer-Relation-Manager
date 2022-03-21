<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>CRM | Homepage</title>
		<style>
			* {
				box-sizing: border-box;
			}
			html,
			body {
				margin: 0;
				padding: 0;
			}
			body {
				background: rgb(162, 247, 162);
			}
			main {
				width: 600px;
				margin: auto;
				background: #fff;
				padding: 50px;
				height: 100vh;
			}
			h2 {
				text-align: center;
			}
			table {
				width: 100%;
			}
			thead {
				height: 30px;
				background: #02bd78;
				color: #fff;
				font-weight: 300;
			}
			td,
			th {
				padding: 5px;
			}
			tr:nth-child(even) {
				background-color: #f2f2f2;
			}
			#links {
				text-align: center;
			}
			a {
				text-decoration: none;
			}
			.btn {
				background: #ececec;
				padding: 2px;
				border-radius: 5px;
				border: 1px solid #ccc;
			}
			.btn:active {
				box-shadow: 1px 1px 5px grey;
			}
		</style>
	</head>
	<body>
		<main>
			<h2>Customer Relation Manager</h2>
			<hr style="margin-bottom: 40px" />


			<button style="padding: 5px; margin: 10px 0; float: right;" type="submit" onclick="window.location.href='add'">Add Customer</button>
			<table>
				<thead>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Action</th>
				</thead>
				<tbody>
					<c:forEach var="customer" items="${customers}">
						<tr>
							<td>${customer.id}</td>
							<td>${customer.firstName} ${customer.lastName}</td>
							<td>${customer.email}</td>
							<td id="links">
								<a href="/edit?id=${customer.id}" class="btn">✏️</a>
								&nbsp; &nbsp;
								<a href="/delete?id=${customer.id}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false" class="btn">❌</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</main>
	</body>
</html>
