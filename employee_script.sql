CREATE DATABASE employee;

CREATE TABLE department (
    dep_id INTEGER,
    dep_name VARCHAR(20),
    dep_location VARCHAR(15),
	PRIMARY KEY(dep_id)
);

CREATE TABLE employees (
    emp_id INTEGER,
    emp_name VARCHAR2(15),
    job_name VARCHAR2(20),
	manager_id INTEGER,
	hire_date VARCHAR(10),
	salary DECIMAL(10,2),
	commission DECIMAL(7,2),
	dep_id INTEGER,
	grade INTEGER,
	PRIMARY KEY(emp_id,manager_id),
	FOREIGN KEY(dep_id) REFERENCES department(dep_id),
	FOREIGN KEY(grade)REFERENCES salary_grade(grade)
);

 CREATE TABLE salary_grade(
	grade INTEGER,
	min_salary INTEGER,
	max_salary INTEGER,
	PRIMARY KEY(grade)
);

-- INSERT INTO department table --
INSERT INTO department(dep_id,dep_name,dep_location)VALUES(1001,'Department of New York','New York');
INSERT INTO department(dep_id,dep_name,dep_location)VALUES(3001,'Department of Los Angeles','Los Angeles');
INSERT INTO department(dep_id,dep_name,dep_location)VALUES(2001,'Department of Chicago','Chicago');

-- INSERT INTO salary_grade table --
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(1,0,1000);
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(2,1000,2000);
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(3,2000,3000);
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(4,3000,4000);
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(5,4000,5000);
INSERT INTO salary_grade(grade,min_salary,max_salary)VALUES(6,5000,6000);

-- INSERT INTO employees table --
INSERT INTO employees (emp_id, emp_name, job_name, hire_date, salary, dep_id,grade)VALUES ( 68319 ,'KAYLING','PRESIDENT' ,'1991-11-18' , 6000.00 , 1001,6);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 66928 ,'BLAZE', 'MANAGER',68319, '1991-05-01' , 2750.00 ,3001,3);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 67832 ,'CLARE', 'MANAGER',68319, '1991-06-09' , 2550.00, 1001,3);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 65646,'JONAS','MANAGER',68319,'1991-04-02',2957.00,2001,3);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 67858 , 'SCARLET', 'ANALYST',65646 , '1997-04-19' , 3100.00,2001,4);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 69062 , 'FRANK', 'ANALYST',65646 , '1991-12-03' , 3100.00,2001,4);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 63679 , 'SANDRINE', 'CLERK',69062 , '1990-12-18',900.00,2001,11);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary,commission, dep_id,grade)VALUES (64989, 'ADELYN', 'SALESMAN',66928, '1991-02-20', 1700.00,400.00,3001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary,commission, dep_id,grade)VALUES (65271, 'WADE', 'SALESMAN',66928, '1991-02-22' , 1350.00, 600.00,3001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary,commission, dep_id,grade)VALUES (66564 , 'MADDEN', 'SALESMAN',66928, '1991-09-28' , 1350.00,1500.00,3001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary,commission, dep_id,grade)VALUES (68454 , 'TUCKER', 'SALESMAN',66928 , '1991-09-08' , 1600.00,0.00,3001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 68736 , 'ADNRES', 'CLERK', 67858 , '1997-05-23' , 1200.00 , 2001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 69000 , 'JULIUS', 'CLERK', 66928 , '1991-12-03' , 1050.00 , 3001,2);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id,grade)VALUES ( 69324 , 'MARKER', 'CLERK', 67832 , '1992-01-23' , 1400.00 , 1001,2);

SELECT * FROM public.employees;
/* SELECT * FROM public.department;
SELECT * FROM public.salary_grade; */