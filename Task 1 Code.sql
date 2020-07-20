SELECT 
    YEAR(de.from_date) AS calendar_year,
    e.gender,
    COUNT(e.emp_no) AS no_of_employees
FROM
    t_dept_emp de
        JOIN
    t_employees e ON e.emp_no = de.emp_no
GROUP BY calendar_year, e.gender
HAVING calendar_year >= 1990
ORDER BY calendar_year;