package com.pos.test.account.controller;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito;

import static org.mockito.Mockito.*;

import com.pos.account.model.Attendant;
import com.pos.account.model.AttendantDAO;

public class TestAttendantCtrl {
	
         @Mock
	     Attendant attd;
	     
	     @Before
	     public void AttdClass() throws Exception {
	    	  
	    	  
	    	  attd = mock(Attendant.class);
	    	  Mockito.when(AttendantDAO.createNewAttendant(attd)).thenReturn(attd);
	    	   
	     }
	     
        
	     @Test
	     public void testAttendant() throws Exception{
	    	 
	    	   assertEquals(attd,AttendantDAO.createNewAttendant(attd));
	     }
	      
	     
}
