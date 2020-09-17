package backend.model;

public class Salary {
	private Integer grade;
	private Float min_salary;
	private Float max_salary;
	
	public Salary(Integer grade, Float min_salary, Float max_salary) {
		super();
		this.grade = grade;
		this.min_salary = min_salary;
		this.max_salary = max_salary;
	}
	
	

	public Salary(Float min_salary, Float max_salary) {
		super();
		this.min_salary = min_salary;
		this.max_salary = max_salary;
	}



	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Float getMin_salary() {
		return min_salary;
	}

	public void setMin_salary(Float min_salary) {
		this.min_salary = min_salary;
	}

	public Float getMax_salary() {
		return max_salary;
	}

	public void setMax_salary(Float max_salary) {
		this.max_salary = max_salary;
	}

}
