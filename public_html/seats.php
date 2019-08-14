		<?php
			include ("banner.php");
		?>

		<!--call checklimit on page load -->
		<script> window.onload = checkLimit; </script>

		<?php

			session_start();

			//establish connection
			require("connect.php");
			$conn = myconnect();

			//assign variables
			$title = $_POST['title'];
			$price = $_POST['price'];
			$date = $_POST['date'];
			$time = $_POST['time'];
			$total = 0;
			$_SESSION['title']=$title;
			$_SESSION['date']=$date;

			//redirect to perf if no date has been selected
			if(empty($_SESSION['date'])){

				header('location: perf.php');
				exit();
			}

			echo"<h2>Seats for ".$title." on ".date('d M Y', strtotime($date))." at ".date('g:i A', strtotime($time))."</h2>";
		?>
		
		<!-- mock seat map image-->
		<div class="images" align="center">
			<img class="map" src="images/seats.jpg" alt="Seat Map" width="600px">
		</div>


		<!-- set up form as table which posts to book.php  -->
   		<form id='seatForm' method='post' action='book.php'>
		<table id="seatTable" align="center">
		<tr>
			<th>Seat</th>
			<th>Zone </th>
			<th>Price </th>
			<th> </th>
		</tr>

		<?php

			//query available seats for selected performance
			$sql = "SELECT Seat.RowNumber, Zone.Name, TRUNCATE(Zone.PriceMultiplier * ".$price.", 2) as price
					FROM Seat, Zone
					WHERE Zone.Name=Seat.Zone
					AND Seat.RowNumber NOT IN
					(SELECT Booking.RowNumber FROM Booking
					WHERE Booking.PerfTime='".$time."'
					AND Booking.PerfDate='".$date."')
					ORDER BY Seat.RowNumber;";
			$handle = $conn->prepare($sql);
			$handle->execute();
			$conn = null;
			$res = $handle->fetchAll();

			//show available seats in table. Checkbox posts row number and price values. 
			//on checkbox click run the check limit and set total functions.
			foreach($res as $row) {
				echo "<tr>
				<td>".$row['RowNumber']."</td><td>".$row['Name']."</td>
				<td>".$row['price']."</td>
				<td>
				<input type='checkbox' name='seats[]' value='".$row['RowNumber'].":".$row['price']."' onclick='checkLimit();setTotal();'   >
				</td>
				</tr>";
				}
			echo "</table>";

			echo " <div class='display' id='orderSubmit' align='center'>

				<input type='hidden' name='title' value='".$title."'>
				<input type='hidden' name='price' value='".$price."'>
				<input type='hidden' name='date' value='".$date."'>
				<input type='hidden' name='time' value='".$time."'>
				<input type='email' name='email' placeholder='Enter Email' required>
				<input type='submit' value='Book'>

			<button class ='order' type='button' onclick='setTotal(); getTotal()' >Check Price</button>
			</div>"
		?>

    	</form>

		<!-- a warning note to display if number of seats not between 1 and 10. 
		Display status controlled by checkLimit function -->
		<div class='display' id='limitAlert' align='center'>
			<p style="color:red;">Orders must be between 1 and 10. Add or remove tickets to complete the order. </p>
		</div>

		<!-- back button -->
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
