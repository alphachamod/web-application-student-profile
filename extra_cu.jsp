<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activities</title>

<style>
@charset "utf-8";

html{
    height: 100%;
    margin: auto;
    width: 100%;
    overflow: scroll;
}
/* Remove body margins */
a:link{
  text-decoration: none;
}

body { margin:0; } 

/*====================================================  Customization of name bar */

.name_bar{
	position: relative;
	height: 150px;
	width: 100%;
	border: none;
	border-bottom-right-radius: 80px;
	background-color: #03a9f4;
}
/*Customization of name bar name */
.namebar_name{
	color: aliceblue;
	text-align: right;
	padding-top: 10px;
	padding-right: 60px;
	font-family: Impact, Charcoal, sans-serif;
	font-size: 30px
	
}
/*Customization of name bar idNo */
.namebar_id{
	color: aliceblue;
	text-align: right;
	padding-right: 60px;
	font-family: 'Oswald', sans-serif;
	font-size: 20px;
	
}
/*------------------------Alignment of name bar logout button */
.logout{
	text-align: right;
	padding-right: 55px;
	padding-top: 10px;
}
/*------------------------Customization of name bar logout button */
.btn_logout{
	color: white;
	border: none;
	background: #BB2EB6;
	text-align: center;
	border-radius: 60px;
	padding: 10px 15px; /*add space */
	font-family: 'Julius Sans One', sans-serif;
	
	
}
/*------------------------Customization of profile picture area*/
.pro_pic{
	position: absolute;
	height: 200px;
	width: 200px;
	border-radius: 50%;
	
	background-color: aliceblue;
	background-image: url("../img/avatarew.jpg");
	background-size:cover;   /*Resize the background image to cover the entire container*/
	top: 20px;
	left: 30px;
}




/*====================================================  Customization of navigation bar */
.nav_bar{
	position:absolute;
	background-color: #f5f5f5;
	height: 600px;
	width: 180px;
	z-index: -1; /*Send the element back */
	left: 40px;
	
	
}

/*------------------------------Alignment of nav bar buttons */
.nav_bar{
	text-align: center;
	padding-top: 115px;

	
}
/*------------------------------Customization of nav bar buttons result */
.navbtn_result{
	color: white;
	border: none;
	background: #0ccccc;
	text-align: center;
	border-radius: 30px;
	padding: 30px 37px; /*add space */
    font-family:Impact, Charcoal, sans-serif;
	outline: 0;

}
/*------------------------------Customization of nav bar buttons timetable */
.navbtn_extra{
	color: white;
	border: none;
	background: #0ccccc;
	text-align: center;
	border-radius: 30px;
	padding: 30px; /*add space */
	font-family:Impact, Charcoal, sans-serif;
	margin-top: 20px;
	outline: 0;
	
}
/*------------------------------Customization of nav bar buttons subject details */
.navbtn_subdetail{
	color: white;
	border: none;
	background: #0ccccc;
	text-align: center;
	border-radius: 30px;
	padding: 30px 30px; /*add space */
	font-family:Impact, Charcoal, sans-serif;
	margin-top: 20px;
	outline: 0;
	
}
.trouble{
	
	font-family: 'Quicksand', sans-serif;
	margin-top: 150px
}
.con_teacher {
	color: white;
	border: none;
	background: #6976FF;
	text-align: center;
	border-radius: 30px;
	padding: 10px 20px; /*add space */
	outline: 0;
	margin-top: 10px;
	margin-bottom: 5px;
}
.con_support {
	color: white;
	border: none;
	background: #F0484A;
	text-align: center;
	border-radius: 30px;
	padding: 10px 9px; /*add space */

	outline: 0;
	margin-bottom: 10px;
}

/* ================================================= Page Content stpro */ 

.main_container{
	text-align: center;
	margin-left: 30%;
	position: absolute;
	margin-top: 10%;
}

