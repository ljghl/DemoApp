
CREATE VIEW [dbo].[vwEmployee]
AS
SELECT e.FirstName,
       e.MiddleName,
       e.LastName,
       e.Address,
       e.EmployeeCode,
       e.Age,
       d.Name AS Department
FROM dbo.Employee e
    LEFT JOIN dbo.Department d
        ON d.Id = e.DepartmentId;