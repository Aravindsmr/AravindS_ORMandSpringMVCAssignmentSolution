<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<title>Customer Relationship Mngmt</title>
</head>

<body style="background-color: #FEFBE7">

	<div class="title" style="background-color: #F7CCAC">
		<div class="container">
			<h2>Customer Relationship Management</h2>
			<hr>
		</div>
	</div>

	<div class="container">
		<!-- Add a search form -->

		<form action="/MVCCustomerRelationshipManagement/books/search"
			class="form-inline">

			<!-- Add a button -->
			<a
				href="/MVCCustomerRelationshipManagement/custrshipmngmt/showFormforAdd"
				class="btn btn-primary btn-sm mb-3"> Add Customer </a>


		</form>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark" style="background-color: #F7CCAC">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>E-Mail</th>
					<th>Action</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${customers}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.eMail}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/MVCCustomerRelationshipManagement/custrshipmngmt/showFormforUpdate?id=${tempCustomer.id}"
							class="btn btn-info btn-sm"> Update </a> <a> | </a> <!-- Add "delete" button/link -->
							<a
							href="/MVCCustomerRelationshipManagement/custrshipmngmt/delete?id=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete Customer ${tempCustomer.firstName}?' ))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>
</html>