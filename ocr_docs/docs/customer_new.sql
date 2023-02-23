

ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_CustomerOrganizations_CustomerOrganizationId]
go
ALTER TABLE [dbo].[CustomerOrganizationApplications] DROP CONSTRAINT [FK_CustomerOrganizationApplications_CustomerOrganizations_CustomerOrganizationId]
go
ALTER TABLE [dbo].[CustomerOrganizationEvent] DROP CONSTRAINT [FK_CustomerOrganizationEvent_CustomerOrganizations_CustomerOrganizationId]
go
ALTER TABLE [dbo].[Tabs] DROP CONSTRAINT [FK_Tabs_CustomerOrganizations]
go

CREATE TABLE [dbo].[CustomerOrganizations_02E8FE2D28DF44C8843F89D5F3E30B9A]
(
 [Id] Uniqueidentifier NOT NULL,
 [Name] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [IsEnabled] Bit NOT NULL,
 [CreatedBy] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [CreatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [UpdatedBy] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [UpdatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [IsDeleted] Bit DEFAULT ((0)) NOT NULL,
 [IsPIEnabled] Bit DEFAULT ((0)) NOT NULL,
 [IsPOEnabled] Bit DEFAULT ((0)) NOT NULL,
 [ContactPersonId] Int NULL,
 [GSID] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Address] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Address2] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [City] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Logo] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Notes] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PostalCode] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [State] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LastBatchNumber] Int DEFAULT ((0)) NULL
)
ON [Lookup_Data]
TEXTIMAGE_ON [PRIMARY]
go
INSERT INTO [dbo].[CustomerOrganizations_02E8FE2D28DF44C8843F89D5F3E30B9A] ([Id], [Name], [IsEnabled], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted], [IsPIEnabled], [IsPOEnabled], [ContactPersonId], [GSID], [Address], [Address2], [City], [Logo], [Notes], [PostalCode], [State], [LastBatchNumber]) SELECT [Id], [Name], [IsEnabled], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted], [IsPIEnabled], [IsPOEnabled], [ContactPersonId], [GSID], [Address], [Address2], [City], [Logo], [Notes], [PostalCode], [State], [LastBatchNumber] FROM [dbo].[CustomerOrganizations]
go



ALTER TABLE [dbo].[BranchAccountingSettings] DROP CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId]
go
ALTER TABLE [dbo].[CustomerBranchApplications] DROP CONSTRAINT [FK_CustomerBranchApplications_CustomerBranches_CustomerBranchId]
go
ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Applications_Id]
go
ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId]
go
ALTER TABLE [dbo].[CustomerBranchPreferences] DROP CONSTRAINT [FK_CustomerBranchPreferences_CustomerBranches_CustomerBranchId]
go
ALTER TABLE [dbo].[CustomerBranchUsers] DROP CONSTRAINT [FK_CustomerBranchUsers_CustomerBranches_ClientId]
go
ALTER TABLE [dbo].[HeaderApCostCenters] DROP CONSTRAINT [FK_HeaderApCostCenters_CustomerBranches_ClientId]
go
ALTER TABLE [dbo].[POACKBatches] DROP CONSTRAINT [FK_POACKBatches_CustomerBranches_ClientId]
go

