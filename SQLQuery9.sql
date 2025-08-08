
CREATE TABLE Departments (
    DeptID INT,
    DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    DeptID INT
);

INSERT INTO Departments VALUES
(1, 'HR'), (2, 'IT'), (3, 'Finance');

INSERT INTO Employees VALUES
(1, 'Anna', 1), (2, 'Brian', 2);

select d.DeptID, d.DeptName from Departments d
left join Employees e on d.DeptID = e.DeptID
where e.EmpID IS NULL;
