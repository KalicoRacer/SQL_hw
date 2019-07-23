SELECT 
    emp.emp_no AS "Employee Num.", 
	emp.last_name AS "Last Name", 
	emp.first_name AS "First Name", 
	emp.gender AS "Gender", 
	sal.salary AS "Salary" 
FROM 
	employees AS emp 
	JOIN salaries AS sal ON emp.emp_no = sal.emp_no;