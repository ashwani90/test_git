

ALTER TABLE [dbo].[BatchInvoices] DROP CONSTRAINT [FK_BatchInvoices_Batches_BatchId]
go
ALTER TABLE [dbo].[BatchInvoices] DROP CONSTRAINT [FK_BatchInvoices_Invoice_Header_Enrich_InvoiceId]
go

CREATE TABLE [dbo].[BatchInvoices_05D0E2A162564EA2953E9735DCF69EC4]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [BatchId] Int NOT NULL,
 [InvoiceId] Int NOT NULL,
 [IsDeleted] Bit DEFAULT ((0)) NOT NULL
)
ON [Batch_Invoices_Data]
go
SET IDENTITY_INSERT [dbo].[BatchInvoices_05D0E2A162564EA2953E9735DCF69EC4] ON
go
INSERT INTO [dbo].[BatchInvoices_05D0E2A162564EA2953E9735DCF69EC4] ([Id], [BatchId], [InvoiceId], [IsDeleted]) SELECT [Id], [BatchId], [InvoiceId], [IsDeleted] FROM [dbo].[BatchInvoices]
go
SET IDENTITY_INSERT [dbo].[BatchInvoices_05D0E2A162564EA2953E9735DCF69EC4] OFF
go


ALTER TABLE [dbo].[Batches] DROP CONSTRAINT [UQ__Batches__F869ED6D2C4C691E]
go

CREATE TABLE [dbo].[Batches_0F9DD46922574C3098632FED216BD467]
(
 [BatchId] Int IDENTITY(1,1) NOT NULL,
 [ClientId] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Status] Int DEFAULT ((0)) NULL,
 [CreatedBy] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'system') NOT NULL,
 [CreatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [UpdatedBy] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'system') NOT NULL,
 [UpdatedOn] Datetime2(7) DEFAULT (getdate()) NOT NULL,
 [BatchNumber] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [ApplicationId] Int DEFAULT ((1)) NOT NULL,
 [AccountingType] Int DEFAULT ((1)) NOT NULL
)
ON [Batch_Data]
go
SET IDENTITY_INSERT [dbo].[Batches_0F9DD46922574C3098632FED216BD467] ON
go
INSERT INTO [dbo].[Batches_0F9DD46922574C3098632FED216BD467] ([BatchId], [ClientId], [Status], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [BatchNumber], [ApplicationId], [AccountingType]) SELECT [BatchId], [ClientId], [Status], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [BatchNumber], [ApplicationId], [AccountingType] FROM [dbo].[Batches]
go
SET IDENTITY_INSERT [dbo].[Batches_0F9DD46922574C3098632FED216BD467] OFF
go



DROP TABLE [dbo].[Batches]
go
EXEC sp_rename '[dbo].[Batches_0F9DD46922574C3098632FED216BD467]', 'Batches', 'OBJECT'
go


ALTER TABLE [dbo].[Batches] ADD CONSTRAINT [PK_Batches] PRIMARY KEY ([BatchId])
 ON [Batch_Data]
go

ALTER TABLE [dbo].[Batches] ADD CONSTRAINT [UQ__Batches__BatchNumber] UNIQUE ([BatchNumber])
 ON [Batch_Data]
go

GRANT INSERT ON [dbo].[Batches] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Batches] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[BatchInvoices]
go
EXEC sp_rename '[dbo].[BatchInvoices_05D0E2A162564EA2953E9735DCF69EC4]', 'BatchInvoices', 'OBJECT'
go


ALTER TABLE [dbo].[BatchInvoices] ADD CONSTRAINT [PK_BatchInvoices] PRIMARY KEY ([Id])
 ON [Batch_Invoices_Data]
go

GRANT INSERT ON [dbo].[BatchInvoices] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[BatchInvoices] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[BatchInvoices] ADD CONSTRAINT [FK_BatchInvoices_Batches_BatchId] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[Batches] ([BatchId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[BatchInvoices] ADD CONSTRAINT [FK_BatchInvoices_Invoice_Header_Enrich_InvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice_Header_Enrich] ([ID]) ON UPDATE NO ACTION ON DELETE CASCADE
go

CREATE INDEX [IX_BatchInvoices_BatchID] ON [dbo].[BatchInvoices] ([BatchId])
 ON [Batch_Invoices_Index]
go

CREATE INDEX [IX_BatchInvoices_InvoiceId] ON [dbo].[BatchInvoices] (InvoiceId)
 ON [Batch_Invoices_Index]
go

CREATE INDEX [IX_Batches_Batch_Number] ON [dbo].[Batches] ([BatchNumber])
 ON [Batch_Index]
go

CREATE INDEX [IX_Batches_ClientID] ON [dbo].[Batches] ([ClientId])
 ON [Batch_Index]
go

CREATE INDEX [IX_Batches_Status] ON [dbo].[Batches] ([Status])
 ON [Batch_Index]
go
