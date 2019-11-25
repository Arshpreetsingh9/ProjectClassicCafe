<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<style type="text/css">
/*Structural Styles*/
html {
	height: 100%;
	font-family: Calibri;
	background-color: rgb(250, 250, 250);
}

/*HorizintalNavigation styles*/
div.horizontalnav {
	width: 100%;
	color: black;
	background-color: rgb(243, 241, 241);
}

div.horizontalnav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

div.horizontalnav li {
	width: auto;
	float: right;
}

div.horizontalnav li a {
	float: right;
	display: block;
	color: black;
	margin-bottom: inherit;
	text-align: center;
	padding: 36px 40px;
	text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
	background: rgb(225, 224, 224);
}

li a:active {
	background: rgb(2, 126, 110);
}

/* Slideshow container */
.slideshow-container {
	max-width: 96%;
	position: relative;
	margin: auto;
}

/* Hiding images */
.mySlides {
	display: none;
	text-align: center;
}

/* Next and previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -20px;
	padding: 30px;
	color: black;
	font-weight: bold;
	font-size: 1.3rem;
	transition: 0.4s ease;
	border-radius: 0 3px 3px 0;
}

/* Positioning 'next' button */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* Number of the slide image */
.numbertext {
	color: rgb(255, 255, 255);
	font-size: 17px;
	padding: 6px 10px;
	position: absolute;
	top: 0;
}

/* Animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 3s;
	animation-name: fade;
	animation-duration: 5s;
	animation-iteration-count: infinite;
}

@
-webkit-keyframes fade {from { opacity:0.8
	
}

to {
	opacity: 1
}

}
@
keyframes fade {from { opacity:0.8
	
}

to {
	opacity: 1
}

}
* {
	box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
	border-radius: 10px;
	text-align: center;
	float: left;
	width: 33.11%;
	height: 300px;
	outline: 3px solid #fff;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/*Footer styles*/
h5 {
	color: rgb(42, 166, 194);
}

footer {
	padding: 12px;
	display: block;
	font-size: small;
	background-color: rgb(56, 56, 56);
	color: white;
}

/*sign up styles*/

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.8;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

/* The Modal (background) */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* Enable scroll if needed */
	/*background-color: #474e5d;*/
	padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 70%;
}

/* Style the horizontal ruler */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/*Menu styles*/
img.menuimage {
	margin-bottom: 5%;
	margin-top: 5%;
}

div.prepare {
	width: 100%;
	padding: 2%;
	color: rgb(2, 126, 110);
	background-color: rgb(243, 241, 241);
	font-family: Calibri;
	text-align: center;
	font-size: larger;
}

.columnm {
	text-align: center;
	float: left;
	width: 50%;
	height: 350px;
	outline: 3px solid #fff;
}

.rowm {
	width: 86%;
	float: right;
}

.rowm h6 {
	color: rgb(146, 143, 143);
	font-family: 'Segoe Script';
	font-style: italic;
}

.rowm h2 {
	color: rgb(118, 48, 18);
}
/*Vertical Navigation Styles*/
.verticalnav {
	width: 11%;
	float: left;
}

.nav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: rgb(225, 224, 224);
}

.nav li a {
	display: block;
	color: #000;
	padding: 16px 32px;
	text-decoration: none;
}

.nav li a:hover {
	background-color: #555;
	color: white;
}

.nav li a:active {
	background-color: grey;
}

.content-section {
	margin: 1em;
}

.btn-primary {
	color: white;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.btn-primary:hover {
	background-color: #EB5757;
}

.container {
	max-width: 900px;
	margin: 0 auto;
	padding: 0 1.5em;
}

.section-header {
	font-family: "Metal Mania";
	font-weight: normal;
	color: #333;
	text-align: center;
	font-size: 2.5em;
}

.cart-header {
	font-weight: bold;
	font-size: 1.25em;
	color: #333;
}

.cart-column {
	display: flex;
	align-items: center;
	border-bottom: 1px solid black;
	margin-right: 1.5em;
	padding-bottom: 10px;
	margin-top: 10px;
}

.cart-row {
	display: flex;
}

.cart-item {
	width: 45%;
}

.cart-price {
	width: 20%;
	font-size: 1.2em;
	color: #333;
}

.cart-quantity {
	width: 35%;
}

.cart-item-title {
	color: #333;
	margin-left: .5em;
	font-size: 1.2em;
}

.cart-item-image {
	width: 75px;
	height: auto;
	border-radius: 10px;
}

.cart-quantity-input {
	height: 34px;
	width: 50px;
	border-radius: 5px;
	border: 1px solid #56CCF2;
	background-color: #eee;
	color: #333;
	padding: 0;
	text-align: center;
	font-size: 1.2em;
	margin-right: 25px;
}

.cart-row:last-child {
	border-bottom: 1px solid black;
}

.cart-row:last-child .cart-column {
	border: none;
}

.cart-total {
	text-align: end;
	margin-top: 10px;
	margin-right: 10px;
}

.cart-total-title {
	font-weight: bold;
	font-size: 1.5em;
	color: black;
	margin-right: 20px;
}

.cart-total-price {
	color: #333;
	font-size: 1.1em;
}

.btn-purchase {
	display: block;
	margin: 40px auto 80px auto;
	font-size: 1.75em;
}

.removeItemButton {
	color: white;
	background-color: black;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.removeItemButton:hover {
	background-color: #CC4C4C;
}

body {
	padding-top: 80px;
}

.show-cart li {
	display: flex;
}

.card {
	margin-bottom: 20px;
}

.card-img-top {
	width: 200px;
	height: 200px;
	align-self: center;
}
</style>

</head>
<body>
	<header>
		<div class=" horizontalnav" style="overflow: hidden;">
			<img src="springdemo/media/image.png"
				style="width: 130px; height: 90px; float: left; margin-left: 5%">
			<nav>
				<ul>
					<li><a href="Contact.html">CONTACT US</a></li>
					<li><a href="home">HOME</a></li>
					<li><a href="menu">MENU</a></li>
					<li><a href="Rewards.html">REWARDS</a></li>
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
			<img src="media/c.jpeg" style="width: 80%; height: 450px;">
		</div>
		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="media/cc2.jpg" style="width: 80%; height: 450px;">
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
			<img src="media/menu.png"
				style="width: 35%; height: 50%; text-align: center; margin-top: 26px;" />
			<h2>MENU</h2>
			<p>Select items for your order.</p>
		</div>
		<div class="column" style="background-color: rgb(112, 198, 173)";>
			<img src="media/award.png"
				style="width: 35%; height: 50%; text-align: center; margin-top: 26px;" />
			<h2>AWARDS</h2>
			<p>Get rewarded for your purchases.</p>
		</div>
		<div class="column" style="background-color: rgb(221, 224, 223);">
			<img src="media/loc.png"
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