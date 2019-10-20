--List all male students --
--Could be used for counting male students, ordering in age for a seating chart, ordering in--
--age for programming examples/change of era--
SELECT Name
FROM Student
WHERE sex = 'M'
ORDER BY DOB

--list all male professors by salary--
--Competition to see who makes more, ordering of male professors by salary (lowest to highest) to see what a raise--
--across the male professors will cost--
SELECT First_Name, Last_Name, Salary
FROM Academic_Staff
WHERE sex = 'M'
ORDER BY Salary

--List name, address, and salary for each male member of academic staff who manages a department--
SELECT First_Name, Last_Name, Street, Town, Zip, Salary
FROM Academic_Staff
WHERE Post = 'department head' AND sex = 'M'

--Get a count of staff and student to get a student to staff to student ratio--
SELECT  (
        SELECT COUNT(*)
        FROM   Academic_Staff
        ) AS Staff,
        (
        SELECT COUNT(*)
        FROM   Student
        ) AS Student
		
--Get names of all professors who work in Math Department that live in rapid city--
SELECT First_Name, Last_Name
FROM Academic_Staff
WHERE Department='Math' AND Town='Rapid City'

--Get all courses of Professors who live in Rapid City who won't get cancelled in a snow storm
SELECT c.Course_title as 'Course'
FROM Academic_Staff a
JOIN Course c
ON a.Staff_Number = c.Professor AND a.Town LIKE 'Rapid City'
GROUP BY c.Course_title

--Find the Max Salary--
SELECT MAX(Salary) AS 'Salary'
FROM Academic_Staff

--Find Professor with the greatest salary to help balance budget cuts--
SELECT First_Name, Last_Name
FROM Academic_Staff
WHERE Salary IN
	(SELECT MAX(Salary)
	 FROM Academic_Staff)