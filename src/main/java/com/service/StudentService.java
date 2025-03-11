package com.service;

import java.util.List;

import com.model.Student;

public interface StudentService 
{
	public Student fetchStudentById(int id);
	public List<Student> getAllStudents();
	public Student insertStudent(Student student);
	public boolean deleteStudentById(int id);
	public void updateStudentById(int id, Student student);
}
