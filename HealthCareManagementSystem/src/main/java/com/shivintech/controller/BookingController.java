package com.shivintech.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shivintech.dao.DoctorDataAccess;
import com.shivintech.dao.PatientDataAccess;
import com.shivintech.model.Doctor;
import com.shivintech.model.Patient;

@Controller
public class BookingController 
{

	// Getting Doctor Details
	  @RequestMapping(value = "BookingController" , params = "book")
	  public ModelAndView getAllDoctorDetails()
	  {
		  ModelAndView mv = new ModelAndView();
		  
		  DoctorDataAccess da = new DoctorDataAccess();
		  ArrayList<Doctor> al = da.getAllDoctorDetails();
		 
		  // used for sending above ArrayList data to frontEnd. which is used by getAttribute()
		  mv.addObject("doctorlist",al); // getAttribute uses("variable", object);
		  mv.setViewName("BookDoctor.jsp");
		  
		  return mv;
			  
		  }
	  
//	// Getting Doctor Details
//		  @RequestMapping(value = "bookAppointment" , params = "book")
//		  public ModelAndView getPatientDetails()
//		  {
//			  ModelAndView mv = new ModelAndView();
//			  
//			  PatientDataAccess pd = new PatientDataAccess();
//			  ArrayList<Patient> al = pd. getAllPatientDetails();
//			 
//			  // used for sending above ArrayList data to frontEnd. which is used by getAttribute()
//			  mv.addObject("patientlist",al); // getAttribute uses("variable", object);
//			  mv.setViewName("WelcomeDoctor.jsp");
//			  
//			  return mv;
//				  
//			  }
//	 }

	  
}
