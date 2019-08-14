		<?php
			include("banner.php");

			require("connect.php");
			$conn = myconnect();


			//assign post variables
			$title = $_POST['title'];
			$price = $_POST['price'];
			$date = $_POST['date'];
			$time = $_POST['time'];
			//convert any html elements in email input to string
			$email = htmlspecialchars($_POST['email']);
			$seats = $_POST['seats'];
			$total = 0;
			$_SESSION['seats'] = $seats;

			//redirect to seats if no seats have been selected
			if(empty($_SESSION['seats'])){

				header('location: seats.php');
				exit();
			}

			//loop through checked seats and insert email, perfdate, perftime, rownumber into booking
			if(!empty($_POST['seats']))
			{
				foreach($_POST['seats'] as $seat) {
					$seatInfo = explode(":", $seat);
					$sql = "INSERT into Booking VALUES (:a, :b, :c, :d);";
					$handle = $conn->prepare($sql);
					$handle->execute(array(':a'=>$email,':b'=>$date,':c'=>$time,':d'=>$seatInfo[0]));
				}

				$conn = null;
			}

			//print the order details on the booking page
			echo"<h2>Order summary for ".$title." </h2>;
			<div class='display'>
			<div class='review'>
			<strong>Show: </strong>".$title."<br>
			<strong>Date: </strong>".date('d M Y', strtotime($date))." <br>
			<strong>Time: </strong>".date('g:i A', strtotime($time))." <br>
			<strong>Seat summary:</strong>
			<table align='center'>
			<tr>
				<th>Seat</th>
				<th>Price </th>
			</tr>";

			//loop through seat array, sum the total, print the individual details
			if(!empty($_POST['seats']))
			{
				foreach($_POST['seats'] as $seat) {
					$seatInfo = explode(":", $seat);
					$total = $total + $seatInfo[1];
					echo"<tr><td>".$seatInfo[0]."</td><td>".$seatInfo[1]."</td></tr>";
				}


				echo"</table><br>

				<strong>Total: </strong>£".$total." <br><br>

				Your tickets will be emailed to ".$email.".

				</div>

				</div>";


			}

				echo"<h2>Cancel your booking</h2>
				<div class='display'>
					<div class='review'>
					<p>To cancel your order enter your email below and click cancel</p>

					<form method='post' action='cancel.php'>
					<input type='email' name='email' placeholder='Enter Email' required>
					<input type='hidden' name='title' value='".$title."'>
					<input type='hidden' name='date' value='".$date."'>
					<input type='hidden' name='time' value='".$time."'>
					<input type='submit' value='Cancel'>
					</form>
					</div>
				</div>";

		?>





		<!--display confirmation-->
		<script type="text/javascript">
			alert("Thank you for your order.");
		</script>

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
