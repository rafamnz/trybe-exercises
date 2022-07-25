SELECT * FROM hr.employees;
SET SQL_SAFE_UPDATES = 0;
SELECT MAX(salary) AS max_salary FROM hr.employees;

SELECT 
ROUND(MAX(salary)) AS max_salary, 
ROUND(MIN(salary)) AS min_salary, 
ROUND((MAX(salary) - MIN(salary))) AS wage_gap 
FROM hr.employees;

SELECT job_id, ROUND(AVG(salary)) AS average_wage
FROM hr.employees
GROUP BY job_id
ORDER BY average_wage DESC;

SELECT ROUND(SUM(salary)) AS capital FROM hr.employees;

SELECT
ROUND(MAX(salary), 2) AS max_salary,
ROUND(MIN(salary), 2) AS min_salary,
ROUND(SUM(salary), 2) AS salary_sum,
ROUND(AVG(salary), 2) AS average_wage
FROM hr.employees;

SELECT job_id, COUNT(*) FROM hr.employees
WHERE job_id = 'IT_PROG';

SELECT job_id, COUNT(*) AS quantity, SUM(salary) AS sum_salary 
FROM hr.employees
GROUP BY job_id
ORDER BY sum_salary DESC;

SELECT job_id, COUNT(*) AS quantity, SUM(salary) AS sum_salary 
FROM hr.employees
WHERE job_id = 'IT_PROG'
GROUP BY job_id;

SELECT job_id, COUNT(*) AS quantity, ROUND(AVG(salary)) AS avg_salary 
FROM hr.employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id
ORDER BY avg_salary DESC;

SELECT department_id, COUNT(*) AS quantity, ROUND(AVG(salary), 2) AS avg_salary
FROM hr.employees
GROUP BY department_id;

UPDATE hr.employees
SET phone_number = REPLACE(phone_number, '515', '777')
WHERE phone_number LIKE '515%';

SELECT * FROM hr.employees
WHERE CHAR_LENGTH(first_name) >= 8
ORDER BY CHAR_LENGTH(first_name);

SELECT employee_id, first_name, LEFT(hire_date, 4) AS hiring_year
FROM hr.employees;
-- or
SELECT employee_id, first_name, YEAR(hire_date) AS hiring_year
FROM hr.employees;

SELECT employee_id, first_name, SUBSTRING(hire_date, 9) AS hiring_day
FROM hr.employees;
-- or
SELECT employee_id, first_name, DAY(hire_date) AS hiring_day
FROM hr.employees;

SELECT employee_id, first_name, SUBSTRING(hire_date, 6, 2) AS hiring_month
FROM hr.employees;
-- or
SELECT employee_id, first_name, MONTH(hire_date) AS hiring_month
FROM hr.employees;

SELECT CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS full_name FROM hr.employees; 

SELECT last_name, hire_date
FROM hr.employees
WHERE hire_date LIKE '1987-07-%';

SELECT first_name, last_name, DATEDIFF(CURRENT_DATE(), hire_date) AS work_days
FROM hr.employees;
