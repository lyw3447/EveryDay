<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Login</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width" />
<meta name="ctx" th:content="${#httpServletRequest.getContextPath()}" />
<base href="/" />
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/webjars/font-awesome/css/font-awesome.min.css"></link>
</head>
<body>



	<div class="container">
		<br />
		<br />
		<br />
		<form th:object="${loggedInUser}" method="post">
			<div class="row">
				<label for="username">Username:</label> <span
					th:text="${loggedInUser.email}" ></span>
			</div>
			<div class="row">
				<label for="firstName">Name:</label> <span th:text="*{firstName}" ></span>
				<span th:text="*{lastName}" ></span>
			</div>
			<div class="row">
				<label for="image">Name:</label> <img th:attr="src=@{*{image}}"
					style="width: 150px; height: 150px;" />
			</div>

		</form>
		<br /> <a href="/login" th:href="@{/login}"
			class="btn btn-info btn-lg"> <span
			class="glyphicon glyphicon-chevron-left"></span> Login using other
			social Providers
		</a>

	</div>

</body>
</html>