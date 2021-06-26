package com.lp.controller;

import com.lp.entity.Students;
import com.lp.entity.User;
import com.lp.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentsController {


    @Autowired
    @Qualifier("studentsServiceImpl")
    private StudentsService studentsService;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(User user, Model model, HttpSession session){

        String username = user.getUsername();
        String password = user.getPassword();
        if(username != null && username.equals("lipeng")
                && password != null && password.equals("123456")){
            session.setAttribute("USER_SESSION",user);
            return "redirect:main";
        }

        model.addAttribute("msg","用户名或密码错误，请重新登录");
        return "login";
    }

    @RequestMapping("/main")
    public String main(Model model){
        List<Students> studentsList = studentsService.selectAll();
        model.addAttribute("data",studentsList);
        return "main";
    }


    @RequestMapping("/select")
    @ResponseBody
    public List<Students> select(){
        List<Students> studentsList = studentsService.selectAll();
        return studentsList;
    }

    @RequestMapping("/insert")
    @ResponseBody
    public String insert(Students students){
        Integer integer = studentsService.insertStudents(students);
        if(integer > 0){
            return "插入成功";
        }
        return "插入失败";
    }

    @RequestMapping("/update")
    @ResponseBody
    public String update(Students students){
        int integer = studentsService.updateStudents(students);
        if(integer > 0){
            return "修改成功";
        }
        return "修改失败";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer Id){
        studentsService.deleteStudents(Id);
        return "redirect:/main";
    }

}
