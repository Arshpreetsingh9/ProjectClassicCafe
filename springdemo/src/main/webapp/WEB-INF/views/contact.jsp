<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <img alt="hnji" src='<spring:url value="/images/image.png/"/>' style="width:130px; height:90px; float:left; margin-left:5%">
            <nav>
                <ul>
                   <li><a href="contact">CONTACT US</a></li>
					<li><a href="home">HOME</a></li>
					<li><a href="menu">MENU</a></li>
                  
                          </ul>
            </nav>
        </div>

    </header>
    <!--SLIDESHOW CONTAINER-->
    <div class=" slideshow-container">
        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img alt="hnji" src='<spring:url value="/images/c.jpeg/"/>' style="width:80%; height:450px;">
        </div>
        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img alt="hnji" src='<spring:url value="/images/cc2.jpg/"/>' style="width:80%; height:450px;">
        </div>

        <!-- NEXT AND PREVIOUS BUTTONS -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>


    <div id="sign_up_form" class="modal">
        <!-- <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
        <form class="modal-content" action="/htmlform/LoginServlet">
            <div class="container">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>
                <label><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <label><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="password-repeat" required>


                <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                <div class="clearfix">
                    <button type="button" onclick="document.getElementById('sign_up_form').style.display='none'" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </div>
        </form>
    </div>


    <div id="sign_in_form" class="modal">

        <form class="modal-content" action="/htmlform/LoginServlet">
            <div class="container">
                <h1>Log in</h1>
                <p>Please enter your email and password</p>
                <hr>
                <label><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>


                <div class="clearfix">
                    <button type="button" onclick="document.getElementById('sign_in_form').style.display='none'" class="cancelbtn">Cancel</button>
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
            if (slideIndex > slides.length) { slideIndex = 1 }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 4000);
        }
    </script>
    <br />


    <div class="prepare">
        <h1>CONTACT OUR STORE</h1>
    </div>
    <div class="break"> <br /></div><br />
    <div class="contact">
        <p>
            <h2>Our Location</h2>
            <h3>Address : Swanson Drive, Delta, British Columbia</h3>
        </p>
        <p>
            <h3>Phone: Call us at <a href="tel:1234567890">+1234567890</a></h3>
            <h3>E-mail:<a href="mailto:classiccafe@outlook.com">classiccafe@outlook.com</a></h3>
        </p>

        <div class="mapouter">
            <div class="gmap_canvas">
                <iframe width="400" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=swanson%20drive&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            </div>
            <style>
                .mapouter {
                    position: relative;
                    text-align: right;
                    height: 500px;
                    width: 600px;
                }

                .gmap_canvas {
                    overflow: hidden;
                    background: none !important;
                    height: 500px;
                    width: 600px;
                }
            </style>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1tKhIDQtjKYZuwKAg75WLG2hFUN-Rg44&callback=myMap"></script>
        </div>
        <p>
            <h3>
                Hours Opened:
                <ul style="list-style-type:none;">
                    <li>Monday to Friday: 6am - 10pm</li>
                    <li>Saturday: 7am - 9pm</li>
                    <li>Sunday &nbsp;: 8am - 9pm</li>
                </ul>
            </h3>
    </div>
    </body>
</html>
    <footer>
        Classic Cafe &copy; 2019
        <div class="footer">
            <h5>Powered By: Data Pirates Ltd</h5>
        </div>
    </footer>

