<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Results</title>
<link href="css/my_styles.css" rel="stylesheet" type="text/css">

</head>

<body>

<!--Adding the name_bar-->

<div class="name_bar"> 

	<div class="namebar_name"> A.P.R.Chamod Abeyrathne </div>
	<div class="namebar_id"> IT19179568 </div>
	
	<div class="logout">
	<button class="btn_logout">Logout here</button>
	</div>
	 
	<!--Adding the profile photo-->
	 <div class="pro_pic">
	
	 </div>
	 
</div>

<!--Adding the left navigation bar-->
<div class="nav_bar"> 
	<div class="nav_buttons">
		<button onclick="window.location.href = 'exam_results.jsp';" class="navbtn_result">Exam Results</button>	
		<button onclick="window.location.href = 'extra_cu.jsp';"  class="navbtn_extra">Extra Curricular</button> 
		<button onclick="window.location.href = 'subdetails.html';" class="navbtn_subdetail">Subject Details</button> 
		
	</div>
	<div class="trouble">
		Having a Trouble? <br><br>
		<button onclick="window.location.href = 'con_teacher.jsp';" class="con_teacher" >Contact a Teacher</button>	
		<button onclick="window.location.href = 'con_support.jsp';" class="con_support">Contact Support Team</button>	
	</div>
	
</div>

<!--==============================================Page Content-->
<div class="main_container">
	<div class="welcome">RESULTS</div>
	<br><br>
	<form action="getResults" method="post">
	<table>	<tr>
			<td>Enter your Student ID number</td>  
			<td><input type ="text" name="stID" value="stID"> </td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="Search"> 	</td>
		</tr> 
	</table>	
	</form>
	<br><br>
	<table>
	<c:forEach var="student" items="${stDetails}">
           <tr>
            	
            	<td>${student.stID}</td>
            	<td>${student.stName}</td>
            	<td> ${student.stEmail}</td>
            	<td>${student.total_marks}</td>
            	<td>${student.GPA}</td>
            	
            </tr>	
          </c:forEach>
	</table>
</div>

<div class="line"><hr align="center"></div>


</body>

</html>