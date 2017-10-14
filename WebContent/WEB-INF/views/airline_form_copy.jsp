<!DOCTYPE html>
<html>
<head>

<title>Airplane Form</title>
<link rel="stylesheet" href="resources/bootstrap/css/style.css">
</head>
<body>
	<div class="container">
		<h1>Airplane Forms</h1>

		
		<form method="POST" action="AddFlight" class="well form-horizontal">
			<fieldset>
				<legend>Add flight and airplane</legend>
				From: <select name="from_destination">
					<option value="San_Francisco">San_Francisco</option>
					<option value="Los_Angeles">Los_Angeles</option>
					<option value="Paris">Paris</option>
					<option value="Rome">Rome</option>
					<option value="London">London</option>
					<option value="Canada">Canada</option>
					<option value="Australia">Australia</option>
				</select> <br> <br> To: <select name="to_destination">
					<option value="San_Francisco">San_Francisco</option>
					<option value="Los_Angeles">Los_Angeles</option>
					<option value="Paris">Paris</option>
					<option value="Rome">Rome</option>
					<option value="London">London</option>
					<option value="Canada">Canada</option>
					<option value="Australia">Australia</option>
				</select> <br> <br>

				<h4>Time and Date</h4>
				Year: <select name="year">
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
				</select> <br> <br> Month: <select name="month">
					<option value="0">January</option>
					<option value="1">Febuary</option>
					<option value="2">March</option>
					<option value="3">April</option>
					<option value="4">May</option>
					<option value="5">June</option>
					<option value="6">July</option>
					<option value="7">August</option>
					<option value="8">Sepetember</option>
					<option value="9">October</option>
					<option value="10">November</option>
					<option value="11">December</option>
				</select> <br> <br> Day Of Month: <input name="day" type="text">
				<br> <br> Hour of Day (0-23): <input name="hour"
					type="text"> <br> <br> Minute (0-59): <input
					name="minute" type="text"> <br> <br> Price: <input
					name="price" type="text"> <br> <br>

				<h4>Airplane</h4>
				Airplane Make: <input name="airplane_make" type="text"> <br>
				<br> Airplane Model: <input name="airplane_model" type="text">
				<br> <br> Airplane Seating: <input name="airplane_seating"
					type="text"> <br> <br>
				<hr>
				<button type="submit">Add flight and airplane</button>
			</fieldset>
		</form>

		<hr>
		<h2>Add pilot to flight</h2>
		<form action="CreatePilotAndAddToFlight" method="POST">
			First Name: <input name="first_name" type="text"> <br> <br>

			Last Name: <input name="last_name" type="text"> <br> <br>

			License: <input name="license" type="text"> <br> <br>

			Pilot Rank: <select name="pilot_rank">
				<option value="Captain">Captain</option>
				<option value="First_Officer">First Officer</option>
				<option value="Junior_Officer">Junior Officer</option>
			</select> <br> <br> Flight ID: <input name="flight_id" type="text">
			<br> <br>

			<hr>
			<button type="submit">Add Pilot to Flight</button>

		</form>

		<hr>
		<h2>Add Passenger</h2>
		<form action="AddPassenger" method="POST">
			First Name: <input name="first_name" type="text"> <br> <br>

			Last Name: <input name="last_name" type="text"> <br> <br>

			Date of Birth: <input name="dob" type="text"> <br> <br>

			Gender: <select name="gender">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select> <br> <br>

			<hr>
			<button type="submit">Add Passenger</button>
		</form>


		<hr>
		<h2>Add Passenger to Flight</h2>
		<form action="AddPassengerToFlight" method="POST">
			Add a Passenger with an id of: <input type="text" name="pid">
			to a flight with an id of: <input name="fid" type="text">

			<hr>
			<button type="submit">Add Passenger to flight</button>
		</form>


		<hr>
		<h2>Add Flight to Passenger (give a passenger another flight
			ticket to his/her collection of flight tickets)</h2>
		<form action="AddFlightTicketToPassenger" method="POST">
			Add a ticket for a flight with an id of: <input name="fid"
				type="text"> To a passenger with an id of: <input
				type="text" name="pid"> <br> <br> <span
				style="font-weight: bold;">(in real world term - add the
				flight ticket to the passenger's collection of the flight tickets)</span>
			<hr>

			<button type="submit">Add flight(tickets) to passenger's
				flight tickets.</button>
			<hr>

		</form>
	</div>

</body>
</html>