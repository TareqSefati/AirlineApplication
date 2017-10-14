<!DOCTYPE html>
<%@page import="com.airline.models.Passenger"%>
<%@page import="com.airline.models.Pilot"%>
<%@page import="com.airline.models.Flight"%>
<%@page import="java.util.List"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Flights List</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">Airline</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/AirlineForm">Manage</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/Flights">Flights</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/Passengers">Passengers</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="container">
      <div class="jumbotron">
      	<div>
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
      </div>
      
      <hr>

      <footer>
        <p>&copy; Airline Application 2017</p>
      </footer>
      
    </div>

    


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>

