-- Query a; name, address, salary for each female 
-- member of academic staff who manages a department
SELECT First_Name, Last_Name, Street, Town, Zip, Salary
FROM Academic_Staff
WHERE Post = 'department head' AND sex = 'F'

-- Query b; name, sex, salary for each lecturer with a PhD
SELECT First_Name, Last_Name, Salary
FROM Academic_Staff
WHERE Post LIKE '%lecturer%' AND Qualification = 'PhD'

-- Query c; forea course w/ >10 students, list title&number of studs
SELECT c.Course_title as Course_Name, count(*) AS Count_Students
FROM Student e
JOIN Course c
ON e.Course = c.Course_Code
GROUP BY c.Course_title
HAVING count(*) > 10

-- Query d; List # of female and male members of academic staff
-- employed by CIS department
SELECT
	SUM(CASE WHEN Academic_Staff.sex = 'F' AND Department = 'CIS' THEN 1 ELSE 0 END) AS 'Female',
	SUM(CASE WHEN Academic_Staff.sex = 'M' AND Department = 'CIS' THEN 1 ELSE 0 END) AS 'Male'
FROM
	Academic_Staff

-- Query e; forea member of academic staff w/ >6 hours teaching any
-- module, list their last name, module title, and # of hours
SELECT Last_Name, [Hours]
FROM Academic_Staff
WHERE [Hours] > 6