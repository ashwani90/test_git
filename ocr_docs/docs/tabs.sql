

ALTER TABLE [dbo].[Tab_Invoices] DROP CONSTRAINT [FK_Tab_Invoices_Tabs_TabId]
go
ALTER TABLE [dbo].[Tabs] DROP CONSTRAINT [FK_Tabs_CustomerOrganizations]
go

CREATE TABLE [dbo].[Tabs_18985B51C7DA4C708C43CFD55DBFE003]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [CoId] Uniqueidentifier NULL,
 [Name] Nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [CreatedBy] Int NULL,
 [CreatedOn] Datetime2(7) NOT NULL,
 [UpdatedBy] Int NULL,
 [UpdatedOn] Datetime2(7) NOT NULL
)
ON [Lookup_Data]
go
SET IDENTITY_INSERT [dbo].[Tabs_18985B51C7DA4C708C43CFD55DBFE003] ON
go
INSERT INTO [dbo].[Tabs_18985B51C7DA4C708C43CFD55DBFE003] ([Id], [CoId], [Name], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) SELECT [Id], [CoId], [Name], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn] FROM [dbo].[Tabs]
go
SET IDENTITY_INSERT [dbo].[Tabs_18985B51C7DA4C708C43CFD55DBFE003] OFF
go



ALTER TABLE [dbo].[Tab_Invoices] DROP CONSTRAINT [FK_Tab_Invoices_Invoice_Header_Enrich_InvoiceId]
go

CREATE TABLE [dbo].[Tab_Invoices_48F6EA62FEC74CB4B0AEFBFB41A1E74C]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [TabId] Int NOT NULL,
 [InvoiceId] Int NOT NULL,
 [CreatedBy] Int NULL,
 [CreatedOn] Datetime2(7) NOT NULL,
 [UpdatedBy] Int NULL,
 [UpdatedOn] Datetime2(7) NOT NULL
)
ON [Tab_Invoices_Data]
go
SET IDENTITY_INSERT [dbo].[Tab_Invoices_48F6EA62FEC74CB4B0AEFBFB41A1E74C] ON
go
INSERT INTO [dbo].[Tab_Invoices_48F6EA62FEC74CB4B0AEFBFB41A1E74C] ([Id], [TabId], [InvoiceId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) SELECT [Id], [TabId], [InvoiceId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn] FROM [dbo].[Tab_Invoices]
go
SET IDENTITY_INSERT [dbo].[Tab_Invoices_48F6EA62FEC74CB4B0AEFBFB41A1E74C] OFF
go



DROP TABLE [dbo].[Tab_Invoices]
go
EXEC sp_rename '[dbo].[Tab_Invoices_48F6EA62FEC74CB4B0AEFBFB41A1E74C]', 'Tab_Invoices', 'OBJECT'
go


ALTER TABLE [dbo].[Tab_Invoices] ADD CONSTRAINT [DF_Tab_Invoices_CreatedOn] DEFAULT (getdate()) FOR [CreatedOn]
go
ALTER TABLE [dbo].[Tab_Invoices] ADD CONSTRAINT [DF_Tab_Invoices_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go

ALTER TABLE [dbo].[Tab_Invoices] ADD CONSTRAINT [PK_TabInvoices] PRIMARY KEY ([Id])
 ON [Tab_Invoices_Data]
go

GRANT INSERT ON [dbo].[Tab_Invoices] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Tab_Invoices] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[Tabs]
go
EXEC sp_rename '[dbo].[Tabs_18985B51C7DA4C708C43CFD55DBFE003]', 'Tabs', 'OBJECT'
go


ALTER TABLE [dbo].[Tabs] ADD CONSTRAINT [DF_Tabs_CreatedOn] DEFAULT (getdate()) FOR [CreatedOn]
go
ALTER TABLE [dbo].[Tabs] ADD CONSTRAINT [DF_Tabs_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go

ALTER TABLE [dbo].[Tabs] ADD CONSTRAINT [PK_Tabs] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[Tabs] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Tabs] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[Tab_Invoices] ADD CONSTRAINT [FK_Tab_Invoices_Invoice_Header_Enrich_InvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice_Header_Enrich] ([ID]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[Tab_Invoices] ADD CONSTRAINT [FK_Tab_Invoices_Tabs_TabId] FOREIGN KEY ([TabId]) REFERENCES [dbo].[Tabs] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[Tabs] ADD CONSTRAINT [FK_Tabs_CustomerOrganizations] FOREIGN KEY ([CoId]) REFERENCES [dbo].[CustomerOrganizations] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go

CREATE INDEX [IX_Tab_Invoices_InvoiceId] ON [dbo].[Tab_Invoices] ([InvoiceId] DESC)
 INCLUDE ([Id],[TabId])
 ON [Tab_Invoices_Index]
go

CREATE INDEX [IX_Tab_Invoices_TabId] ON [dbo].[Tab_Invoices] ([TabId])
 WHERE ([TabId] IS NULL)
 ON [Tab_Invoices_Index]
go


CREATE INDEX [IX_Tabs_Coid] ON [dbo].[Tabs] ([CoId])
 ON [Lookup_Index]
go
