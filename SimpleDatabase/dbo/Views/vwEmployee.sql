CREATE VIEW vwEmployee
AS
SELECT e.Id,
       e.FirstName,
       e.MiddleName,
       e.LastName,
       e.Address,
       e.DepartmentId,
       e.EmployeeCode,
       e.Age
FROM dbo.Employee e;