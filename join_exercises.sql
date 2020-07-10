USE employees;

# write a query that shows each department along with the name of the
# current manager for that department.
SELECT departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name)
AS Manager
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY Department;

# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name)
AS Manager
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND emp.gender = 'F'
ORDER BY Department;

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS Title, COUNT(*) AS Count
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01'
AND dept_emp.to_date = '9999-01-01'
GROUP BY title;

# Find the current salary of all current managers.
SELECT departments.dept_name AS 'Department Name',
CONCAT(emp.first_name, ' ', emp.last_name) AS Name,
salaries.salary AS Salary
FROM departments
JOIN dept_manager AS dm ON departments.dept_no = dm.dept_no
JOIN employees AS emp ON dm.emp_no = emp.emp_no
JOIN salaries ON emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY dept_name;