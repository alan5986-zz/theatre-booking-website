//variable to check if maximum ticket number is exceeded
var max = false;
//total ticket Price
var total = 0;
//array for seat numbers
var rowNums = []; 


//calculate the total price of checked boxes on the seat.php page
//runs everytime a checkbox is clicked
function setTotal()
{

  //check max is not exceeded, initialise variables, reset totals
  if(!max){
    var seats = document.forms["seatForm"];
    var table = document.getElementById("seatTable");
    total = 0;
    rowNums = [];

    //loop through table rows. start at i+1 to avoid 1st table headings row
    //if seat checkbox is checked add price to total and seat number to array
  	for(var i=0; i < seats.length; i++){
  		if(seats[i].checked){
        total = total + parseFloat(table.rows[i + 1].cells[2].innerHTML);
        rowNums.push(table.rows[i + 1].cells[0].innerHTML);
  		}
  	}

    //round total to two decimal places
    total = Math.round(total * 100) / 100

  }

}


//alert seats selected and total ticket price
function getTotal()
{
  alert("You selected: " + rowNums + "\nTotal price: £" + total);
}


//check the number of tickets selected and limit to 10 per order
function checkLimit()
{
  //initialise variables
  var seats = document.forms["seatForm"];
	var sum = 0;
  //get div elements
  var orderSubmit = document.getElementById('orderSubmit')
  var limitAlert = document.getElementById('limitAlert')

  //loop through table rows.
  for(var i=0; i < seats.length; i++){
    //count the number of checked seats
    if(seats[i].checked){
      sum++;
		}
  }

  //if number of tickets is not between 1 and 10
  //hide order buttons and show warning
  if(sum > 10){
    max = true;
    orderSubmit.style.display = "none";
    limitAlert.style.display = "block";
    alert("Maximum order is 10 tickets");
  }
  else if(sum == 0){
    orderSubmit.style.display = "none";
    limitAlert.style.display = "block";
  }
  else{
    max = false;
    orderSubmit.style.display = "block";
    limitAlert.style.display = "none";
  }

}


//navigate backward a page
function goBack() {
    window.history.back();
}


