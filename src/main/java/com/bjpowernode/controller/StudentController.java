package com.bjpowernode.controller;

import com.bjpowernode.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentController {
    @RequestMapping("/some.do")
    @ResponseBody
    public String doSome(){
        Student s1 = new Student(001,"zs",22);
        Student s2 = new Student(002,"ls",25);
        //{"id":"?","name":"?","age":"?"} {"s1":{"id":"?","name":"?","age":"?"},"s2":{"id":"?","name":"?","age":"?"}}
        String json = "{\"s1\":{\"id\":\""+s1.getId()
                +"\",\"name\":\""+s1.getName()
                +"\",\"age\":\""+s1.getAge()
                +"\"},\"s2\":{\"id\":\""+s2.getId()
                +"\",\"name\":\""+s2.getName()
                +"\",\"age\":\""+s2.getAge()+"\"}}";
        return json;
    }
}
