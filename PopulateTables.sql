INSERT INTO Department (Name, Phone_Number, Fax_Number, Location) VALUES
('CIS','605 392 3800','605 833 2901','Mclaury'),
('Math','605 392 3802','605 833 2903','Mclaury'),
('ME','605 392 3802','605 833 2903','Mechanical');

INSERT INTO Academic_Staff VALUES
('1','20120618 10:34:09 AM', (SELECT Name FROM Department WHERE Name='CIS'), 3, '1', 'Larry', 'Pyeatt', 215,'215','M',20,'associate professor','PhD','123 street','Rapid City','57701'),
('2','20120618 10:34:01 AM', (SELECT Name FROM Department WHERE Name='Math'), 8,'2','Roger','Schrader',214,'214','M',21,'lecturer','MS','124 street','Rapid City','57701'),
('3','20120618 10:34:02 AM', (SELECT Name FROM Department WHERE Name='CIS'), 6,'3','Mengyu','Qiao',213,'213','M',99,'assistant professor','PhD','125 street','Rapid City','57701'),
('4','20120618 10:34:03 AM', (SELECT Name FROM Department WHERE Name='Math'), 4,'4','Paul','Hinker',212,'212','M',23,'assistant professor','PhD','126 street','Rapid City','57701'),
('5','20120618 10:34:04 AM', (SELECT Name FROM Department WHERE Name='Math'), 5,'1','Antonette','Logar',211,'211','F',22,'department head','PhD','123 street','Rapid City','57701'),
('6','20120618 10:34:05 AM', (SELECT Name FROM Department WHERE Name='Math'), 9,'6','Reta','Davies',210,'210','F',23,'Senior lecturer','PhD','123 street','Rapid City','57701'),
('7','20120618 10:34:06 AM', (SELECT Name FROM Department WHERE Name='CIS'), 7,'7','Kyle','Riley',216,'216','M',26,'department head','PhD','123 street','Rapid City','57701');

