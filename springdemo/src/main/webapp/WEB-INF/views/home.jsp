<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored = "false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<!--
Data Pirates
    Project
    Group Members: Arshpreet Singh, Gurkirat Kaur, Prabhpreet Sembhi, Ravneet Kaur
    Topic: Classis Cafe
-->
<html>
<head>
<meta charset="utf-8" />
<title>Classic Cafe</title>

<link href='<spring:url value="/resources/css/css/stylesheet.css/"/>' rel="stylesheet">
</head>
<body>
	<header>
		<div class=" horizontalnav" style="overflow: hidden;">
			<img alt="hnji" src='<spring:url value="/images/image.png/"/>'
				width = "130px" height = "90px" float="left" margin-left="5%" >
			<nav>
				<ul>
					<li><a href="contact">CONTACT US</a></li>
					<li><a href="home">HOME</a></li>
					<li><a href="menu">MENU</a></li>
					<li><a
						onclick="document.getElementById('sign_up_form').style.display='block'"
						style="width: auto; color: rgb(2, 126, 110); cursor: pointer;">JOIN
							NOW</a></li>
					<li><a
						onclick="document.getElementById('sign_in_form').style.display='block'"
						style="width: auto; color: rgb(2, 126, 110); cursor: pointer;">LOG
							IN</a></li>
				</ul>
			</nav>
		</div>

	</header>
	<br />
	<!--SLIDESHOW CONTAINER-->
	<div class=" slideshow-container">
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img alt="hnji" src='<spring:url value="/images/c.jpeg/"/>' style="width: 80%; height: 450px;">
		</div>
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img alt="hnji" src='<spring:url value="/images/cc2.jpg/"/>' style="width: 80%; height: 450px;">
		</div>

		<!-- NEXT AND PREVIOUS BUTTONS -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>
	</div>


	<div id="sign_up_form" class="modal">
		<!-- <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
		<form class="modal-content" method="post"
			action="saveSimpleServletGetter"
			modelAttribute="home">
			<div class="container">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>
				<label><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" required> <label><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="password"
					required> <label><b>Repeat Password</b></label> <input
					type="password" placeholder="Repeat Password"
					name="password-repeat" required>


				<p>
					By creating an account you agree to our <a href="#"
						style="color: dodgerblue">Terms & Privacy</a>.
				</p>

				<div class="clearfix">
					<button type="button"
						onclick="document.getElementById('sign_up_form').style.display='none'"
						class="cancelbtn">Cancel</button>
					<button type="submit" class="signupbtn">Sign Up</button>
				</div>
			</div>
		</form>
	</div>


	<div id="sign_in_form" class="modal">

		<form class="modal-content" method="post" action="loginSimpleServletGetter"
			modelAttribute="home">
			<div class="container">
				<h1>Log in</h1>
				<p>Please enter your email and password</p>
				<hr>
				<label><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" required> <label><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="password"
					required>


				<div class="clearfix">
					<button type="button"
						onclick="document.getElementById('sign_in_form').style.display='none'"
						class="cancelbtn">Cancel</button>
					<button type="submit" class="signupbtn">log in</button>
				</div>
			</div>
		</form>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 4000);
		}
	</script>
	<br />

	<div class="row">
		<div class="column" style="background-color: rgb(8, 154, 135);">
			<img alt="hnji" src='<spring:url value="/images/menu.png/"/>'
				style="width: 15%; height: 20%; text-align: center; margin-top: 26px;" />
			<h2>Favorites</h2>
			<p></p>
		</div>
		<div class="column" style="background-color: rgb(112, 198, 173)";>
			<img alt="hnji" src='<spring:url value="/images/award.png/"/>'
				style="width: 15%; height: 20%; text-align: center; margin-top: 26px;" />
			<h2>Rewards</h2>
			<h2>7 purchases earns you a reward</h2>
			<h1>Current rewards: ${rewards}</h1>
			<h1>Current puchases: ${purchases}</h1>
		</div>
		<div class="column" style="background-color: rgb(221, 224, 223);">
			<img alt="hnji" src='<spring:url value="/images/loc.png/"/>'
				style="width: 35%; height: 50%; text-align: center; margin-top: 26px" ;" />
			<h2>VISIT</h2>
			<p>Locate us on the map</p>
		</div>
	</div>
</body>

<footer>
	Classic Cafe &copy; 2019
	<h5>Powered By: Data Pirates Ltd</h5>
</footer>
</html>