CREATE TABLE [dbo].[CustomerBranches_C303262879684648A530FAC0E2D6359E]
(
 [ClientId] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [ClientName] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [CustomerOrganizationId] Uniqueidentifier NOT NULL,
 [IsEnabled] Bit DEFAULT ((0)) NOT NULL,
 [CreatedOn] Datetime2(7) NOT NULL,
 [UpdatedOn] Datetime2(7) NOT NULL,
 [TenantAlias] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Address1] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Address2] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [City] Nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CreatedBy] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [IsDeleted] Bit DEFAULT ((0)) NOT NULL,
 [Phone] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [State] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [UpdatedBy] Nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [ZipCode] Nvarchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CompanyCode] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [HeaderApCostCenter] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NULL,
 [ContactPersonId] Int NULL,
 [GSID] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Notes] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ApplicationId] Int DEFAULT ((2)) NOT NULL,
 [CustomerBranchId] Int NULL,
 [CompanyId] Int NULL
)
ON [Lookup_Data]
TEXTIMAGE_ON [PRIMARY]
go
INSERT INTO [dbo].[CustomerBranches_C303262879684648A530FAC0E2D6359E] ([ClientId], [ClientName], [CustomerOrganizationId], [IsEnabled], [CreatedOn], [UpdatedOn], [TenantAlias], [Address1], [Address2], [City], [CreatedBy], [IsDeleted], [Phone], [State], [UpdatedBy], [ZipCode], [CompanyCode], [HeaderApCostCenter], [ContactPersonId], [GSID], [Notes], [ApplicationId], [CustomerBranchId], [CompanyId]) SELECT [ClientId], [ClientName], [CustomerOrganizationId], [IsEnabled], [CreatedOn], [UpdatedOn], [TenantAlias], [Address1], [Address2], [City], [CreatedBy], [IsDeleted], [Phone], [State], [UpdatedBy], [ZipCode], [CompanyCode], [HeaderApCostCenter], [ContactPersonId], [GSID], [Notes], [ApplicationId], [CustomerBranchId], [CompanyId] FROM [dbo].[CustomerBranches]
go



DROP TABLE [dbo].[CustomerBranches]
go
EXEC sp_rename '[dbo].[CustomerBranches_C303262879684648A530FAC0E2D6359E]', 'CustomerBranches', 'OBJECT'
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [PK_CustomerBranches] PRIMARY KEY ([ClientId])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[CustomerBranches] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[CustomerBranches] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[CustomerOrganizations]
go
EXEC sp_rename '[dbo].[CustomerOrganizations_02E8FE2D28DF44C8843F89D5F3E30B9A]', 'CustomerOrganizations', 'OBJECT'
go


ALTER TABLE [dbo].[CustomerOrganizations] ADD CHECK ([LastBatchNumber]>=(0) AND [LastBatchNumber]<=(9999))
go

ALTER TABLE [dbo].[CustomerOrganizations] ADD CONSTRAINT [PK_CustomerOrganizations] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[CustomerOrganizations] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[CustomerOrganizations] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[BranchAccountingSettings] ADD CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId] FOREIGN KEY ([CustomerBranchId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerBranchApplications] ADD CONSTRAINT [FK_CustomerBranchApplications_CustomerBranches_CustomerBranchId] FOREIGN KEY ([CustomerBranchId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Applications_Id] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Applications] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_CustomerOrganizations_CustomerOrganizationId] FOREIGN KEY ([CustomerOrganizationId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId] FOREIGN KEY ([ContactPersonId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




ALTER TABLE [dbo].[CustomerBranchPreferences] ADD CONSTRAINT [FK_CustomerBranchPreferences_CustomerBranches_CustomerBranchId] FOREIGN KEY ([CustomerBranchId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerBranchUsers] ADD CONSTRAINT [FK_CustomerBranchUsers_CustomerBranches_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[CustomerOrganizationApplications] ADD CONSTRAINT [FK_CustomerOrganizationApplications_CustomerOrganizations_CustomerOrganizationId] FOREIGN KEY ([CustomerOrganizationId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerOrganizationEvent] ADD CONSTRAINT [FK_CustomerOrganizationEvent_CustomerOrganizations_CustomerOrganizationId] FOREIGN KEY ([CustomerOrganizationId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[HeaderApCostCenters] ADD CONSTRAINT [FK_HeaderApCostCenters_CustomerBranches_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[POACKBatches] ADD CONSTRAINT [FK_POACKBatches_CustomerBranches_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[Tabs] ADD CONSTRAINT [FK_Tabs_CustomerOrganizations] FOREIGN KEY ([CoId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go
