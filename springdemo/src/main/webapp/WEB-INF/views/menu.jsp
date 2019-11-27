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
<script type="text/javascript" src="<spring:url value="/resources/js/Cart.js/"/>">
</script>
</head>
<body>
	<header>
		<div class=" horizontalnav" style="overflow: hidden;">
			<img alt="hnji" src='<spring:url value="/images/image.png/"/>'
				style="width: 130px; height: 90px; float: left; margin-left: 5%">
			<nav>
				<ul>
					<li><a href="contact">CONTACT US</a></li>
					<li><a href="home">HOME</a></li>
					<li><a href="menu">MENU</a></li>
					
				</ul>
			</nav>
		</div>

	</header>
	<br />
	<img alt="hnji" src='<spring:url value="/images/menucoffee.jpeg/"/>' class="menuimage"
		style="width: 100%; height: 550px;">

	<div class="prepare">
		<h1>PREPARE YOUR ORDER HERE</h1>
	</div>

	<div class="rowm" style="padding: 5%">
		<div class="columnm" style="background-color: white;">

			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>EXCLUSIVE BLEND</h2></span> <img
						class="shop-item-image" src="media/esp.jpg"
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />
					<h6>(Brewed from 100% Arabica beans, medium roasted for a
						balanced flavour)</h6>
					<div class="shop-item-details">
						<span class="shop-item-price">$9.99</span>
					</div>
					<ul>

						</br>&nbsp;&nbsp;
						<button class="btn btn-primary addCartItemBtn" type="button"
							id="Add" style="width: 40%; float: right;">Add to Order</button>
					</ul>

				</div>
			</div>
		</div>
		<div class="columnm" style="background-color: white;">

			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>VANILLA CHAI</h2></span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/french.jpg/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />
					<h6>(A smooth-bodied skim milk with a sweet aroma and a
						buttery vanilla flavor)</h6>

					<div class="shop-item-details">
						<span class="shop-item-price">$5.99</span>
					</div>

					<ul>
						</br>&nbsp;&nbsp;
						<button class="btn btn-primary addCartItemBtn" type="button"
							id="Add" style="width: 40%; float: right;">Add to Order</button>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<div class="rowm" style="padding: 5%">
		<div class="columnm" style="background-color: white">

			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>WHITE CHOCOLATE</h2> </span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/wc.png/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />
					<h6>(White chocolate is made up of butter, sugar and milk
						solids and has a velvety smooth consistency.)</h6>
					<ul>

						<div class="shop-item-details">
							<span class="shop-item-price">$7.99</span>
						</div>

					</ul>
					<button class="btn btn-primary addCartItemBtn" type="button"
						id="Add" style="width: 40%; float: right;">Add to Order</button>
				</div>
			</div>
		</div>

		<div class="columnm" style="background-color: white;">

			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>FRENCH VANILLA</h2> </span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/hazelnut.png/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />

					<h6>(A smooth-bodied coffee with a sweet aroma and a buttery
						vanilla flavor)</h6>
					<ul>

						<div class="shop-item-details">
							<span class="shop-item-price">$3.99</span>
						</div>

					</ul>
					<button class="btn btn-primary addCartItemBtn" type="button"
						id="Add" style="width: 40%; float: right;">Add to Order</button>

				</div>
			</div>
		</div>
	</div>
	<div class="rowm" style="padding: 5%">

		<div class="columnm" style="background-color: white;">

			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>CINNAMON ROLL</h2></span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/cinnamon.png/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />

					<h6>(Rolled bread with a pinch of Cinnamon and glazed with
						sugar at top)</h6>
					<ul>
						<div class="shop-item-details">
							<span class="shop-item-price">$4.99</span>
						</div>
					</ul>
					<button class="btn btn-primary addCartItemBtn" type="button"
						id="Add" style="width: 40%; float: right;">Add to Order</button>
				</div>
			</div>
		</div>

		<div class="columnm" style="background-color: white;">
			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>MUFFIN</h2> </span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/muffin.png/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />

					<h6>(Banana Chocolate chip muffin filled with white chocolate
						cream)</h6>
					<ul>
						<div class="shop-item-details">
							<span class="shop-item-price">$4.99</span>
						</div>
					</ul>

					<button class="btn btn-primary addCartItemBtn" type="button"
						id="Add" style="width: 40%; float: right;">Add to Order</button>
				</div>
			</div>
		</div>
	</div>
	<div class="rowm" style="padding: 5%">
		<div class="columnm" style="background-color: white">
			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name">
						<h2>BUTTER CROISSAUNT</h2>
					</span> <img class="shop-item-image" alt="hnji" src='<spring:url value="/images/cross.png/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />


					<h6>(Regular croissaunt baked with a layer of butter inside.)</h6>
					<ul>
						<div class="shop-item-details">
							<span class="shop-item-price">$2.99</span>
						</div>
					</ul>

					<button class="btn btn-primary addCartItemBtn" type="button"
						id="Add" style="width: 40%; float: right;">Add to Order</button>
				</div>
			</div>
		</div>
		<div class="columnm" style="background-color: white">
			<div class="shop-items">
				<div class="shop-item">
					<span class="shop-item-name"><h2>GLAZED DONUT</h2> </span> <img
						class="shop-item-image" alt="hnji" src='<spring:url value="/images/donut.jpg/"/>'
						style="width: 40%; height: 55%; text-align: center; margin-top: 26px; float: left;" />


					<h6>(A regular sweet donut with glazed sugar)</h6>

					<div class="shop-item-details">
						<span class="shop-item-price">$2.99</span>
					</div>

					<ul>

						</br>&nbsp;&nbsp;
						<button class="btn btn-primary addCartItemBtn" type="button"
							id="Add" style="width: 40%; float: right;">Add to Order</button>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<section class="container content-section">
		<h2 class="section-header">ORDER LIST</h2>
		<div class="cart-row">
			<span class="cart-item cart-header cart-column">ITEM</span> <span
				class="cart-price cart-header cart-column">PRICE</span> <span
				class="cart-quantity cart-header cart-column">QUANTITY</span>
		</div>
		<div class="cart-items"></div>
		<div class="cart-total">
			<strong class="cart-total-title">Total</strong> <span
				class="cart-total-price">$0</span>
		</div>
		<form class="modal-content" method="post" action="purchaseSimpleServletGetter"
			modelAttribute="home">
		<button class="btn btn-primary btn-order" type="submit">
			PROCESS ORDER</button>
			</form>
	</section>
	</div>
</body>
</html>