

ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId]
go

CREATE TABLE [dbo].[Users_E4800A6674014F4A80C438F90A803AD1]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [FirstName] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [LastName] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Username] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [PasswordHash] Varbinary(max) NULL,
 [PasswordSalt] Varbinary(max) NULL,
 [CustomerOrganizationId] Uniqueidentifier DEFAULT ('00000000-0000-0000-0000-000000000000') NOT NULL,
 [AllBranches] Bit DEFAULT ((0)) NOT NULL,
 [Cellphone] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [CreatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [Email] Nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [IsEnabled] Bit DEFAULT ((1)) NOT NULL,
 [LastLogin] Datetime2(7) DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
 [UpdatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [IsDeleted] Bit DEFAULT ((0)) NOT NULL,
 [CreatedBy] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'system') NOT NULL,
 [UpdatedBy] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'system') NOT NULL,
 [AllJobs] Bit DEFAULT ((0)) NOT NULL,
 [AllSuppliers] Bit DEFAULT ((0)) NOT NULL,
 [Notes] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [DisableAllEventNotifications] Bit DEFAULT ((0)) NOT NULL
)
ON [Lookup_Data]
TEXTIMAGE_ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[Users_E4800A6674014F4A80C438F90A803AD1] ON
go
INSERT INTO [dbo].[Users_E4800A6674014F4A80C438F90A803AD1] ([Id], [FirstName], [LastName], [Username], [PasswordHash], [PasswordSalt], [CustomerOrganizationId], [AllBranches], [Cellphone], [CreatedOn], [Email], [IsEnabled], [LastLogin], [UpdatedOn], [IsDeleted], [CreatedBy], [UpdatedBy], [AllJobs], [AllSuppliers], [Notes], [DisableAllEventNotifications]) SELECT [Id], [FirstName], [LastName], [Username], [PasswordHash], [PasswordSalt], [CustomerOrganizationId], [AllBranches], [Cellphone], [CreatedOn], [Email], [IsEnabled], [LastLogin], [UpdatedOn], [IsDeleted], [CreatedBy], [UpdatedBy], [AllJobs], [AllSuppliers], [Notes], [DisableAllEventNotifications] FROM [dbo].[Users]
go
SET IDENTITY_INSERT [dbo].[Users_E4800A6674014F4A80C438F90A803AD1] OFF
go




CREATE TABLE [dbo].[Tags_49D3561196444590B334242457160E63]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Text] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [CustomerOrganizationId] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [TagColor] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [Lookup_Data]
go
SET IDENTITY_INSERT [dbo].[Tags_49D3561196444590B334242457160E63] ON
go
INSERT INTO [dbo].[Tags_49D3561196444590B334242457160E63] ([ID], [Text], [CustomerOrganizationId], [TagColor]) SELECT [ID], [Text], [CustomerOrganizationId], [TagColor] FROM [dbo].[Tags]
go
SET IDENTITY_INSERT [dbo].[Tags_49D3561196444590B334242457160E63] OFF
go



DROP TABLE [dbo].[Tags]
go
EXEC sp_rename '[dbo].[Tags_49D3561196444590B334242457160E63]', 'Tags', 'OBJECT'
go


ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [PK_Tags] PRIMARY KEY ([ID])
 ON [Lookup_Data]
go

ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [UK_Tags_Text_Customer_Organization_ID] UNIQUE ([Text],[CustomerOrganizationId])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[Tags] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Tags] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[Users]
go
EXEC sp_rename '[dbo].[Users_E4800A6674014F4A80C438F90A803AD1]', 'Users', 'OBJECT'
go


ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go

ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId] FOREIGN KEY ([ContactPersonId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


CREATE INDEX [IX_Users_CustomerOrganizationId] ON [dbo].[Users] ([CustomerOrganizationId])
 ON [Lookup_Index]
go

CREATE UNIQUE INDEX [IX_Users_Username] ON [dbo].[Users] ([Username])
 ON [Lookup_Index]
go


CREATE INDEX [IX_Tags_Customer_Organization_ID] ON [dbo].[Tags] ([CustomerOrganizationId])
 ON [Lookup_Index]
go
