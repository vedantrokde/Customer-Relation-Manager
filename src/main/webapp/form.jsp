<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>CRM | Add Customer</title>
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
			h2,
			h3 {
				text-align: center;
			}
			table {
				width: 100%;
			}
			.first {
				text-align: right;
				padding-right: 5px;
			}
			.link {
				text-decoration: none;
				font-size: 0.8em;
				border-right: 1px solid black;
				padding-right: 5px;
			}
		</style>
	</head>
	<body>
		<main>
			<h2>Customer Relation Manager</h2>
			<hr style="margin-bottom: 40px" />

			<h3 style="text-decoration: underline">Customer Form</h3>
			<div style="width: 450; margin: auto">
				<form:form
					action="save"
					modelAttribute="customer"
					method="PUT"
				>
					<form:hidden path="id" />
					<table>
						<tbody>
							<tr>
								<td class="first">
									<label>First Name:</label>
								</td>
								<td><form:input path="firstName" /></td>
							</tr>
							<tr>
								<td class="first"><label>Last Name:</label></td>
								<td><form:input path="lastName" /></td>
							</tr>
							<tr>
								<td class="first"><label>Email:</label></td>
								<td><form:input path="email" /></td>
							</tr>
							<tr>
								<td class="first">
									<a
										class="link"
										href=""
										onclick="pageContext.request.contextPath"
										>Back to Homepage
									</a>
								</td>
								<td>
									<input
										type="submit"
										value="Save"
										class="save"
									/>
								</td>
							</tr>
						</tbody>
					</table>
				</form:form>
			</div>
			<hr style="margin-top: 40px" />
		</main>
	</body>
</html>
