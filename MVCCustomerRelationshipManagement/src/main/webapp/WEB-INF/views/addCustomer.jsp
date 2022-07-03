<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Customer</title>
</head>

<body style="background-color: #FEFBE7">

	<div style="background-color: #F7CCAC">
		<div class="container">
			<h2>Customer Relationship Management</h2>
			<hr>
		</div>
	</div>

	<div class="container">

		<p class="h4 mb-4">Customer</p>

		<form action="/MVCCustomerRelationshipManagement/custrshipmngmt/save"
			method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${customer.id}" />

			<div class="form-inline">
				<input type="text" name="firstName" value="${customer.firstName}"
					class="form-control mb-4 col-4" placeholder="First Name">



			</div>

			<div class="form-inline">

				<input type="text" name="lastName" value="${customer.lastName}"
					class="form-control mb-4 col-4" placeholder="Last Name">



			</div>
			<div class="form-inline">

				<input type="text" name="eMail" value="${customer.eMail}"
					class="form-control mb-4 col-4" placeholder="E-Mail">



			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/MVCStudentManagement/student/list" class="btn btn-primary">Back
			to Customer List</a>

	</div>
</body>

</html>










