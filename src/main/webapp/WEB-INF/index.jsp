<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books</title>
  <!-- Bootstrap -->
  <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
<h1>All Books</h1><br>
<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Language</th>
			<th># of Pages</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="book" items="${books}" >
		<tr>
			<td><c:out value="${book.id}" ></c:out></td>
			<td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
			<td><c:out value="${book.language}"></c:out></td>
			<td><c:out value="${book.numberOfPages}"></c:out></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>