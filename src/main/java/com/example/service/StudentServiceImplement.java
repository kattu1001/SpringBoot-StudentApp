package com.example.service;

import com.example.entity.Student;
import com.example.exception.StudentNotFoundException;
import com.example.exception.UpdateStudentNotFound;
import com.example.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImplement implements StudentService{

    private StudentRepository studentRepository;

    @Autowired
    public void setStudentRepository(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @Override
    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Student getStudentById(Integer sid) {


        return studentRepository.findById(sid).orElseThrow(()->new StudentNotFoundException("Student with ID : "+sid+ " not found"));
    }
    public Student getStudentById1(Integer sid)
    {
        return studentRepository.findById(sid).orElseThrow(()-> new UpdateStudentNotFound("Student with ID: "+sid+" Not Available"));
    }

    @Override
    public void deleteStudentById(Integer sid) {
        Student student=studentRepository.getById(sid);
        if(student!=null)
        {
            studentRepository.deleteById(sid);
        }
    }

    @Override
    public Student updateStudentById(Integer sid,String sname,String semail,float smarks) {

        Student existingStudent = getStudentById1(sid);
        existingStudent.setSname(sname);
        existingStudent.setSemail(semail);
        existingStudent.setSmarks(smarks);
        return studentRepository.save(existingStudent);

    }
}
