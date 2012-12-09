<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Example 1</title>
	
	<style type="text/css">
		body, table {
			font-family: sans-serif;
			font-size: 12px;
		}
		.data, .data td {
			border-collapse: collapse;
			xwidth: 100%;
			border: 1px solid #5f5f5f;
			margin: 2px;
			padding: 4px;
		}
		.data th {
			font-weight: bold;
			border: 1px solid #5f5f5f;
			background-color: #9C9C9C;
			color: white;
			margin: 2px;
			padding: 4px;
		}
	</style>
	
</head>
<body>
<h1>
	Example 1 
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h3>Users</h3>
<c:if  test="${!empty userList}">
<table class="data">
<tr>
    <th>User Id</th>
    <th>First Name</th>
    <th>Middle Name</th>
    <th>Last Name</th>
    <th>Password</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${userList}" var="user">
    <tr>
        <td>${user.userId}</td>
        <td>${user.firstName}</td>
        <td>${user.middleName}</td>
        <td>${user.lastName}</td>
        <td>${user.passWord}</td>
        <td><a href="delete/${user.userId}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>

</body>
</html>
