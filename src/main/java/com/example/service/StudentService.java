package com.example.service;

import com.example.entity.Student;

import java.util.List;

public interface StudentService {


    public Student saveStudent(Student student);
    public List<Student> getAllStudents();
    public Student getStudentById(Integer sid);
    public void deleteStudentById(Integer sid);
    public Student updateStudentById(Integer sid,String sname,String semail,float smarks);
}
