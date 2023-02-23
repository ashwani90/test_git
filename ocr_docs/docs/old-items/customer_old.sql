

ALTER TABLE [dbo].[Invoice_Attachments] DROP CONSTRAINT [FK_Invoice_Attachments_Invoice_Header_Enrich_InvoiceId]
go

CREATE TABLE [dbo].[Invoice_Attachments_8B4ED73863BC4139B97FEA9FDC82B25E]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [InvoiceId] Int NOT NULL,
 [File_Name] Nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [CreatedBy] Int NOT NULL,
 [CreatedOn] Datetime2(7) NOT NULL,
 [UpdatedBy] Int NOT NULL,
 [UpdatedOn] Datetime2(7) NOT NULL
)
ON [Invoice_Attachment_Data]
go
SET IDENTITY_INSERT [dbo].[Invoice_Attachments_8B4ED73863BC4139B97FEA9FDC82B25E] ON
go
INSERT INTO [dbo].[Invoice_Attachments_8B4ED73863BC4139B97FEA9FDC82B25E] ([Id], [InvoiceId], [File_Name], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) SELECT [Id], [InvoiceId], [File_Name], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn] FROM [dbo].[Invoice_Attachments]
go
SET IDENTITY_INSERT [dbo].[Invoice_Attachments_8B4ED73863BC4139B97FEA9FDC82B25E] OFF
go



ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_CustomerOrganizations_CustomerOrganizationId]
go

CREATE TABLE [dbo].[CustomerOrganizations_8D34A676CD6E4859947365A628788333]
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
INSERT INTO [dbo].[CustomerOrganizations_8D34A676CD6E4859947365A628788333] ([Id], [Name], [IsEnabled], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted], [IsPIEnabled], [IsPOEnabled], [ContactPersonId], [GSID], [Address], [Address2], [City], [Logo], [Notes], [PostalCode], [State], [LastBatchNumber]) SELECT [Id], [Name], [IsEnabled], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted], [IsPIEnabled], [IsPOEnabled], [ContactPersonId], [GSID], [Address], [Address2], [City], [Logo], [Notes], [PostalCode], [State], [LastBatchNumber] FROM [dbo].[CustomerOrganizations]
go



ALTER TABLE [dbo].[BranchAccountingSettings] DROP CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId]
go
ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Applications_Id]
go
ALTER TABLE [dbo].[CustomerBranches] DROP CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId]
go

CREATE TABLE [dbo].[CustomerBranches_4D8AEBC64875438489E2B53872B226AD]
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
INSERT INTO [dbo].[CustomerBranches_4D8AEBC64875438489E2B53872B226AD] ([ClientId], [ClientName], [CustomerOrganizationId], [IsEnabled], [CreatedOn], [UpdatedOn], [TenantAlias], [Address1], [Address2], [City], [CreatedBy], [IsDeleted], [Phone], [State], [UpdatedBy], [ZipCode], [CompanyCode], [HeaderApCostCenter], [ContactPersonId], [GSID], [Notes], [ApplicationId], [CustomerBranchId], [CompanyId]) SELECT [ClientId], [ClientName], [CustomerOrganizationId], [IsEnabled], [CreatedOn], [UpdatedOn], [TenantAlias], [Address1], [Address2], [City], [CreatedBy], [IsDeleted], [Phone], [State], [UpdatedBy], [ZipCode], [CompanyCode], [HeaderApCostCenter], [ContactPersonId], [GSID], [Notes], [ApplicationId], [CustomerBranchId], [CompanyId] FROM [dbo].[CustomerBranches]
go



DROP TABLE [dbo].[CustomerBranches]
go
EXEC sp_rename '[dbo].[CustomerBranches_4D8AEBC64875438489E2B53872B226AD]', 'CustomerBranches', 'OBJECT'
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [PK_CustomerBranches] PRIMARY KEY ([ClientId])
 ON [Lookup_Data]
go


DROP TABLE [dbo].[CustomerOrganizations]
go
EXEC sp_rename '[dbo].[CustomerOrganizations_8D34A676CD6E4859947365A628788333]', 'CustomerOrganizations', 'OBJECT'
go


ALTER TABLE [dbo].[CustomerOrganizations] ADD CHECK ([LastBatchNumber]>=(0) AND [LastBatchNumber]<=(9999))
go

ALTER TABLE [dbo].[CustomerOrganizations] ADD CONSTRAINT [PK_CustomerOrganizations] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go


DROP TABLE [dbo].[Invoice_Attachments]
go
EXEC sp_rename '[dbo].[Invoice_Attachments_8B4ED73863BC4139B97FEA9FDC82B25E]', 'Invoice_Attachments', 'OBJECT'
go


ALTER TABLE [dbo].[Invoice_Attachments] ADD CONSTRAINT [DF_Invoice_Attachments_CreatedOn] DEFAULT (getdate()) FOR [CreatedOn]
go
ALTER TABLE [dbo].[Invoice_Attachments] ADD CONSTRAINT [DF_Invoice_Attachments_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go

ALTER TABLE [dbo].[Invoice_Attachments] ADD CONSTRAINT [PK_Invoice_Attachments] PRIMARY KEY ([Id])
 ON [Invoice_Attachment_Data]
go

GRANT INSERT ON [dbo].[Invoice_Attachments] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Invoice_Attachments] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[BranchAccountingSettings] ADD CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId] FOREIGN KEY ([CustomerBranchId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Applications_Id] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Applications] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_CustomerOrganizations_CustomerOrganizationId] FOREIGN KEY ([CustomerOrganizationId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[CustomerBranches] ADD CONSTRAINT [FK_CustomerBranches_Users_ContactPersonId] FOREIGN KEY ([ContactPersonId]) REFERENCES [dbo].[Users] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[Invoice_Attachments] ADD CONSTRAINT [FK_Invoice_Attachments_Invoice_Header_Enrich_InvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice_Header_Enrich] ([ID]) ON UPDATE NO ACTION ON DELETE CASCADE
go


CREATE INDEX [IX_InvoiceAttachments_InvoiceID] ON [dbo].[Invoice_Attachments] ([InvoiceId])
 ON [Invoice_Attachment_index]
go

CREATE INDEX [IX_Customer_Branches_OrgId_IsEnabled_IsDeleted] ON [dbo].[CustomerBranches] ([CustomerOrganizationId],[IsEnabled],[IsDeleted])
 INCLUDE ([ClientId],[ClientName],[CompanyCode],[GSID])
 ON [Lookup_Index]
go


CREATE INDEX [IX_CustomerOrganizations_GSID] ON [dbo].[CustomerOrganizations] ([GSID])
 ON [Lookup_Index]
go
