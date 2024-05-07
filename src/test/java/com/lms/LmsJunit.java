package com.lms;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.lms.bean.Library;
import com.lms.controller.LibraryController;

public class LmsJunit {

	@Autowired
	private LibraryController controller;
	
	@Test
	public ModelAndView testFindAll() {

		return null;
		
	}
}
