-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select m.emp_no, m.last_name, m.first_name, m.sex, n.salary 
	from employees as m
	left join salaries as n
	on (m.emp_no = n.emp_no3)
	order by m.emp_no;
	
-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
	from employees
	where hire_date like '%1986%';
	
-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select m.dept_no3, n.dept_name, m.emp_no2, o.last_name, o.first_name
	from dept_manager as m
	inner join departments as n
	on (m.dept_no3 = n.dept_no)
	inner join employees as o
	on (m.emp_no2 = o.emp_no);
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select m.emp_no, m.last_name, m.first_name, o.dept_name
	from employees as m
	inner join dept_emp as n
	on (m.emp_no = n.emp_no)
	inner join departments as o
	on (n.dept_no2 = o.dept_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
	from employees
	where (first_name = 'Hercules')
	and last_name like 'B%';
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select m.emp_no, m.last_name, m.first_name, n.dept_name
	from departments as n
	inner join dept_emp as o
	on (n.dept_no = o.dept_no2)
	inner join employees as m
	on (o.emp_no = m.emp_no)
	where n.dept_name = 'Sales';
	
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select m.emp_no, m.last_name, m.first_name, n.dept_name
	from departments as n
	inner join dept_emp as o
	on (n.dept_no = o.dept_no2)
	inner join employees as m
	on (o.emp_no = m.emp_no)
	where n.dept_name in ('Sales', 'Development');
	
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
	from employees
	group by last_name
	order by count(last_name) desc;