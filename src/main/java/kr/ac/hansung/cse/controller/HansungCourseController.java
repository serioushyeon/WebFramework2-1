package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.HansungCourse;
import kr.ac.hansung.cse.service.HansungCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class HansungCourseController {

    @Autowired
    private HansungCourseService HansungCourseService;

    @GetMapping("/showCourse")
    public String showCourse(Model model) {
        int[] years = {2020, 2021, 2022, 2024};
        int[] semesters = {1, 2};

        for (int year : years) {
            for (int semester : semesters) {
                if(year == 2024 && semester == 2)
                    continue;
                List<HansungCourse> cours = HansungCourseService.getPeriodCourses(year, semester);
                model.addAttribute("courseList" + year + "_" + semester, cours);
            }
        }
        int[] years2 = {2020, 2020, 2021, 2021, 2022, 2022, 2024};
        int[] semesters2 = {1, 2, 1, 2, 1, 2, 1};

        for (int i = 0; i < years2.length; i++) {
            int total = HansungCourseService.getTotalCreditsForPeriod(years2[i], semesters2[i]);
            model.addAttribute("total" + years2[i] + "_" + semesters2[i], total);
        }

        int total = 0;
        for (int year : years) {
            for (int semester : semesters) {
                if(year == 2024 && semester == 2)
                    continue;
                total += HansungCourseService.getTotalCreditsForPeriod(year, semester);
            }
        }
        model.addAttribute("total", total);

        return "showCourse";
    }

    @GetMapping("/showRgCourse")
    public String showRegister(Model model) {
        List<HansungCourse> hansungCourseList2024_2 = HansungCourseService.getPeriodCourses(2024, 2);
        model.addAttribute("courseList2024_2", hansungCourseList2024_2);

        return "showRgCourse";
    }

    @GetMapping("/rgCourse")
    public String registerCourse(Model model) {
        model.addAttribute("Course", new HansungCourse());
        return "rgCourse";
    }

    @PostMapping("/success")
    public String doCreate(Model model, @Valid HansungCourse hansungCourse, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println("== Form data does not validate ==");

            List<ObjectError> errors = result.getAllErrors();
            for (ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }
            return "rgCourse";
        }

        HansungCourseService.insert(hansungCourse);
        return "success";
    }
}
