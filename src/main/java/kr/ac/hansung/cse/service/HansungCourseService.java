package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.HansungCourseDao;
import kr.ac.hansung.cse.model.HansungCourse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HansungCourseService {

    @Autowired
    private HansungCourseDao hansungCourse;
    public List<HansungCourse> getPeriodCourses(int year, int semester)
    {
        return hansungCourse.getPeriodCourses(year, semester);
    }
    public int getTotalCreditsForPeriod(int year, int semester) {
        List<HansungCourse> cours = getPeriodCourses(year, semester);
        int totalCredits = 0;
        for(HansungCourse hansungCourse : cours) {
            totalCredits += hansungCourse.getCredit();
        }
        return totalCredits;
    }
    public void insert(HansungCourse hansungCourse) {
        this.hansungCourse.insert(hansungCourse);
    }
}