CREATE TABLE [dbo].[Department] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Code]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (100) NULL,
    [Name]        VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_DepartmentCode]
    ON [dbo].[Department]([Code] ASC) WITH (ALLOW_PAGE_LOCKS = OFF, ALLOW_ROW_LOCKS = OFF);

