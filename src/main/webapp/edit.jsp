<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <%@include file ="all_js_css.jsp" %>

</head>
<body>
<div class="container">
<%@include file ="navbar.jsp" %>

<h2>Edit Your Note</h2>
<br>
<%
int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s=FactoryProvider.getFactory().openSession();
Note note=s.get(Note.class, noteId);

%>
 <form action="UpdateServlet" method="post">
 <input value="<%= note.getId()%>"name="noteId" type="hidden" />
  <div class="form-group">
    <label for="title">Note title</label>
    <input name="title"
    required type="text"
     class="form-control" 
     id="title" 
     aria-describedby="emailHelp"
     placeholder="Enter Here"
     value="<%= note.getTitle()%>"/>    
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea 
    name="content"
    id="content" placeholder="Enter your Content"
    class="form-control"
    style="height:200px;"><%=note.getContent() %>
    </textarea>
  </div>
 
  <div class ="container text-center">
  <button type="submit" class="btn btn-success">Save Your Note</button>
  </div>
</form>
</div>

</body>
</html>