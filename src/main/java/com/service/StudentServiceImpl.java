package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Student;
import com.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	StudentRepository studentRepository;

	@Override
	public Student fetchStudentById(int id) 
	{
		
		Optional<Student> std = studentRepository.findById(id);
		return std.orElse(null);
	}

	@Override
	public List<Student> getAllStudents() 
	{
		return studentRepository.findAll();
	}

	@Override
	public Student insertStudent(Student student)
	{
		return studentRepository.save(student);
	}

	@Override
	public boolean deleteStudentById(int id)
	{
		Optional<Student> student =  studentRepository.findById(id);
		if(student.isPresent())
		{
			studentRepository.deleteById(id);
			
			return true;
		}
		else 
		{
			return false;
		}
	}

	@Override
	public void updateStudentById(int id, Student updatedStudent)
	{
		Optional<Student> s = studentRepository.findById(id);
		
		if(s.isPresent())
		{
			Student existingStudent = s.get();
			
			existingStudent.setName(updatedStudent.getName());
			existingStudent.setEmail(updatedStudent.getEmail());
			existingStudent.setMobile(updatedStudent.getMobile());
			existingStudent.setAddress(updatedStudent.getAddress());
			
			studentRepository.save(existingStudent);
		}
		else
		{
			throw new RuntimeException("Student with ID " + id + " not found!");
		}
	}
	
}
