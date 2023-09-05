-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetEmployeebyCode]
    -- Add the parameters for the stored procedure here
    @employeecode VARCHAR(50)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT e.Id,
           e.FirstName,
           e.MiddleName,
           e.LastName,
           e.[Address],
           e.EmployeeCode,
           d.Code AS DepartmentCode,
           d.[Name] AS DepartmentName
    FROM dbo.Employee e
        LEFT JOIN dbo.Department d
            ON d.Id = e.DepartmentId
    WHERE e.EmployeeCode = @employeecode;
END;
