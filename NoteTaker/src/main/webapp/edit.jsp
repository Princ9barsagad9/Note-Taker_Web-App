<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.helper.*,org.hibernate.*,com.Entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit your Note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
<h1>Edit your Note</h1>
<%
int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s=FactoryProvider.getFactory().openSession();
Note note=(Note)s.get(Note.class,noteId);
%>
<form action="UpdateServlet" method="post">
<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> 
				<input required
					name="title"
					class="form-control"
					id="exampleInputEmail1" 
					placeholder="enter your note name"
					value="<%=note.getTitle() %>"
					/> 
					<small id="emailHelp"
					class="form-text text-muted">Make sure to enter a
					meaningfull title</small>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label>
				<textarea required name="content" id="Content"
					placeholder="enter your text here" class="form-control"
					style="height: 300px;">
                     <%=note.getContent() %>
					</textarea>
				<small id="exampleInputPassword1" class="form-text text-muted">This
					is best way to keep notes.</small>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
		</form>
	</div>

</body>
</html>