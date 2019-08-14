<!-- a banner page to use as a template for all other pages.
For the purpose of assessment this is in the root folder, but would
normally be placed outside the root to avoid being accessed directly -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Front Row</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
	<script src="script.js"></script>
  </head>

	<body>
    <!-- main navigation and logo -->
		<ul class="mainNav">
			<div class="logo">
			<a href="index.php">⊱Front Row⊰</a>
			</div>

		  <li> <a href="index.php">Home</a> </li>
		  <li> <a href="contact.php">Contact</a> </li>
		</ul>

    <!-- video banner with overlayed text-->
		<div class="banner">
			<div class="heading">Welcome to Front Row. Canterbury's premier theatre booking service in association with <abbr title="Web-Based Information Systems Development">CO887</abbr>  </div> <br>
			<video autoplay loop>
				<source src="images/banner.mp4" type="video/mp4">
			</video>

		</div>
