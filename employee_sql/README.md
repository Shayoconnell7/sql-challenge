# sql-challenge

I created and imported my tables in the followig order so as to avoid referencing issues:
1. departments
2. titles
3. employees
4. salaries
5. dept_emp
6. dept_manager

For the sake of consistency and readability, I kept all the same table and column names from the original csv files. Once I had successfully imported my tables, I created queries to return the following information:


1. List the following details of each employee: employee number, last name, first name, sex, and salary.
- I used SELECT to get the columns I wanted, then used an INNER JOIN on the emp_no column from the employees and salaries tables.

2. List first name, last name, and hire date for employees who were hired in 1986.
- I used SELECT for several columns from employees, with a WHERE to narrow down to the target dates.


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
- I used two INNER JOINs on the dept_no and emp_no columns to bring together the departments, employees, and dept_manager tables

4. List the department of each employee with the following information: employee number, last name, first name, and department name.
- For something different, I simply used SELECT and WHERE to bring together the needed information from the departments, employees, and dept_emp tables. 

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
- I SELECTed the columns I wanted from the employees table, using WHERE to narrow down the results. 

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
- I used WHERE to SELECT the information I wanted from the employees, departments, and dept_emp tables.


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- When I tried using the same method as I had in question 6, it was unable to return a result so instead I did two INNER JOINs, this time with a WHERE to further filter my selection.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
- I used GROUP BY and ORDER BY to show the COUNT of last_name in the employees table. 