INSERT INTO Course VALUES
('CSC 110','Intro to CSC', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Reta' AND Last_Name='Davies')),
('CSC 150','Computer Science 1', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Kyle' AND Last_Name='Riley')),
('CSC 250','Computer Science 2', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Roger' AND Last_Name='Schrader')),
('CSC 300','Data Structures', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Paul' AND Last_Name='Hinker')),
('CSC 314','Assembly', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Larry' AND Last_Name='Pyeatt')),
('CSC 372','Analysis of Algorithms', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Antonette' AND Last_Name='Logar')),
('CSC 470','Software Engineering', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Paul' AND Last_Name='Hinker')),
('CSC 484','DBMS', 1, (SELECT Staff_Number FROM Academic_Staff WHERE First_Name='Mengyu' AND Last_Name='Qiao'));

INSERT INTO Student_Name VALUES
('Billy','Bob'),
('William','Johnson'),
('Tod','Ferguson'),
('Tyrell','Jones'),
('Sally','Rain'),
('Daniel','Hamburger'),
('Karen','Bower'),
('Jacob','Ty'),
('Brandon','Bob'),
('John','Johnson'),
('Ted','Ferguson'),
('Timmy','Jones');

INSERT INTO Student_Address VALUES
('abc street','Rapid City','57701'),
('def street','Houston','82314'),
('ghi street','Dallas','89234'),
('jkl street','Kadoka','51234'),
('mno street','Wall','57123'),
('pqr street','Murdo','57832'),
('stu street','Rapid City','57701'),
('vwx street','Away','99999'),
('no street','Rapid City','57701'),
('yes street','Houston','82314'),
('maybe street','Dallas','89234'),
('ok street','Kadoka','51234');

INSERT INTO NextOfKin VALUES
('1234567','Bob','Billie','new street','town 1','12345',	'111 555 1111','Sister'),
('2345678','Bob','Billie','new street','town 2','23424',	'222 555 2222','Brother'),
('3456789','Luther','Gullie','new street','town 3','34153',	'333 555 3333','Brother'),
('4567890','Brother','Bobby','new street','town 4','41335',	'444 555 4444','Cousin'),
('5678901','Jeni','Hamburger','new street','town 1','12345','111 555 5555','Sister'),
('6789012','Jonny','Boy','new street','town 4','41335',		'444 555 6666','Brother'),
('7890123','Isaac','Newton','new street','town 2','23424',	'222 555 7777','Father'),
('8901234','Connie','Brown','new street','town 1','12345',	'111 555 8888','Mother'),
('1234567','Bob','Billie','new street','town 1','12345',	'111 555 1111','Sister'),
('2345678','Bob','Billie','new street','town 2','23424',	'222 555 2222','Brother'),
('3456789','Luther','Gullie','new street','town 3','34153',	'333 555 3333','Brother'),
('4567890','Brother','Bobby','new street','town 4','41335',	'444 555 4444','Cousin');

INSERT INTO Student VALUES
(1234567,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Billy' AND Last_Name = 'Bob'),		(SELECT Street FROM Student_Address WHERE Street = 'abc street' AND Town = 'Rapid City' AND Zip = '57701'),'19930618 10:34:00 AM','F',10000,1234567, 'CSC 110'),
(2345678,(SELECT First_Name FROM Student_Name WHERE First_Name = 'William' AND Last_Name = 'Johnson'),	(SELECT Street FROM Student_Address WHERE Street = 'def street' AND Town = 'Houston' AND Zip = '82314'),	'19930218 10:32:00 AM','M',10000,2345678, 'CSC 110'),
(3456789,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Tod' AND Last_Name = 'Ferguson'),		(SELECT Street FROM Student_Address WHERE Street = 'ghi street' AND Town = 'Dallas' AND Zip = '89234'),		'19930318 10:33:00 AM','M',40000,3456789, 'CSC 110'),
(4567890,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Tyrell' AND Last_Name = 'Jones'),		(SELECT Street FROM Student_Address WHERE Street = 'jkl street' AND Town = 'Kadoka' AND Zip = '51234'),		'19930418 10:34:00 AM','M',35000,4567890, 'CSC 110'),
(5678901,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Sally' AND Last_Name = 'Rain'),		(SELECT Street FROM Student_Address WHERE Street = 'mno street' AND Town = 'Wall' AND Zip = '57123'),		'19930518 10:34:00 AM','F',45000,5678901, 'CSC 110'),
(6789012,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Daniel' AND Last_Name = 'Hamburger'),	(SELECT Street FROM Student_Address WHERE Street = 'pqr street' AND Town = 'Murdo' AND Zip = '57832'),		'19930618 10:36:00 AM','M',40000,6789012, 'CSC 110'),
(7890123,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Karen' AND Last_Name = 'Bower'),		(SELECT Street FROM Student_Address WHERE Street = 'stu street' AND Town = 'Rapid City' AND Zip = '57701'),	'19930718 10:37:00 AM','F',30000,7890123, 'CSC 110'),
(8901234,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Jacob' AND Last_Name = 'Ty'),			(SELECT Street FROM Student_Address WHERE Street = 'vwx street' AND Town = 'Away' AND Zip = '99999'),		'19930818 10:38:00 AM','M',20000,8901234, 'CSC 110'),
(9999999,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Brandon' AND Last_Name = 'Bob'),		(SELECT Street FROM Student_Address WHERE Street = 'no street' AND Town = 'Rapid City' AND Zip = '57701'),'19930618 10:34:00 AM','F',10000,1234567, 'CSC 110'),
(8888888,(SELECT First_Name FROM Student_Name WHERE First_Name = 'John' AND Last_Name = 'Johnson'),	(SELECT Street FROM Student_Address WHERE Street = 'yes street' AND Town = 'Houston' AND Zip = '82314'),	'19930218 10:32:00 AM','M',10000,2345678, 'CSC 110'),
(7777777,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Ted' AND Last_Name = 'Ferguson'),		(SELECT Street FROM Student_Address WHERE Street = 'maybe street' AND Town = 'Dallas' AND Zip = '89234'),		'19930318 10:33:00 AM','M',40000,3456789, 'CSC 110'),
(6666666,(SELECT First_Name FROM Student_Name WHERE First_Name = 'Timmy' AND Last_Name = 'Jones'),		(SELECT Street FROM Student_Address WHERE Street = 'ok street' AND Town = 'Kadoka' AND Zip = '51234'),		'19930418 10:34:00 AM','M',35000,4567890, 'CSC 110');

INSERT INTO Books VALUES
('mod 11 book'),
('mod 12 book'),
('mod 13 book'),
('mod 14 book'),
('mod 15 book'),
('mod 16 book'),
('mod 17 book'),
('mod 18 book');

INSERT INTO Module VALUES
('11','mod 11','20170112 08:00:00 AM','20170508 08:00:00 AM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 11 book'),70,'P'),
('12','mod 12','20170112 09:00:00 AM','20170508 09:00:00 AM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 12 book'),70,'P'),
('13','mod 13','20170112 10:00:00 AM','20170508 10:00:00 AM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 13 book'),70,'P'),
('14','mod 14','20170112 11:00:00 AM','20170508 11:00:00 AM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 14 book'),70,'P'),
('15','mod 15','20170112 12:00:00 PM','20170508 12:00:00 PM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 15 book'),70,'P'),
('16','mod 16','20170112 01:00:00 PM','20170508 01:00:00 PM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 16 book'),70,'P'),
('17','mod 17','20170112 02:00:00 PM','20170508 02:00:00 PM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 17 book'),70,'P'),
('18','mod 18','20170112 03:00:00 PM','20170508 03:00:00 PM',(SELECT Book_Name FROM Books WHERE Book_Name = 'mod 18 book'),70,'P');

