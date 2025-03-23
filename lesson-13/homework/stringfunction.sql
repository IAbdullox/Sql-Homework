--lesson_13
--create database lesson_13
--use lesson_13
-- solution 1
select SUBSTRING('database', 1, 4)
--solution 2
select CHARINDEX('SQL', 'I love SQL Server')
--solution 3
select REPLACE('Hello World','World', 'Sql')
--solution 4
select LEN('Microsoft SQL Server')
--solution 5
select RIGHT('Database', 3)
--solution 6
select LEN(CONCAT('apple', 'banana', 'grape')) - LEN(REPLACE(CONCAT('apple', 'banana', 'grape'), 'a', ''))
--solution 7
select SUBSTRING('abcdefg', 6, LEN('abcdefg'))
--solution 8
SELECT VALUE FROM STRING_SPLIT('I love database', ' ')
ORDER BY (SELECT NULL)
OFFSET 1 ROW FETCH NEXT 1 ROWS ONLY 

SELECT VALUE FROM STRING_SPLIT('SQL is powerful', ' ')
ORDER BY (SELECT NULL)
OFFSET 1 ROW FETCH NEXT 1 ROWS ONLY

-- SECOND SOLUTION
select SUBSTRING('I love databases', CHARINDEX(' ', 'I love databases') + 1,
CHARINDEX(' ', 'I love databases' + ' ', CHARINDEX(' ', 'I love databases') + 1)
- CHARINDEX(' ', 'I love databases') -1) + ' ' + SUBSTRING('SQL is powerful', CHARINDEX(' ', 'SQL is powerful') + 1,
CHARINDEX(' ', 'SQL is powerful' + ' ', CHARINDEX(' ', 'SQL is powerful') + 1)
- CHARINDEX(' ', 'SQL is powerful') -1)
--soution 9
select ROUND(15.6789, 2)
--solution 10 
select ABS(-345.67)
--solution 11
select SUBSTRING('ABCDEFGHI', (LEN('ABCDEFGHI')/2), (LEN('ABCDEFGHI')/2)-1)
--solution 12
SELECT REPLACE('Microsoft', SUBSTRING('Microsoft', 1, 3), 'XXX')
--solution 13
SELECT CHARINDEX(' ', 'SQL Server 2025')
--solution 14
SELECT CONCAT('FirstName', ', ', 'LastName')
--solution 15
SELECT VALUE FROM STRING_SPLIT('The database is very efficient', ' ')
ORDER BY (SELECT NULL)
OFFSET 2 ROW FETCH NEXT 1 ROWS ONLY
--solution 16
SELECT SUBSTRING('INV1234', PATINDEX('%[0-9]%', 'INV1234'), LEN('INV1234')) AS FIRSTCOLUMN,
	   SUBSTRING('ORD5678', PATINDEX('%[0-9]%', 'ORD5678'), LEN('ORD5678')) AS SECONDCOLUMN
--solution 17
SELECT CEILING(99.5)
--solution 18
SELECT DATEDIFF(DAY, '2025-01-01', '2025-03-15')
--soulution 19
SELECT DATENAME(MONTH, '2025-06-10')
--solution 20
SELECT FLOOR(DATENAME(WEEK, '2025-04-22')/7)
--solution 21
SELECT SUBSTRING('user1@gmail.com', CHARINDEX('@', 'user1@gmail.com'), LEN('user1@gmail.com'))AS FIRSTANSWER,
	   SUBSTRING('admin@company.org', CHARINDEX('@','admin@company.org'), LEN('admin@company.org')) AS SECONDANSWER
--solution 22
SELECT LEN('experience') - CHARINDEX('e', REVERSE('experience')) + 1
--solution 23
SELECT FLOOR(RAND()*(500-100 +1)) + 100
--solution 24
SELECT FORMAT(9876543, 'N0') AS FormattedNumber;
--solution 25
CREATE TABLE Customers (FullName VARCHAR(100)); INSERT INTO Customers VALUES ('John Doe'), ('Jane Smith')
SELECT 
    FullName,
    LEFT(FullName, CHARINDEX(' ', FullName + ' ') - 1) AS FirstName
FROM Customers;
--solution 26
SELECT REPLACE('SQL Server is great', ' ', '-')
--solution 27
SELECT FORMAT(42,'00000') 
--solution 28
SELECT MAX(LEN(VALUE)) FROM STRING_SPLIT('SQL is fast and efficient', ' ')
--solution 29
SELECT STUFF('Error: Connection failed', 1, CHARINDEX(' ', 'Error: Connection failed'), '') AS Result;
--solution 30
SELECT DATEDIFF(MINUTE, '08:15:00', '09:45:00') AS MinutesDifference;
