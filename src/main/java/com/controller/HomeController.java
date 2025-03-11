package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.model.Student;
import com.service.StudentService;

@Controller
@RequestMapping("/student")
public class HomeController 
{
	@Autowired
	StudentService studentService;
	
	
	@GetMapping("/home")
	public String homePage()
	{
		return "home";
	}
	
	@GetMapping("/fetchStudent")
	public String fetchStudent()
	{
		return "fetchStudent";
	}
	
	@GetMapping("/fetchStudentById")
	public String fetchStudentById(@RequestParam("id") int id, Model m)
	{
		Optional<Student> s = Optional.ofNullable(studentService.fetchStudentById(id));
		if(s.isPresent())
		{
			m.addAttribute("student", s.get());
		}
		else
		{
			m.addAttribute("msg", "Student not found!");
		}
		return "fetchStudent";
	}
	
	@GetMapping("/getAllStudents")
	public String getAll(Model m)
	{
		List<Student> students = studentService.getAllStudents();
		m.addAttribute("students", students);
		
		return "studentList";
	}
	
	@GetMapping("/insertStudent")
	public String insertStudent()
	{
		return "insertStudent";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@RequestParam String name, 
							  @RequestParam String email,
							  @RequestParam String mobile, 
							  @RequestParam String address,
							  RedirectAttributes redirectAttributes)
	{
		Student s = new Student();
		s.setName(name);
		s.setEmail(email);
		s.setMobile(mobile);
		s.setAddress(address);
		
		studentService.insertStudent(s);
		
		redirectAttributes.addFlashAttribute("msg" , "Student added successfully");
		
		 return "redirect:/student/insertStudent";
	}
	
	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam(value = "id", required = false) Integer id, Model model) {
	    if (id != null) {
	        Optional<Student> studentOpt = Optional.ofNullable(studentService.fetchStudentById(id));
	        if (studentOpt.isPresent()) {
	            model.addAttribute("student", studentOpt.get());
	        } else {
	            model.addAttribute("msg", "Student not found!");
	        }
	    }
	    return "updateStudent";
	}

	@PostMapping("/updateStudentById")
	public String updateStudentById(@RequestParam int id,
	                                @RequestParam String name,
	                                @RequestParam String email,
	                                @RequestParam String mobile,
	                                @RequestParam String address,
	                                RedirectAttributes redirectAttributes) {
	    Optional<Student> studentOpt = Optional.ofNullable(studentService.fetchStudentById(id));

	    if (studentOpt.isPresent()) {
	        Student updatedStudent = studentOpt.get();
	        updatedStudent.setName(name);
	        updatedStudent.setEmail(email);
	        updatedStudent.setMobile(mobile);
	        updatedStudent.setAddress(address);

	        studentService.updateStudentById(id, updatedStudent); 

	        redirectAttributes.addFlashAttribute("msg", "Student updated successfully");
	    } else {
	        redirectAttributes.addFlashAttribute("msg", "Student not found");
	    }

	    return "redirect:/student/updateStudent";
	}


	
	@GetMapping("/deleteStudent")
	public String deleteStudent()
	{
		return "deleteStudent";
	}
	
	@GetMapping("/deleteStudentById")
	public String deleteStudentById(@RequestParam("id") int id, RedirectAttributes redirectAttributes)
	{
		if(studentService.deleteStudentById(id) == true)
		{
			
			redirectAttributes.addFlashAttribute("msg", "Student deleted successfully");
		}
		else
		{
			redirectAttributes.addFlashAttribute("msg", "Student not found!");
			
		}
		
		return "redirect:/student/deleteStudent";
	}
	
}
