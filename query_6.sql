SELECT 
    emp.emp_no AS "Employee Num.", 
	emp.last_name AS "Last Name", 
	emp.first_name AS "First Name", 
	dep.dept_name AS "Department" 
FROM 
	dept_emp AS de 
	JOIN employees AS emp ON de.emp_no = emp.emp_no 
	JOIN departments AS dep ON de.dept_no = dep.dept_no 
WHERE 
	dep.dept_name = 'Sales' 
ORDER BY 
	emp.last_name;