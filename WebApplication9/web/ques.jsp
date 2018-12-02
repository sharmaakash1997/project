<%-- 
    Document   : ques
    Created on : 3 Dec, 2018, 2:51:07 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE>

<html>

<head>



<body background color="white">

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

.clearfix {
    overflow: auto;
}
.img2 {
width: 40px;
    height: 40px;
    border-radius:50%;
    float: left;
}

.man
{
    height:40px;
    width:230px;;
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

</div id="quest">

</p>



<body>
<%
 try{
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from ans");  
while(rs.next())  {
 
%>
<center> <form action="ques" id="usrform">
    <div id="id"></div>
</form>
<br>
<div id="quest">
        <input type="email" form="usrform" id="em" placeholder="Email" value="<%=rs.getString(1)%>" readonly><br>
        <br>
<textarea rows="3" cols="50" id="t1" name="comment" form="usrform" readonly value="<%=rs.getString("question")%>" >

<%=rs.getString("question")%></textarea><br>


</div>
</form></center>

</form>

<br>

<center>
<div id="ans">

<textarea rows="4" cols="50" name="comment" form="usrform" id="t2" onclick="hide('t1','quest','h2')">

Answer...</textarea><br>

<input type="submit" onclick="hide('t2','ans','p')">
</div>
</form></center>
<hr>
<%}%>
<p align =center class="ex1"><b>What is your question or link?.</b>

<font face="Arial" color="black">.</font></center>

<p><center><font face="Arial" color="black">How can I get bigger forearms and wrists?<br>

<b>Benjamin Mason.....</b>

<br>

<u> Undergraduate Biology, The University of Texas at Dallas (2012)

Answered 22h.. ago</u><br>

How to Make Your Wrist & Forearms BiggerWhen working to build your biceps and triceps, the forearms and wrists can easily be neglected. Developing your forearms has several benefits such as decreas...(more)

.</center> <br/><br/>

<center><b> ANSWER.. COMMENT.. LIKE ....</font></b><br/></center>



<br/>

<table BORDER=0 CELLSPACING=0 CELLPADDING=0 COLS=5 WIDTH="100%" >

<p><center><b><font face="Arial" size="+1" color="red">TO KNOW MORE CLICK HERE.</font></b></center>

<br/>

<br/>

<table BORDER=0 CELLSPACING=0 CELLPADDING=0 COLS=5 WIDTH="100%" >

<tr ALIGN=CENTER VALIGN=CENER>

<td><a href="contact.html"><img SRC="sci.png" border="0" height=100 width=100></a>



<td><a href="Alfa_romeo_main.html"><img SRC="food.png" border="0" height=200 width=200></a></td>

<td><a href="contact.html"><img SRC="eng (2).jpg" border="0" height=200 width=200></a></td>

<td><a href="Alfa_romeo_main.html"><img SRC="phy.png" border="0" height=100 width=100></a></td>

<td><a href="Ferrari_main.html"><img SRC="cmp.png" border="0" height=100 width=100></a></td>

<td><a href="Fiat_main.html"><img SRC="music.png" border="0" height=100 width=100></a></td>



</tr>

</table>

<br/>

<hr size="5" color=gray>







<%
}
catch(Exception e){ System.out.println(e);}

%>

</body>

</html>

</tr>

</table>

<br/>

<hr size="5" color=gray>

</body>

</html>

