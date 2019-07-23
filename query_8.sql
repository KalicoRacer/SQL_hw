SELECT 
	last_name AS "Last Name",
    COUNT (last_name) AS "Count" 
FROM 
	employees 
GROUP BY 
	last_name;