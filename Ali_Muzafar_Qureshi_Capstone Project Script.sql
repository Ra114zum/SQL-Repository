DROP TABLE IF EXISTS departments,employee;

##I use the Term Emp before Names and Rnak to avoid any confusion in the code as this is being written in MySQL

CREATE TABLE employee(EmployeeID INT NOT NULL,
	Emp_Names VARCHAR(15),
    Emp_Rank INT,
    Phone VARCHAR(12),
    Salary INT,
    ManagerID VARCHAR(15),
    DeptID INT,
    PRIMARY KEY(EmployeeID));

INSERT INTO employee
VALUES(1,'Sir Zeeshan',5,'0333-1234567',50000,'None',4);

INSERT INTO employee
VALUES(2,'Sir Shiraz',4,'0333-1234567',40000,'Sir Zeeshan',3);

INSERT INTO employee
VALUES(3,'Sir Hamza',4,'0333-1005377',40000,'Sir Zeeshan',2);

INSERT INTO employee
VALUES(4,'Miss Hafsa',4,'0333-1500311',40000,'Sir Zeeshan',1);

INSERT INTO employee
VALUES(5,'Ahmed',3,'0333-1456780',30000,'Sir Hamza',2);

INSERT INTO employee
VALUES(6,'Asim',3,'0333-1212121',30000,'Miss Hafsa',1);

INSERT INTO employee
VALUES(7,'Student Ali',2,'0323-4144655',20000,'Sir Shiraz',3);

## These are the Employees Added with 7 employees Including 1 Main Manager and 3 Sub Managers
    
CREATE TABLE departments(DeptID INT NOT NULL,
	DeptName VARCHAR(10),
    PRIMARY KEY(DeptID));

INSERT INTO departments
VALUES(1,'Marketing');

INSERT INTO departments
VALUES(2,'IT');

INSERT INTO departments
VALUES(3,'Finance');

INSERT INTO departments
VALUES(4,'Management');

## These ABOVE are all the Departments Added 4 in total with each unique ID



SELECT employee.Emp_Names,departments.DeptName

FROM employee
LEFT JOIN departments

ON employee.DeptID=departments.DeptID;

##The above query returns all the Employee Names joined with Department Name

SELECT employee.Emp_Names,departments.DeptID,departments.DeptName,employee.ManagerID

FROM employee
JOIN departments

ON employee.DeptID=departments.DeptID;

##Here ABOVE the Query returns Employee Names along with their department ID and Name, along with the Name of the Manager

UPDATE departments

SET departments.DeptName = 'Fin & Acc'

WHERE departments.DeptID = 3; 

## I updated the Finance Deopartment Name to Fin & Acc as the other Finance and Accounting Name was too long

DELETE FROM employee

WHERE EmployeeID=7;

## I had to use the employeeid since MySQL doesnt allow updates without Key Columns mentioned


SELECT departments.DeptName,SUM(Salary) AS 'Total_Salary'

FROM employee
JOIN departments

ON employee.DeptID=departments.DeptID

GROUP BY DeptName;


## This Query returns the sum of all the salary in a certain department


## Thanks Sir Talha and Sir Zeeshan for the Amazing journey and I hope you find the Script up to your Expectations