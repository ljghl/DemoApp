CREATE TABLE [dbo].[Employee] (
    [Id]           INT           NOT NULL,
    [FirstName]    VARCHAR (100) NOT NULL,
    [MiddleName]   VARCHAR (100) NULL,
    [LastName]     VARCHAR (100) NOT NULL,
    [Address]      VARCHAR (200) NULL,
    [DepartmentId] INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeCode] VARCHAR (50)  NULL,
    [Age]          INT           NULL,
    CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Employee]
    ON [dbo].[Employee]([EmployeeCode] ASC);

