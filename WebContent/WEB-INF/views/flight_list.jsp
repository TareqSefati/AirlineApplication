<!DOCTYPE html>
<%@page import="com.airline.models.Passenger"%>
<%@page import="com.airline.models.Pilot"%>
<%@page import="com.airline.models.Flight"%>
<%@page import="java.util.List"%>
<html>
<head>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<title>Flight List</title>
</head>

<body>
	<div class="container">
		<div class="panel panel-default" style="margin-top: 20px">
			<div class="panel-heading">List of Flights</div>

			<div class="table-responsive">
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>From</th>
						<th>To</th>
						<th>Time</th>
						<th>Price</th>
						<th>Airplane</th>
						<th>Setting</th>
						<th>Number of Pilots</th>
						<th>Pilot Names</th>
					</tr>

					<%
					List<Flight> fList = (List<Flight>) request
							.getAttribute("flight_list");
					for (int i = 0; i < fList.size(); i++) {
				%>

					<tr>
						<td><%=fList.get(i).getId()%></td>
						<td><%=fList.get(i).getFlightOrigin()%></td>
						<td><%=fList.get(i).getFlightDestination()%></td>
						<td><%=fList.get(i).getFlightTime()%></td>
						<td><%=fList.get(i).getPrice()%></td>

						<td><%=fList.get(i).getAirplaneDetail().getPlaneModel()
						+ " " + fList.get(i).getAirplaneDetail().getPlaneMake()%></td>
						<td><%=fList.get(i).getAirplaneDetail().getSettingCapacity()%>
						</td>

						<td>
							<%
							if (fList.get(i).getPilots() != null) {
						%> <%=fList.get(i).getPilots().size()%> Pilots <%
 	} else {
 %> No Pilots Yet <%
 	}
 %>
						</td>

						<td>
							<%
							if (fList.get(i).getPilots() != null) {
									List<Pilot> pList = (List<Pilot>) fList.get(i).getPilots();
									for (int j = 0; j < pList.size(); j++) {
						%> <%=(j + 1) + ") " + pList.get(j).getFirstName()
								+ " " + pList.get(j).getLastName() + " ( "
								+ pList.get(j).getPilotRank() + " )" + "</br>"%> <%
 	}//end-for
 		}//end-if
 %>
						</td>

					</tr>
					<tr>
						<td colspan="9">
							<%
							if (fList.get(i).getPassengers().size() > 0) {
									List<Passenger> passengerList = (List<Passenger>) fList
											.get(i).getPassengers();

									for (int k = 0; k < passengerList.size(); k++) {
						%> <%=k + 1%>) <%=(String) passengerList.get(k).getFirstName()%> <%=(String) passengerList.get(k).getLastName()%>
							<br> <%
 	}//end-forloop
 		} else {
 %> No passenger on this flight yet. <%
 	}
 %>
						</td>
					</tr>

					<%
						}
					%>

				</table>
			</div>
		</div>
	</div>
</body>
</html>




