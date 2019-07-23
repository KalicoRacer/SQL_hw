SELECT 
    last_name, 
	first_name 
FROM 
	employees 
WHERE 
	first_name = 'Hercules' 
	AND last_name LIKE 'B%';