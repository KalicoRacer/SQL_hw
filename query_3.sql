SELECT 
    dep.dept_no AS "Department Num.", 
	dep.dept_name AS "Department", 
	emp.emp_no AS "Employee Num.", 
	emp.last_name AS "Last Name", 
	emp.first_name AS "First Name", 
	emp.hire_date AS "Start Employment", 
	dm.TO_DATE AS "End Employment" 
FROM 
	dept_manager AS dm 
	JOIN employees AS emp ON dm.emp_no = emp.emp_no 
	JOIN departments AS dep ON dm.dept_no = dep.dept_no 
ORDER BY 
	dep.dept_no, 
	emp.last_name;