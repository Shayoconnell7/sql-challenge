

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary 
from salaries
INNER JOIN employees ON
	employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

SELECT departments.dept_name,  employees.emp_no, employees.last_name, employees.first_name
FROM dept_emp, departments, employees
WHERE employees.emp_no = dept_emp.emp_no AND departments.dept_no = dept_emp.dept_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM employees, departments, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no AND departments.dept_name = 'Sales';


SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
    INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    INNER JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



