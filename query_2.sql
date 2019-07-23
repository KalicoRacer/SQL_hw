SELECT 
    emp_no AS "Employee Num.", 
	last_name AS "Last Name", 
	first_name AS "First Name" 
FROM 
	employees 
WHERE 
	CAST(hire_date AS DATE) >= '1986-01-01';