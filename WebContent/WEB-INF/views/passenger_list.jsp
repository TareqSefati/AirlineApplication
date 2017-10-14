<!DOCTYPE html>

<%@page import="com.airline.models.Passenger"%>
<%@page import="com.airline.models.Pilot"%>
<%@page import="com.airline.models.Flight"%>
<%@page import="java.util.List"%>
<html>
<head>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<title>Passenger List</title>
</head>

<body>
	<div class="container">
		<div class="panel panel-default" style="margin-top: 20px">
			<div class="panel-heading">List of Passengers</div>

			<div class="table-responsive">
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Date of Birth</th>
						<th>Gender</th>

					</tr>

					<%
						List<Passenger> pList = (List<Passenger>) request
								.getAttribute("passenger_list");
						for (int i = 0; i < pList.size(); i++) {
					%>

					<tr>
						<td><%=pList.get(i).getId()%></td>
						<td><%=pList.get(i).getFirstName()%></td>
						<td><%=pList.get(i).getLastName()%></td>
						<td><%=pList.get(i).getDob()%></td>
						<td><%=pList.get(i).getGender()%></td>
					</tr>

					<tr>
						<td colspan="5">
							<%
								if (pList.get(i).getFlights().size() > 0) {
										List<Flight> fList = (List<Flight>) pList.get(i)
												.getFlights();
										for (int k = 0; k < fList.size(); k++) {
							%> <%=k + 1%>) <%=fList.get(k).getFlightOrigin()%> to <%=fList.get(k).getFlightDestination()%>
							@<%=fList.get(k).getFlightTime()%> <br> <%
 	}//end forloop
 		} else {
 %> No flight tickets yet. <%
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