.welcome{
	
	
	font-size: 40px;
	font-family: 'Open Sans Condensed', sans-serif;
	color: #6F6F6F;
	margin-bottom: -15px; /*To remove the space between two tags*/
	
	
}
.wel_name{
	
	font-size: 30px;
	font-family: 'Open Sans Condensed', sans-serif;
	color:#828282;
	margin-bottom: 60px
	
}
.select{
	
	font-size: 20px;
	font-family: 'Open Sans Condensed', sans-serif;
	color:#828282
	
}

.line{
	
	margin-top: -70px;
	width: 500px;
	align-self: center;
	margin-left: 37%;
}

.wel_img{
	
	margin-top: 25%;
	display: block;
  	margin-left: 28%;
  	width: 50%;
	position: absolute;
}
/*_____________________________NEW____________________extra_cu_________________*/


.boxes{
	text-align: center;
	margin-left: 50%;
	margin-top: 1%;
	position: absolute;
}

.exview{
	color: white;
	border: none;
	background:#A248DD;
	text-align: center;
	border-radius: 20px;
	 /*add space */
	padding: 50px;

	
	font-family:Impact, Charcoal, sans-serif;
	margin-top: 20px
}


.exapply{
	color: white;
	border: none;
	background: #CD0079;
	text-align: center;
	border-radius: 20px;
	padding: 50px; /*add space */

	font-family:Impact, Charcoal, sans-serif;
	margin-top: 20px;
	margin-bottom: 30px;
	
}

.ex_img{
	margin-top: 20%;
	display: block;
  	margin-left: 20%;
	height: 70%;
  	width: 70%;
	position: fixed;
}

/*-------------------------NEW---------------contact teacher----------------------------*/


.teacher_form{
	text-align: center;
	margin-left: 35%;
	margin-top: 3%;
	position: absolute;
	font-family:sans-serif;
	

}
.teacher_form_content{
	text-align: center;
	margin-left: 65%;
	margin-top: 15%;
	position: absolute;
	font-family:sans-serif;
}
#sname{
	
	border: 1px solid gray;
	background: transparent;
	border-radius: 60px;
	padding: 10px;
	width: 400px;
	letter-spacing: 2px;
}

#email{
	border: 1px solid gray;
	background: transparent;
	border-radius: 60px;
	padding: 10px;
	width: 400px;
	letter-spacing: 2px;
}

#itno{
	border: 1px solid gray;
	background: transparent;
	border-radius: 60px;
	padding: 10px;
	width: 400px;
	letter-spacing: 2px;
}

#issue{
	border: 1px solid gray;
	background: transparent;
	border-radius: 60px;
	padding: 10px;
	width: 400px;
	letter-spacing: 2px;
}

.label{
	
	line-height:10px;
	color:  DodgerBlue;
	font-size: 50px;
}

.sub_label{
	font-size:16px;
	color: rgb(120, 120, 120);
}

#submit{
	background: DodgerBlue;
	border-color: transparent;
	color:#fff;
	font-size: 20px;
	font-weight:bold;
	letter-spacing: 3px;
	height:50px;
	width: 200px;
	cursor: pointer;
	border-radius: 60px;
}

.teacher_con_img{
	margin-top: 10%;
	display: block;
  	margin-left: 18%;
  	width: 45%;
	position: absolute;
}
</style>
</head>
<body>
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
		<button onclick="window.location.href = 'subdetails.jsp';" class="navbtn_subdetail">Subject Details</button> 
		
	</div>
	<div class="trouble">
		Having a Trouble? <br><br>
		<button onclick="window.location.href = 'con_teacher.jsp';" class="con_teacher" >Contact a Teacher</button>	
		<button onclick="window.location.href = 'con_support.jsp';" class="con_support">Contact Support Team</button>	
	</div>
	
</div>

<!--==============================================Page Content-->

<div class="boxes">

	<a href="view_details.jsp">               
		<div class="exview">
			View Current Activity Details
		</div>
	</a>
	
	<a href="all.jsp">      
		<div class="exapply">
			View Activity Details
		</div>
	</a>
</div>

<img class="ex_img" src="C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\host-manager\img\activities.jpg.png">




</body>
</body>
</html>