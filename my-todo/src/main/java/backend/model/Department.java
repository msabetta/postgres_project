package backend.model;

public class Department {
	private Integer dep_id;
	private String dep_name;
	private String dep_location;
	
	public Department(Integer dep_id, String dep_name, String dep_location) {
		super();
		this.dep_id = dep_id;
		this.dep_name = dep_name;
		this.dep_location = dep_location;
	}

	public Department(String dep_name, String dep_location) {
		super();
		this.dep_name = dep_name;
		this.dep_location = dep_location;
	}

	public Integer getDep_id() {
		return dep_id;
	}

	public void setDep_id(Integer dep_id) {
		this.dep_id = dep_id;
	}

	public String getDep_name() {
		return dep_name;
	}

	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}

	public String getDep_location() {
		return dep_location;
	}

	public void setDep_location(String dep_location) {
		this.dep_location = dep_location;
	}
	
}
