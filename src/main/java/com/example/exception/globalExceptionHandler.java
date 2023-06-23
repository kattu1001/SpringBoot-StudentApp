package com.example.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class globalExceptionHandler {
    @ExceptionHandler(StudentNotFoundException.class)
    public ModelAndView handle(StudentNotFoundException ms)
    {
        ModelAndView mav=new ModelAndView("singleStudent");
        mav.addObject("kittu",ms.getMessage());
        return mav;
    }

    @ExceptionHandler(UpdateStudentNotFound.class)
    public ModelAndView handle2(UpdateStudentNotFound snfe2)
    {
        ModelAndView mv = new ModelAndView("updateStudent");
        mv.addObject("msg",snfe2.getMessage());
        return mv;
    }
}
