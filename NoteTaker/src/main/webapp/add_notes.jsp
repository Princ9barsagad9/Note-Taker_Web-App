<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<hi>Please enter your login credentials </hi>
		<!-- This is form -->
		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input required
					name="title"
					class="form-control"
					id="exampleInputEmail1" 
					placeholder="enter your note name"> <small id="emailHelp"
					class="form-text text-muted">Make sure to enter a
					meaningfull title</small>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label>
				<textarea required name="content" id="Content"
					placeholder="enter your text here" class="form-control"
					style="height: 300px;"></textarea>
				<small id="exampleInputPassword1" class="form-text text-muted">This
					is best way to keep notes.</small>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			<div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>