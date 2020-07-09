USE employees;

# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title FROM titles;

# Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

# find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'.
SELECT last_name, COUNT(last_name) FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
