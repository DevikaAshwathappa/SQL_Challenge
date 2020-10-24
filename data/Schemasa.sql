---Schima for creating Tables
DROP TABLE if exists departments;

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments


-- Create table employees

DROP TABLE if exists employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees


--Create table dept_emp

DROP TABLE if exists dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp


-- Create table dept_managers

DROP TABLE if exists dept_manager;

CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT, 
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers



--Creating salaries table

DROP TABLE if exists salaries;

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Creating titles table

DROP TABLE if exists titles;

CREATE TABLE titles(
	title_id INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (title_id)
	);

select * from titles