<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Airline Form</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>



<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch'
	href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">


</head>

<body>
	<div class="container">

		<!-- Flight and Airplane Form -->
		<form class="well form-horizontal" action="AddFlight" method="post"
			id="contact_form" style="margin-top: 20px">
			<fieldset>

				<!-- Form Name -->
				<legend>Add Flight Information</legend>

				<!-- Select Flight Origin -->

				<div class="form-group">
					<label class="col-md-4 control-label">Select Your Origin</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <select name="from_destination"
								class="form-control selectpicker">
								<option value="San_Francisco">San Francisco</option>
								<option value="Los_Angeles">Los Angeles</option>
								<option value="Paris">Paris</option>
								<option value="Rome">Rome</option>
								<option value="London">London</option>
								<option value="Canada">Canada</option>
								<option value="Australia">Australia</option>
							</select>
						</div>
					</div>
				</div>


				<!-- Select Flight Destination -->

				<div class="form-group">
					<label class="col-md-4 control-label">Select Your Destination</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <select name="to_destination"
								class="form-control selectpicker">
								<option value="San_Francisco">San Francisco</option>
								<option value="Los_Angeles">Los Angeles</option>
								<option value="Paris">Paris</option>
								<option value="Rome">Rome</option>
								<option value="London">London</option>
								<option value="Canada">Canada</option>
								<option value="Australia">Australia</option>
							</select>
						</div>
					</div>
				</div>


				<!-- Select Flight Year -->

				<div class="form-group">
					<label class="col-md-4 control-label">Year</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span> <select name="year"
								class="form-control selectpicker">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
							</select>
						</div>
					</div>
				</div>


				<!-- Select Flight Month -->

				<div class="form-group">
					<label class="col-md-4 control-label">Month</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span> <select name="month"
								class="form-control selectpicker">
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
							</select>
						</div>
					</div>
				</div>


				<!-- Day of Month-->
				<div class="form-group">
					<label class="col-md-4 control-label">Day of Month</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span> <input name="day"
								placeholder="Enter your desired date" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Hour of Day-->
				<div class="form-group">
					<label class="col-md-4 control-label">Hour of Day</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <input name="hour"
								placeholder="Enter between (0-23)" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Minute of Hour-->
				<div class="form-group">
					<label class="col-md-4 control-label">Minute</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <input name="minute"
								placeholder="Enter between (0-59)" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Price if Flight-->
				<div class="form-group">
					<label class="col-md-4 control-label">Price Per Ticket</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-usd"></i></span> <input name="price"
								placeholder="Enter Price" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Form Name -->
				<legend>Add Airplane Information</legend>

				<!-- Airplane Make-->
				<div class="form-group">
					<label class="col-md-4 control-label">Airplane Make</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="airplane_make"
								placeholder="Airplane Make" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Airplane Model-->
				<div class="form-group">
					<label class="col-md-4 control-label">Airplane Model</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="airplane_model"
								placeholder="Airplane Model" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Airplane Setting-->
				<div class="form-group">
					<label class="col-md-4 control-label">Number of Seat</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="airplane_seating"
								placeholder="Number of Seat" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Submit Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">
							Add Flight and Airplane <span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>

		
		<!-- Add Pilot to Flight Form -->
		<form class="well form-horizontal" action="CreatePilotAndAddToFlight" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Add Pilot to Flight</legend>

				<!-- First Name Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">First Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="first_name"
								placeholder="First Name" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Last Name Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Last Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="last_name"
								placeholder="Last Name" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- License Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Pilot License</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="license"
								placeholder="Enter License" class="form-control" type="text">
						</div>
					</div>
				</div>
				

				<!-- Pilot Rank Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Select Pilot Rank</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-list-alt"></i></span>
								<select name="pilot_rank"
								class="form-control selectpicker">
								<option value="Captain">Captain</option>
								<option value="First_Officer">First Officer</option>
								<option value="Junior_Officer">Junior Officer</option>
							</select>
						</div>
					</div>
				</div>


				<!-- Flight ID Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Flight ID</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="flight_id"
								placeholder="Enter Flight ID" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">
							Add Pilot to Flight <span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>


		<!-- Add Passenger Form -->
		<form class="well form-horizontal" action="AddPassenger" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Add Passenger</legend>

				<!-- First Name Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">First Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="first_name"
								placeholder="First Name" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Last Name Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Last Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="last_name"
								placeholder="Last Name" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Date fo Birth input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Date of Birth</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="dob"
								placeholder="mm/dd/yyyy" class="form-control" type="text">
						</div>
					</div>
				</div>
				

				<!-- Passenger Gender Input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Gender</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-list-alt"></i></span>
								<select name="gender"
								class="form-control selectpicker">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>
						</div>
					</div>
				</div>


				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">
							Add Passenger <span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>


		<!-- Add Passenger to Flight -->
		<form class="well form-horizontal" action="AddPassengerToFlight" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Add Passenger to Flight</legend>

				<!-- Input Passenger ID-->
				<div class="form-group">
					<label class="col-md-4 control-label">Add a Passenger with an id of</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="pid"
								placeholder="Passenger ID" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Input Flight ID-->
				<div class="form-group">
					<label class="col-md-4 control-label">To a flight with an id of</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="fid"
								placeholder="Flight ID" class="form-control" type="text">
						</div>
					</div>
				</div>


				

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">
							Add Passenger to flight <span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>


		<!-- Add Flight to a Passenger -->
		<form class="well form-horizontal" action="AddFlightTicketToPassenger" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Add Flight to Passenger (give a passenger another flight
			ticket to his/her collection of flight tickets)</legend>

				<!-- Input Flight ID-->
				<div class="form-group">
					<label class="col-md-4 control-label">Add a ticket for a flight with an id of</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-plane"></i></span> <input name="fid"
								placeholder="Flight ID" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Input Passenger ID-->
				<div class="form-group">
					<label class="col-md-4 control-label">To a passenger with an id of</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="pid"
								placeholder="Passenger ID" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">
							Add flight(tickets) to passenger's
				flight tickets <span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>

	</div>
	</div>
	<!-- /.container -->
	<script src="resources/bootstrap/js/index.js"></script>

</body>
</html>
