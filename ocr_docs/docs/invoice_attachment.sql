

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


ALTER TABLE [dbo].[Invoice_Attachments] ADD CONSTRAINT [FK_Invoice_Attachments_Invoice_Header_Enrich_InvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice_Header_Enrich] ([ID]) ON UPDATE NO ACTION ON DELETE CASCADE
go


CREATE INDEX [IX_InvoiceAttachments_InvoiceID] ON [dbo].[Invoice_Attachments] ([InvoiceId])
 ON [Invoice_Attachment_index]
go
