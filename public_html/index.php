		<?php
			include ("banner.php");
		?>

		<h2>Upcoming Shows</h2>


		<div class='images' align='center'>


			<?php

				//establish connection
				require("connect.php");
				$conn = myconnect();

				//show productions from database as clickable images.
				//New shows should have a poster added to /images with filename 'title'.jpg

				$sql = "SELECT * from Production;";
				$handle = $conn->prepare($sql);
				$handle->execute();
				$conn = null;
				$res = $handle->fetchAll();

				//echo a form for each show with input as type image, plus title and price as hidden inputs
				//show title and price in figure caption
				foreach($res as $row) {
					echo"
					<figure class = 'showPic'>
					<form method='post' action='perf.php'>
					<input type='hidden' name='title' value='".$row['Title']."'>
					<input type='hidden' name='price' value='".$row['BasicTicketPrice']."'>
					<input type='image' src='images/".$row['Title'].".jpg' alt='".$row['Title']."' title='Show Performances'>
					</form>
					<figcaption><strong>".$row['Title']."</strong> <br>Tickets from: ".$row['BasicTicketPrice']."
					</figcaption>
					</figure>
					
					";
				}

			?>

		</div>

		<footer id="main-footer">
			<hr>
			<p>&copy; Alan Elliott, 2018. </p>
		</footer>

	</body>

</html>
