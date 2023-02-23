

ALTER TABLE [dbo].[ApplicationUserPreferences] DROP CONSTRAINT [FK_ApplicationUserPreferences_Users_UserId]
go
ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId]
go
ALTER TABLE [dbo].[CustomerBranchUsers] DROP CONSTRAINT [FK_CustomerBranchUsers_Users_UserId]
go
ALTER TABLE [dbo].[EmailRequests] DROP CONSTRAINT [FK_EmailRequests_Users_UserId]
go
ALTER TABLE [dbo].[POACK_Header_Enrich] DROP CONSTRAINT [FK_POACK_Header_Enrich_Users_AssignedToId]
go
ALTER TABLE [dbo].[PurchaseOrderColumns] DROP CONSTRAINT [FK_PurchaseOrderColumns_Users_UserId]
go
ALTER TABLE [dbo].[UserApplicationEvents] DROP CONSTRAINT [FK_UserApplicationEvents_Users_UserId]
go
ALTER TABLE [dbo].[UserJobs] DROP CONSTRAINT [FK_UserJobs_Users_UserId]
go
ALTER TABLE [dbo].[UserPoRanges] DROP CONSTRAINT [FK_UserPoRanges_Users_UserId1]
go
ALTER TABLE [dbo].[UserPreferences] DROP CONSTRAINT [FK_UserPreferences_Users_UserId]
go
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserRoles_Users_UserId]
go
ALTER TABLE [dbo].[UserSuppliers] DROP CONSTRAINT [FK_UserSuppliers_Users_UserId]
go
ALTER TABLE [dbo].[UserUserGroups] DROP CONSTRAINT [FK_UserUserGroups_Users_UserId]
go

CREATE TABLE [dbo].[Users_F6FBBC3BB17E49C78B86F2C2AA8FCC31]
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
SET IDENTITY_INSERT [dbo].[Users_F6FBBC3BB17E49C78B86F2C2AA8FCC31] ON
go
INSERT INTO [dbo].[Users_F6FBBC3BB17E49C78B86F2C2AA8FCC31] ([Id], [FirstName], [LastName], [Username], [PasswordHash], [PasswordSalt], [CustomerOrganizationId], [AllBranches], [Cellphone], [CreatedOn], [Email], [IsEnabled], [LastLogin], [UpdatedOn], [IsDeleted], [CreatedBy], [UpdatedBy], [AllJobs], [AllSuppliers], [Notes], [DisableAllEventNotifications]) SELECT [Id], [FirstName], [LastName], [Username], [PasswordHash], [PasswordSalt], [CustomerOrganizationId], [AllBranches], [Cellphone], [CreatedOn], [Email], [IsEnabled], [LastLogin], [UpdatedOn], [IsDeleted], [CreatedBy], [UpdatedBy], [AllJobs], [AllSuppliers], [Notes], [DisableAllEventNotifications] FROM [dbo].[Users]
go
SET IDENTITY_INSERT [dbo].[Users_F6FBBC3BB17E49C78B86F2C2AA8FCC31] OFF
go



DROP TABLE [dbo].[Users]
go
EXEC sp_rename '[dbo].[Users_F6FBBC3BB17E49C78B86F2C2AA8FCC31]', 'Users', 'OBJECT'
go


ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[Users] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Users] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[ApplicationUserPreferences] ADD CONSTRAINT [FK_ApplicationUserPreferences_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId] FOREIGN KEY ([ContactPersonId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [dbo].[CustomerBranchUsers] ADD CONSTRAINT [FK_CustomerBranchUsers_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[EmailRequests] ADD CONSTRAINT [FK_EmailRequests_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[POACK_Header_Enrich] ADD CONSTRAINT [FK_POACK_Header_Enrich_Users_AssignedToId] FOREIGN KEY ([AssignedToId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[PurchaseOrderColumns] ADD CONSTRAINT [FK_PurchaseOrderColumns_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[UserApplicationEvents] ADD CONSTRAINT [FK_UserApplicationEvents_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[UserJobs] ADD CONSTRAINT [FK_UserJobs_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[UserPoRanges] ADD CONSTRAINT [FK_UserPoRanges_Users_UserId1] FOREIGN KEY ([UserId1]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[UserPreferences] ADD CONSTRAINT [FK_UserPreferences_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[UserRoles] ADD CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[UserSuppliers] ADD CONSTRAINT [FK_UserSuppliers_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[UserUserGroups] ADD CONSTRAINT [FK_UserUserGroups_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go
