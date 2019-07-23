SELECT 
    COUNT (last_name), 
	last_name AS "Last Name" 
FROM 
	employees 
GROUP BY 
	last_name;