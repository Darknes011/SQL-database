-- ADDRESS COMPOSITE ATTRIBUTE --
CREATE TABLE Student_Address (
Street				VARCHAR(20)		NOT NULL,
Town				VARCHAR(10)		NOT NULL,
Zip					VARCHAR(5)		NOT NULL,
PRIMARY KEY(Street)
)

-- STUDENT NAME COMPOSITE ATTRIBUTE --
CREATE TABLE Student_Name (
First_Name			VARCHAR(15)	NOT NULL,
Last_Name			VARCHAR(15) NOT NULL,
PRIMARY KEY(First_Name)
)

-- BOOKS MULTIVALUED ATTRIBUTE TABLE --
CREATE TABLE Books (
Book_Name			VARCHAR(100) NOT NULL,
PRIMARY KEY(Book_Name)
)

-- MODULE TABLE --
CREATE TABLE Module (
Module_Code			VARCHAR(10) NOT NULL,
Title				VARCHAR(20) NOT NULL,
[Start_Date]		datetime NOT NULL,
End_Date			datetime NOT NULL,
Books				VARCHAR(100) NOT NULL,
Assessment_Scheme	INT NOT NULL,
PassFail			VARCHAR(100) NOT NULL,
PRIMARY KEY(Module_Code),
FOREIGN KEY(Books) REFERENCES Books
)

-- DEPARTMENT TABLE --
CREATE TABLE Department(
Name				VARCHAR(15)	NOT NULL,
Phone_Number		VARCHAR(15),
Fax_Number			VARCHAR(15),
Location			VARCHAR(50)	NOT NULL,
PRIMARY KEY(Name)
)

-- ACADEMIC STAFF TABLE --
CREATE TABLE Academic_Staff (
Staff_Number	VARCHAR(100)	NOT NULL,
Management_Date	datetime,
Department		VARCHAR(15)		NOT NULL,
[Hours]			INT,
Computer_ID		VARCHAR(10),
First_Name		VARCHAR(20)		NOT NULL,
Last_Name		VARCHAR(20)		NOT NULL,
Phone_Extension INT,
Office_Number	VARCHAR(5)		NOT NULL,
sex				CHAR			NOT NULL,
Salary			INT				NOT NULL,
Post			VARCHAR(50)		NOT NULL,
Qualification	VARCHAR(100),
Street				VARCHAR(20)		NOT NULL,
Town				VARCHAR(10)		NOT NULL,
Zip					VARCHAR(5)		NOT NULL,
PRIMARY KEY(Staff_Number),
FOREIGN KEY(Department) REFERENCES Department
)

-- COURSE TABLE --
CREATE TABLE Course (
Course_Code			VARCHAR(10) NOT NULL,
Course_title		VARCHAR(50) NOT NULL UNIQUE,
Duration			INT			NOT NULL,
Professor			VARCHAR(100)NOT NULL,
PRIMARY KEY(Course_Code),
FOREIGN KEY(Professor) REFERENCES Academic_Staff
)
-- NEXT-OF-KIN TABLE --
CREATE TABLE NextOfKin (
Student_Number		INT NOT NULL,
First_Name			VARCHAR(15) NOT NULL,
Last_Name			VARCHAR(15) NOT NULL,
Street				VARCHAR(20) NOT NULL,
Town				VARCHAR(15) NOT NULL,
Zip					VARCHAR(5)	NOT NULL,
Phone				VARCHAR(15)	NOT NULL,
Relationship		VARCHAR(20)	NOT NULL
PRIMARY KEY(Student_Number)
)

-- STUDENT TABLE --
CREATE TABLE Student(
Matriculation_Num	INT			NOT NULL,
Name				VARCHAR(15)	NOT NULL,
[Address]			VARCHAR(20)	NOT NULL,
DOB					datetime	NOT NULL,
Sex					CHAR		NOT NULL,
Financial_Loan		INT,
Computer_ID			INT,
Course				VARCHAR(10),
PRIMARY KEY(Matriculation_Num),
FOREIGN KEY(Name)	REFERENCES Student_Name,
FOREIGN KEY([Address]) REFERENCES Student_Address,
FOREIGN KEY(Course) REFERENCES Course,
FOREIGN KEY(Matriculation_Num) REFERENCES NextOfKin
)
