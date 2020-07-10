USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT first_name, last_name
FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );


# Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees AS emp
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '999%'
    )
AND gender = 'F';