<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker:All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0 text-center">
		<%@include file="navbar.jsp"%>
		<Br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col_12"></div>
		</div class="container text-center">
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note note : list) {
		%>
	<div class="container text-center">
		<div class="card text-center">
			<img class="card-img-top m-4 mx-auto" style="max-width:50px" src="img/notes.png" alt="Card image cap">
			<div class="card-body p-5">
				<h5 class="card-title"><%=note.getTitle() %></h5>
				<p class="card-text"><%=note.getContent() %></p>
				<p class="card-text"><b class="text-primary"><%=note.getAddedDate() %></b></p>
				<div class="container text-center">
				<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger ">Delete</a>
				<a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary ">Update</a>
				</div>
			</div>
		</div>
</div>

		<%
		}
		s.close();
		%>
	</div>
</body>
</html>