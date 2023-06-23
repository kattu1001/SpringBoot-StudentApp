package com.example.exception;

public class UpdateStudentNotFound extends RuntimeException{
    public UpdateStudentNotFound(){}
    public UpdateStudentNotFound(String s)
    {
        super(s);
    }
}
