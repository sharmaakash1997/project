<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
  font-family: Arial;
  font-size: 14px;
  background-color: #f1f1f1;
 
}
        
* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0px -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}
.col-33 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}
.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-33,
.col-50 
 {
  padding: 0 8px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}
input[type=password] {
  width: 100%;
  margin-bottom: 20px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=date] {
  width: 100%;
  margin-bottom: 20px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=submit] {
  width: 10%;
}
label {
  margin-bottom: 10px;
  display: block;
}



.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}
#reason,#decreason{
    width: 100%;
    height: 100px;
    padding: 5px 10px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: white;
    resize: none;
}
</style>
    </head>
    <body>
        <%  
        String id=(String)request.getParameter("name");
        Connection conn = null;
        Statement stmt = null;
       try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
        stmt = con.createStatement();
        String sql = "SELECT * from ans ";
       ResultSet rs = stmt.executeQuery(sql);
       
      
      
        %>   
<h1><center><b><font face="verdana"><font color="maroon" size="+4">QUORA</font></b></center>
</h1> 
<head>



<table WIDTH="100%">
<tr>

</tr>
<tr>
<td bgcolor="maroon"> 

</td>
</tr>
<tr>

</tr>
</tr>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: maroon;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: black;
  color: black;
}

.topnav a.active {
  background-color: black;
  color: white;
}

.topnav-right {
  float: right;
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <div class="topnav-right">
    <a href="#search">Search</a>
    <a href="#about">About</a>
  </div>
</div>

<div style="padding-left:16px">
  
</div>

</table>
<img SRC="acc.png" border="0" align="right" height=200 width=200></td>
<p align=left>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  
  
  <div class="btn-group-vertical">
    <button type="button" class="btn btn-primary">Follow 12 more topics</button>
    <button type="button" class="btn btn-primary">Find your friends on quora</button>
    <button type="button" class="btn btn-primary">Ask your first question</button>
<button type="button" class="btn btn-primary">upvote 5 more good answer</button>
    <button type="button" class="btn btn-primary">Answer a question</button>
    <button type="button" class="btn btn-primary">visit your feed</button>
  </div>
</p>
<body>
    
<center><%while(rs.next()){%> 
    <%=rs.getString(1)%>
    <%System.out.println();
    %>
    <%}%></center>





</body>
</html>
</tr>
</table>
<br/>
<hr size="5" color=gray>
<%
    
}
catch(Exception e)
{
    out.print(e);
}
%>
<script>
$(document).ready(function(){
    $("#approved").click(function(){
        $("#dereason").hide();
    });
    $("#Decline").click(function(){
        $("#dereason").show();
    });
});
</script>
    </body>
</html>
