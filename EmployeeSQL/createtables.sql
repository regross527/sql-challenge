
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL,
	CONSTRAINT title_id PRIMARY KEY (title_id));
	
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(255) NOT NULL,
	birth_date VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date VARCHAR(255) NOT NULL,
	CONSTRAINT emp_no PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id));
	
CREATE TABLE departments (
	dept_no VARCHAR(255) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	CONSTRAINT dept_no PRIMARY KEY (dept_no));
	
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no2 VARCHAR(255) NOT NULL,
	CONSTRAINT dept_no2 PRIMARY KEY (dept_no2),
	FOREIGN KEY (dept_no2) REFERENCES departments(dept_no));

CREATE TABLE dept_manager (
	emp_no2 int NOT NULL,
	dept_no3 VARCHAR(255) NOT NULL,
	CONSTRAINT emp_no2 PRIMARY KEY (emp_no2),
	FOREIGN KEY (emp_no2) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no3) REFERENCES departments(dept_no));

CREATE TABLE salaries (
	emp_no3 int NOT NULL,
	salary int NOT NULL,
	CONSTRAINT emp_no3 PRIMARY KEY (emp_no3),
	FOREIGN KEY (emp_no3) REFERENCES employees(emp_no));
	