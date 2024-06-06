package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class HansungCourse {
    private int year;
    @Min(value = 1, message="학기는 1~2로 입력해주세요.")
    @Max(value = 2, message="학기는 1~2로 입력해주세요.")
    private int semester;
    @NotEmpty(message="과목코드를 입력해주세요.")
    private String id;
    @NotEmpty(message="교과목명을 입력해주세요.")
    private String name;
    @NotEmpty(message="교과구분을 입력해주세요.")
    private String kind;
    @NotEmpty(message="담당교수를 입력해주세요.")
    private String teacher;
    @Min(value = 1, message="1이상 입력해주세요")
    private int credit;
}
