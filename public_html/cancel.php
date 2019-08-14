		<?php
			include("banner.php");

			require("connect.php");
			$conn = myconnect();


			//assign post variables
			$title = $_POST['title'];
			$date = $_POST['date'];
			$time = $_POST['time'];

			//convert any html elements in email input to string
			$email = htmlspecialchars($_POST['email']);
			$_SESSION['email'] = $email;

			//redirect to index if no email found
			if(empty($_SESSION['email'])){ 
					
				header('location: index.php');
				exit();
			}

			//remove booking
			if(!empty($_POST['email']))
			{
				$sql = "DELETE FROM Booking WHERE Booking.Email= :a AND Booking.PerfDate = '".$date."' AND Booking.PerfTime = '".$time."';";
				$handle = $conn->prepare($sql);
				$handle->execute(array(':a'=>$email));
				$conn = null;
			}


			//confirm the cancellation
			echo"<h2>Booking cancelled</h2>
				<div class='display'>
					<div class='review'>
					<p>Your order for ".$title." on ".date('d M Y', strtotime($date))." has been cancelled.</p> 
					</div>
				</div>"

				
		?>
		

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
