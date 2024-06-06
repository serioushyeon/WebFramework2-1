package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.HansungCourse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class HansungCourseDao{

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public HansungCourseDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<HansungCourse> getAllCourses() {
        String sql = "SELECT * FROM courses";
        return jdbcTemplate.query(sql, new CourseRowMapper());
    }

    public List<HansungCourse> getPeriodCourses(int year, int semester) {
        String sql = "SELECT * FROM courses WHERE year = ? AND semester = ?";
        return jdbcTemplate.query(sql, new Object[]{year, semester}, new CourseRowMapper());
    }

    public boolean insert(HansungCourse course) {
        String sql = "INSERT INTO courses (year, semester, id, name, kind, teacher, credit) VALUES (?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, course.getYear(), course.getSemester(), course.getId(), course.getName(),
                course.getKind(), course.getTeacher(), course.getCredit()) == 1;
    }

    private static class CourseRowMapper implements RowMapper<HansungCourse> {
        @Override
        public HansungCourse mapRow(ResultSet rs, int rowNum) throws SQLException {
            HansungCourse course = new HansungCourse();
            course.setYear(rs.getInt("year"));
            course.setSemester(rs.getInt("semester"));
            course.setId(rs.getString("id"));
            course.setName(rs.getString("name"));
            course.setKind(rs.getString("kind"));
            course.setTeacher(rs.getString("teacher"));
            course.setCredit(rs.getInt("credit"));
            return course;
        }
    }
}
