		<?php
			session_start();

			//assign variables
			$title = $_POST['title'];
			$_SESSION['title']=$title;
			$price = $_POST['price'];

			//establish connection
			require("connect.php");
			$conn = myconnect();

			//redirect to homepage if no show has been selected
			if(empty($_SESSION['title'])){
				header('location: index.php');
				exit();
			}

			include ("banner.php");

			echo"<h2>Performances for ".$title." (tickets from £".$price.")</h2>"
		?>

		<!--table headings for performances -->
		<div class="display" align="center">
		<table align="center">
		<tr>
			<th>Title</th>
			<th>Date </th>
			<th>Time </th>
			<th> </th>
		</tr>

		<?php

			//show performances for selected show table
			$sql = "SELECT * from Performance WHERE Performance.Title = '".$title."';";
			$handle = $conn->prepare($sql);
			$handle->execute();
			$conn = null;
			$res = $handle->fetchAll();

			//echo a form for each performance which posts to seats.php
			//use hidden inputs to post variables
			//convert date and time into more readable format with strtotime
			foreach($res as $row) {
				echo "<tr><td>".$row['Title']."</td>
						<td>".date('d M Y', strtotime($row['PerfDate']))."</td>
						<td>".date('g:i A  ', strtotime($row['PerfTime']))."</td>
						<td> <form method='post' action='seats.php'>
						<input type='hidden' name='title' value='".$row['Title']."'>
						<input type='hidden' name='price' value='".$price."'>
						<input type='hidden' name='date' value='".$row['PerfDate']."'>
						<input type='hidden' name='time' value='".$row['PerfTime']."'>
						<input type='submit' value='Show Availability'>
						</form> </td></tr>";
			}
			echo "</table>";

		?>

		</div>

		<!-- go back button -->
		<div class="secondNav">
			<ul class="nav">
			<li> <button class='navButton' onclick="goBack()">&lt back</button> </li>
			</ul>
		</div>

		<!-- poster for the show being booked -->
		<div class="images" align="center">
			<?php
			echo "<img class='pic' src='images/".$title.".jpg' alt='".$title."'>";
			?>
		</div>

		<footer id="main-footer">
			<hr>
			<p>&copy; Alan Elliott, 2018. </p>
		</footer>

	</body>

</html>
