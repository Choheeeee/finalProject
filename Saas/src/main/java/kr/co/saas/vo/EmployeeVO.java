package kr.co.saas.vo;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@ToString
@Data
@EqualsAndHashCode(of = "empNo")
public class EmployeeVO implements Serializable{
	private int rnum;
	@NotBlank
	private String empNo;
	@NotBlank
	private String empCmpId;
	@NotBlank
	private String empName;
	public void setempRole(String empRoleString) {
		if (empRoleString != null && !empRoleString.isEmpty()) {
            String[] rolesArray = empRoleString.split(",");
            this.empRole = Arrays.asList(rolesArray);
        }
	}
	
	private String base64;
	
	private String empPass;
	private String empDptId1;
	private String empDptId2;
	private String empStatus;
	private List<String> empRole;
	private String empMobile;
	private String empHometelno;
	private String empCmptelno;
	private String empMail;
	private String empFax;
	private String empAddr;
	private String empWorkingplace;
	@DateTimeFormat(iso = ISO.DATE)
	private LocalDate empBirthday;
	private String empRemarks;
	@JsonIgnore
	@ToString.Exclude
	private String empRrno;
	private String empJobduty;
	private String empJobank;
	private String empJobposition;
	private String empInterests;
	private String empGen;
	
	private DepartmentVO department;
}