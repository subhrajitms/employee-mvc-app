package org.jsp.employeemvcapp.controller;

import org.jsp.employeemvcapp.dao.EmployeeDao;
import org.jsp.employeemvcapp.dto.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

	@Autowired
	private EmployeeDao employeeDao;

	@RequestMapping("/open-save")
	public ModelAndView openSave(ModelAndView view) {
		view.setViewName("save");
		view.addObject("e", new Employee());
		return view;
	}

	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute Employee e, ModelAndView view) {
		e = employeeDao.addEmployee(e);
		view.setViewName("print");
		view.addObject("msg", "Employee Saved Successfully with:" + e.getId());
		return view;
	}

	@RequestMapping("open-update")
	public ModelAndView openUpdate(ModelAndView view) {
		view.setViewName("update");
		view.addObject("e", new Employee());
		return view;
	}

	@PostMapping("/update")
	public ModelAndView update(@ModelAttribute Employee e, ModelAndView view) {
		if (e != null) {
			e = employeeDao.updateEmployee(e);
			view.setViewName("print");
			view.addObject("msg", "Product Updated Successfully..");
			return view;
		}
		view.setViewName("print");
		view.addObject("msg", "Invalid Product Id..");
		return view;

	}
	@RequestMapping("/open-view")
	public String openView(String view)
	{
		return view;
	}
	
	@GetMapping("/find-by-id")
	public ModelAndView findById(@RequestParam int id, ModelAndView view)
	{
		Employee e=employeeDao.findById(id);
		if(e!=null)
		{
			view.setViewName("display");
			view.addObject("e", e);
			return view;
		}
		view.setViewName("print");
		view.addObject("msg", "Invalid Employee Id..");
		return view;
	}
	
	@GetMapping("/verify-by-phone")
	public ModelAndView verifyByPhone(@RequestParam long phone, @RequestParam String password, ModelAndView view)
	{
		Employee e=employeeDao.verifyEmployee(phone, password);
		if(e!=null)
		{
			view.setViewName("display");
			view.addObject("e", e);
			return view;
		}
		view.setViewName("print");
		view.addObject("msg", "Invalid Employee Phone Number and Password....");
		return view;
	}
	@GetMapping("/verify-by-email")
	public ModelAndView verifyByEmail(@RequestParam String email, @RequestParam String password, ModelAndView view)
	{
		Employee e=employeeDao.verifyEmployee(email, password);
		if(e!=null)
		{
			view.setViewName("display");
			view.addObject("e", e);
			return view;
		}
		view.setViewName("print");
		view.addObject("msg", "Invalid Employee Phone Number and Password....");
		return view;
	}
	

}
