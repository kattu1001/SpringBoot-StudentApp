package com.example.controller;

import com.example.entity.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@RequestMapping(value="student")
@Controller
public class StudentController {

    private StudentService studentService;

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping(value="student")
    public String getHomepage()
    {
        return "student";
    }

    @GetMapping(value="/saveStudent")
    public ModelAndView getStudentRegister()
    {
        ModelAndView mv = new ModelAndView("register");
        Student student = new Student();
        mv.addObject("student", student);
        return mv;
    }
    @PostMapping(value="/saveStudent")
    public ModelAndView postStudentRegister(@Valid @ModelAttribute Student student,BindingResult result)
    {
        ModelAndView mv = new ModelAndView("register");
        if(result.hasErrors())
        {
            return mv;
        }
        else
        {
            Student savedStudent=studentService.saveStudent(student);
            mv.addObject("savedStudent",savedStudent);
            return mv;
        }
    }
    @GetMapping(value="singleStudent")
    public ModelAndView getStudentById()
    {
        ModelAndView mv = new ModelAndView("singleStudent");
        return mv;
    }
   @PostMapping (value = "singleStudent")
    public ModelAndView postStudentById(@RequestParam Integer sid)
    {
        Student student = studentService.getStudentById(sid);
        ModelAndView mv = new ModelAndView("singleStudent");
        mv.addObject("student",student);
        return mv;
    }

    @GetMapping(value="deleteStudent")
    public ModelAndView getDeleteById()
    {
        ModelAndView mv = new ModelAndView("deleteStudent");
        return mv;
    }
    @PostMapping(value = "deleteStudent")
    public ModelAndView postDeleteById(@RequestParam Integer sid)
    {
        ModelAndView mv = new ModelAndView("deleteStudent");
        Student student = studentService.getStudentById(sid);

            studentService.deleteStudentById(sid);
            mv.addObject("message","Student with Id: "+sid+" was deleted Successfully");

        return mv;
    }

   @GetMapping(value = "allStudents")
    public ModelAndView getAllStudents()
    {
        List<Student> student = studentService.getAllStudents();
        ModelAndView mv = new ModelAndView("allStudents");
        mv.addObject("student",student);
        return mv;
    }

    @GetMapping(value="updateStudentDetail")
    public ModelAndView getUpdateStudent()
    {
        ModelAndView mv = new ModelAndView("updateStudent");
        return mv;
    }
    @PostMapping(value = "updateStudentDetail")
    public ModelAndView postUpdateStudent(@RequestParam Integer sid,@RequestParam String sname,
                                          @RequestParam String semail,@RequestParam float smarks)
    {
            studentService.updateStudentById(sid,sname,semail,smarks);
            List<Student> students =studentService.getAllStudents();
            ModelAndView mv = new ModelAndView("allStudents");
            mv.addObject("student",students);
            return mv;
    }

}
