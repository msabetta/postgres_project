package backend.model;

public class Employee {
	
	private Integer emp_id;
	private String emp_name;
	private String job_name;
	private Integer manager_id;
	private String hire_date;
	private Float salary;
	private Float commission;
	private Integer dep_id;
	
	public Employee(Integer emp_id, String emp_name, String job_name, Integer manager_id, String hire_date,
			Float salary, Float commission, Integer dep_id) {
		super();
		this.emp_id = emp_id;
		this.emp_name = emp_name;
		this.job_name = job_name;
		this.manager_id = manager_id;
		this.hire_date = hire_date;
		this.salary = salary;
		this.commission = commission;
		this.dep_id = dep_id;
	}
	
	public Employee(String emp_name,String job_name,Float salary) {
		super();
		this.emp_name = emp_name;
		this.job_name = job_name;
		this.salary = salary;
	}

	public Integer getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getJob_name() {
		return job_name;
	}

	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}

	public Integer getManager_id() {
		return manager_id;
	}

	public void setManager_id(Integer manager_id) {
		this.manager_id = manager_id;
	}

	public String getHire_date() {
		return hire_date;
	}

	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}

	public Float getSalary() {
		return salary;
	}

	public void setSalary(Float salary) {
		this.salary = salary;
	}

	public Float getCommission() {
		return commission;
	}

	public void setCommission(Float commission) {
		this.commission = commission;
	}

	public Integer getDep_id() {
		return dep_id;
	}

	public void setDep_id(Integer dep_id) {
		this.dep_id = dep_id;
	}
	
}
