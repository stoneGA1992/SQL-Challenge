--Question 1
--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--Question 2
--List employees who were hired in 1986.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.hire_date
FROM employees
Where employees.hire_date between '1986-01-01' and '1986-12-31'
Group by employees.emp_no;

--Question 3
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN dept_manager on departments.dept_no= dept_manager.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no

--Question 4
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name
FROM dept_emp
JOIN employees on dept_emp.emp_no= employees.emp_no
JOIN departments on dept_emp.dept_no= departments.dept_no

--Question 5
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name
from employees
WHERE employees.first_name = 'Hercules' and employees.last_name like 'B%';

--Question 6
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT  employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name
FROM dept_emp
JOIN employees on dept_emp.emp_no= employees.emp_no
JOIN departments on dept_emp.dept_no= departments.dept_no
WHERE departments.dept_name = 'Sales'

--Question 7
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name
FROM dept_emp
JOIN employees on dept_emp.emp_no= employees.emp_no
JOIN departments on dept_emp.dept_no= departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name ='Development'


--Question 8
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, Count (last_name) as total_count
from employees
group by last_name
order by total_count desc;
















































