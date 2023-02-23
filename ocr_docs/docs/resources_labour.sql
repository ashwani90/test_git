


CREATE TABLE [dbo].[Resources_F13A12EB15B64D0B920DFEBF579EBA6E]
(
 [id] Int IDENTITY(1,1) NOT NULL,
 [endpoint] Varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [bit_position] Int NOT NULL,
 [status] Bit DEFAULT ((1)) NOT NULL,
 [CreatedOn] Datetime2(7) NULL,
 [UpdatedOn] Datetime2(7) NULL
)
ON [Lookup_Data]
go
SET IDENTITY_INSERT [dbo].[Resources_F13A12EB15B64D0B920DFEBF579EBA6E] ON
go
INSERT INTO [dbo].[Resources_F13A12EB15B64D0B920DFEBF579EBA6E] ([id], [endpoint], [bit_position], [status], [CreatedOn], [UpdatedOn]) SELECT [id], [endpoint], [bit_position], [status], [CreatedOn], [UpdatedOn] FROM [dbo].[Resources]
go
SET IDENTITY_INSERT [dbo].[Resources_F13A12EB15B64D0B920DFEBF579EBA6E] OFF
go




CREATE TABLE [dbo].[Labor_Detail_Enrich_5A3AEB1F4A034F9884CB149DF65BB595]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Header_ID] Int NOT NULL,
 [PROCESSED_DT] Datetime2(7) NULL,
 [SQL_filename] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [UPC] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [DESCRIPTION] Nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SUPPLIER_UOM] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [JOB_NUMBER] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [JOB_NAME] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [HOURS_REG] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [EXT_REG] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [HOURS_OT] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [EXT_OT] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [HOURS_DT] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [EXT_DT] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LABOR_BILL_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TOTAL] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CENTER] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_TYPE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [GL_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [DIVISION] Nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PHASE_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [FREIGHT_AMOUNT] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TM_MESSAGE] Nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [RECEIVED_DT] Datetime2(7) NULL,
 [UpdatedOn] Datetime2(7) NOT NULL,
 [Status] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [IsDeleted] Bit DEFAULT ((0)) NULL,
 [TaxAmount] Decimal(18,6) NULL,
 [TaxRate] Decimal(18,6) NULL,
 [TaxTable] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [IsValid] Bit DEFAULT ('1') NOT NULL,
 [Priority] Int DEFAULT ((0)) NOT NULL,
 [TaxAsLine] Bit DEFAULT ((0)) NOT NULL,
 [CUSTOMER_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SUPPLIER_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [MFG_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [IsLumpSum] Bit DEFAULT ((0)) NOT NULL,
 [LINE_TYPE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [Labour_Detail_Enrich_Data]
go
SET IDENTITY_INSERT [dbo].[Labor_Detail_Enrich_5A3AEB1F4A034F9884CB149DF65BB595] ON
go
INSERT INTO [dbo].[Labor_Detail_Enrich_5A3AEB1F4A034F9884CB149DF65BB595] ([ID], [Header_ID], [PROCESSED_DT], [SQL_filename], [UPC], [DESCRIPTION], [SUPPLIER_UOM], [JOB_NUMBER], [JOB_NAME], [HOURS_REG], [EXT_REG], [HOURS_OT], [EXT_OT], [HOURS_DT], [EXT_DT], [LABOR_BILL_CODE], [TOTAL], [COST_CENTER], [COST_TYPE], [GL_CODE], [COST_CODE], [DIVISION], [PHASE_CODE], [FREIGHT_AMOUNT], [TM_MESSAGE], [RECEIVED_DT], [UpdatedOn], [Status], [IsDeleted], [TaxAmount], [TaxRate], [TaxTable], [IsValid], [Priority], [TaxAsLine], [CUSTOMER_ITEM_NUMBER], [SUPPLIER_ITEM_NUMBER], [MFG_ITEM_NUMBER], [IsLumpSum], [LINE_TYPE]) SELECT [ID], [Header_ID], [PROCESSED_DT], [SQL_filename], [UPC], [DESCRIPTION], [SUPPLIER_UOM], [JOB_NUMBER], [JOB_NAME], [HOURS_REG], [EXT_REG], [HOURS_OT], [EXT_OT], [HOURS_DT], [EXT_DT], [LABOR_BILL_CODE], [TOTAL], [COST_CENTER], [COST_TYPE], [GL_CODE], [COST_CODE], [DIVISION], [PHASE_CODE], [FREIGHT_AMOUNT], [TM_MESSAGE], [RECEIVED_DT], [UpdatedOn], [Status], [IsDeleted], [TaxAmount], [TaxRate], [TaxTable], [IsValid], [Priority], [TaxAsLine], [CUSTOMER_ITEM_NUMBER], [SUPPLIER_ITEM_NUMBER], [MFG_ITEM_NUMBER], [IsLumpSum], [LINE_TYPE] FROM [dbo].[Labor_Detail_Enrich]
go
SET IDENTITY_INSERT [dbo].[Labor_Detail_Enrich_5A3AEB1F4A034F9884CB149DF65BB595] OFF
go



DROP TABLE [dbo].[Labor_Detail_Enrich]
go
EXEC sp_rename '[dbo].[Labor_Detail_Enrich_5A3AEB1F4A034F9884CB149DF65BB595]', 'Labor_Detail_Enrich', 'OBJECT'
go


ALTER TABLE [dbo].[Labor_Detail_Enrich] ADD CONSTRAINT [DF_Labor_Detail_Enrich_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go
ALTER TABLE [dbo].[Labor_Detail_Enrich] ADD CONSTRAINT [DF_Labor_Detail_Enrich_Status] DEFAULT ('Changed Before Issued') FOR [Status]
go

ALTER TABLE [dbo].[Labor_Detail_Enrich] ADD CONSTRAINT [PK_Labor_Detail_Enrich] PRIMARY KEY ([ID])
 ON [Labour_Detail_Enrich_Data]
go

GRANT INSERT ON [dbo].[Labor_Detail_Enrich] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Labor_Detail_Enrich] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[Resources]
go
EXEC sp_rename '[dbo].[Resources_F13A12EB15B64D0B920DFEBF579EBA6E]', 'Resources', 'OBJECT'
go


ALTER TABLE [dbo].[Resources] ADD CONSTRAINT [DF_Resources_CreatedOn] DEFAULT (getdate()) FOR [CreatedOn]
go
ALTER TABLE [dbo].[Resources] ADD CONSTRAINT [DF_Resources_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go

ALTER TABLE [dbo].[Resources] ADD CONSTRAINT [PK_Resources] PRIMARY KEY ([id])
 ON [Lookup_Data]
go

ALTER TABLE [dbo].[Resources] ADD CONSTRAINT [UK_Resources_bit_position] UNIQUE ([bit_position])
 ON [Lookup_Data]
go

ALTER TABLE [dbo].[Resources] ADD CONSTRAINT [UK_Resources_endpoint] UNIQUE ([endpoint])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[Resources] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Resources] TO [mindfire] AS [dbo]
go


CREATE INDEX [IX_LabourDetailEnrich_HeaderID] ON [dbo].[Labor_Detail_Enrich] ([Header_ID])
 ON [Labour_Detail_Enrich_index]
go

CREATE INDEX [IX_LabourDetailEnrich_ProcessedDT] ON [dbo].[Labor_Detail_Enrich] ([PROCESSED_DT])
 ON [Labour_Detail_Enrich_index]
go


CREATE INDEX [IX_Resources_Endpoint] ON [dbo].[Resources] ([endpoint])
 ON [Lookup_Index]
go
