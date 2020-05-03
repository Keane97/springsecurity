/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.spring.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author danie
 */
@ControllerAdvice
public class ExceptionClass {

    @ExceptionHandler(value = Exception.class)
    public ModelAndView handleException(HttpServletRequest request, Exception e) {
        System.out.println("Request: " + request.getRequestURL() + " threw an exception: " + e);
        return new ModelAndView("/error");
    }

}
