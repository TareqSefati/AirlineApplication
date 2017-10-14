package com.airline.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.AirPlane;
import com.airline.models.Flight;
import com.airline.models.FlightDestinations;
import com.airline.service.FlightService;

/**
 * Servlet implementation class AddFlight
 */
@WebServlet("/AddFlight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	FlightService fs;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Flight flight = new Flight();
		
		String from_destination = request.getParameter("from_destination");		
		flight.setFlightOrigin(FlightDestinations.valueOf(from_destination));
		
		String to_destination = request.getParameter("to_destination");
		flight.setFlightDestination(FlightDestinations.valueOf(to_destination));
		
		String price = request.getParameter("price");
		flight.setPrice(Integer.parseInt(price));
		
		Integer year = Integer.parseInt(request.getParameter("year"));
		Integer month = Integer.parseInt(request.getParameter("month"));
		Integer day = Integer.parseInt(request.getParameter("day"));
		Integer hour = Integer.parseInt(request.getParameter("hour"));
		Integer minute = Integer.parseInt(request.getParameter("minute"));
		
		Calendar cal = Calendar.getInstance();
		cal.set(year, month, day, hour, minute);
		
		Date flightTime = cal.getTime();
		System.out.println(flightTime);
		
		flight.setFlightTime(flightTime);
		
		AirPlane airPlane = new AirPlane();
		
		String airplane_make = request.getParameter("airplane_make");
		String airplane_model = request.getParameter("airplane_model");
		Integer airplane_seating = Integer.parseInt(request.getParameter("airplane_seating"));
		
		airPlane.setPlaneModel(airplane_model);
		airPlane.setPlaneMake(airplane_make);
		airPlane.setSettingCapacity(airplane_seating);
		
		flight.setAirplaneDetail(airPlane);
		
		System.out.println(flight);
		System.out.println(airPlane);
		
		fs.addFlight(flight, airPlane);
		
		response.sendRedirect("Flights");
	}

}
