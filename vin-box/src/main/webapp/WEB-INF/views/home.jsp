<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Box - Home</title>
	
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
	Hello world!    
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href="http://localhost:8081/box/example/example1">Example 1</a>

</body>
</html>
