


CREATE TABLE [dbo].[Invoice_Detail_Enrich_42226AD9BD984DC7A58DB5709A3C65B0]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Header_ID] Int NOT NULL,
 [PROCESSED_DT] Datetime2(7) NULL,
 [SQL_filename] Varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [RETURN_FILE] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_TYPE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [INVOICE_LINE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ORDER_LINE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_LINE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CUSTOMER_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SUPPLIER_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [MFG_ITEM_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [UPC] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [DESCRIPTION] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [QUANTITY] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [BILLED] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [BACKORDER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PRICE_FACTOR] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PRICE_EACH] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PRICE_PER_UNIT] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SUPPLIER_UOM] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PRICE_EXTENDED] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ALTERNATE_UOM] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ALTERNATE_FACTOR] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [JOB_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [JOB_NAME] Varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_ONE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_TWO] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_THREE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_FOUR] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_FIVE] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_CODE_SIX] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TAX_AMOUNT] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TAX_LIABILITY] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [FREIGHT_AMOUNT] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PRICE_STRUCTURE_ID] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CASH_DISCOUNT_PERCENT] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CASH_DISCOUNT_AMOUNT] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [MFG_NAME] Varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [MFG_NUMBER] Varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_SPARE_ONE] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_SPARE_TWO] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_SPARE_THREE] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LINE_SPARE_FOUR] Varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [RECEIVED_DT] Datetime2(7) NULL,
 [UpdatedOn] Datetime2(7) NOT NULL,
 [Status] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [PurchaseOrderDetailId] Int NULL,
 [Division] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TaxRate] Decimal(18,6) NULL,
 [TaxTable] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [IsDeleted] Bit DEFAULT ((0)) NULL,
 [CostCenter] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [WorkOrderNumber] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SubJobNumber] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [LocalSalesTaxCode] Int NULL,
 [RequestNumber] Bigint NULL,
 [StateSalesTaxCode] Int NULL,
 [Taxable] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [JobNumber] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PrcCode] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [UnitOfMeasure] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [GL_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [COST_TYPE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PHASE_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ITEM_NAME] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [CATALOG_NUMBER] Nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [BUYER_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [EquipmentCode] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [EquipmentCodeCategory] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [BillItem] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [VENDOR_CODE] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [AddToBatchFileFlag] Bit DEFAULT ((1)) NOT NULL,
 [Priority] Int DEFAULT ((0)) NOT NULL,
 [TaxAsLine] Bit DEFAULT ((0)) NOT NULL,
 [DetailId] Int NULL,
 [IsAutoValidated] Bit DEFAULT ((0)) NOT NULL,
 [HasLineMatched] Bit DEFAULT ((0)) NOT NULL,
 [HasQuantityMatched] Bit DEFAULT ((0)) NOT NULL,
 [HasUnitPriceMatched] Bit DEFAULT ((0)) NOT NULL,
 [HasExtensionMatched] Bit DEFAULT ((0)) NOT NULL,
 [HasTaxMatched] Bit DEFAULT ((0)) NOT NULL,
 [IsLumpSum] Bit DEFAULT ((0)) NOT NULL,
 [TaxType] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TaxDescription] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [TaxableFlag] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [INVOICE_ENTRY_DT] Datetime2(7) DEFAULT (getdate()) NULL
)
ON [Detail_Enrich_Data]
TEXTIMAGE_ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[Invoice_Detail_Enrich_42226AD9BD984DC7A58DB5709A3C65B0] ON
go
INSERT INTO [dbo].[Invoice_Detail_Enrich_42226AD9BD984DC7A58DB5709A3C65B0] ([ID], [Header_ID], [PROCESSED_DT], [SQL_filename], [RETURN_FILE], [LINE_NUMBER], [LINE_TYPE], [INVOICE_LINE], [ORDER_LINE], [PO_LINE], [CUSTOMER_ITEM_NUMBER], [SUPPLIER_ITEM_NUMBER], [MFG_ITEM_NUMBER], [UPC], [DESCRIPTION], [QUANTITY], [BILLED], [BACKORDER], [PRICE_FACTOR], [PRICE_EACH], [PRICE_PER_UNIT], [SUPPLIER_UOM], [PRICE_EXTENDED], [ALTERNATE_UOM], [ALTERNATE_FACTOR], [JOB_NUMBER], [JOB_NAME], [COST_CODE_ONE], [COST_CODE_TWO], [COST_CODE_THREE], [COST_CODE_FOUR], [COST_CODE_FIVE], [COST_CODE_SIX], [TAX_AMOUNT], [TAX_LIABILITY], [FREIGHT_AMOUNT], [PRICE_STRUCTURE_ID], [CASH_DISCOUNT_PERCENT], [CASH_DISCOUNT_AMOUNT], [MFG_NAME], [MFG_NUMBER], [LINE_SPARE_ONE], [LINE_SPARE_TWO], [LINE_SPARE_THREE], [LINE_SPARE_FOUR], [RECEIVED_DT], [UpdatedOn], [Status], [PurchaseOrderDetailId], [Division], [TaxRate], [TaxTable], [IsDeleted], [CostCenter], [WorkOrderNumber], [SubJobNumber], [LocalSalesTaxCode], [RequestNumber], [StateSalesTaxCode], [Taxable], [JobNumber], [PrcCode], [UnitOfMeasure], [GL_CODE], [COST_TYPE], [PHASE_CODE], [ITEM_NAME], [CATALOG_NUMBER], [BUYER_CODE], [EquipmentCode], [EquipmentCodeCategory], [BillItem], [VENDOR_CODE], [AddToBatchFileFlag], [Priority], [TaxAsLine], [DetailId], [IsAutoValidated], [HasLineMatched], [HasQuantityMatched], [HasUnitPriceMatched], [HasExtensionMatched], [HasTaxMatched], [IsLumpSum], [TaxType], [TaxDescription], [TaxableFlag], [INVOICE_ENTRY_DT]) SELECT [ID], [Header_ID], [PROCESSED_DT], [SQL_filename], [RETURN_FILE], [LINE_NUMBER], [LINE_TYPE], [INVOICE_LINE], [ORDER_LINE], [PO_LINE], [CUSTOMER_ITEM_NUMBER], [SUPPLIER_ITEM_NUMBER], [MFG_ITEM_NUMBER], [UPC], [DESCRIPTION], [QUANTITY], [BILLED], [BACKORDER], [PRICE_FACTOR], [PRICE_EACH], [PRICE_PER_UNIT], [SUPPLIER_UOM], [PRICE_EXTENDED], [ALTERNATE_UOM], [ALTERNATE_FACTOR], [JOB_NUMBER], [JOB_NAME], [COST_CODE_ONE], [COST_CODE_TWO], [COST_CODE_THREE], [COST_CODE_FOUR], [COST_CODE_FIVE], [COST_CODE_SIX], [TAX_AMOUNT], [TAX_LIABILITY], [FREIGHT_AMOUNT], [PRICE_STRUCTURE_ID], [CASH_DISCOUNT_PERCENT], [CASH_DISCOUNT_AMOUNT], [MFG_NAME], [MFG_NUMBER], [LINE_SPARE_ONE], [LINE_SPARE_TWO], [LINE_SPARE_THREE], [LINE_SPARE_FOUR], [RECEIVED_DT], [UpdatedOn], [Status], [PurchaseOrderDetailId], [Division], [TaxRate], [TaxTable], [IsDeleted], [CostCenter], [WorkOrderNumber], [SubJobNumber], [LocalSalesTaxCode], [RequestNumber], [StateSalesTaxCode], [Taxable], [JobNumber], [PrcCode], [UnitOfMeasure], [GL_CODE], [COST_TYPE], [PHASE_CODE], [ITEM_NAME], [CATALOG_NUMBER], [BUYER_CODE], [EquipmentCode], [EquipmentCodeCategory], [BillItem], [VENDOR_CODE], [AddToBatchFileFlag], [Priority], [TaxAsLine], [DetailId], [IsAutoValidated], [HasLineMatched], [HasQuantityMatched], [HasUnitPriceMatched], [HasExtensionMatched], [HasTaxMatched], [IsLumpSum], [TaxType], [TaxDescription], [TaxableFlag], [INVOICE_ENTRY_DT] FROM [dbo].[Invoice_Detail_Enrich]
go
SET IDENTITY_INSERT [dbo].[Invoice_Detail_Enrich_42226AD9BD984DC7A58DB5709A3C65B0] OFF
go



DROP TABLE [dbo].[Invoice_Detail_Enrich]
go
EXEC sp_rename '[dbo].[Invoice_Detail_Enrich_42226AD9BD984DC7A58DB5709A3C65B0]', 'Invoice_Detail_Enrich', 'OBJECT'
go


ALTER TABLE [dbo].[Invoice_Detail_Enrich] ADD CONSTRAINT [DF_Invoice_Detail_Enrich_UpdatedOn] DEFAULT (getdate()) FOR [UpdatedOn]
go
ALTER TABLE [dbo].[Invoice_Detail_Enrich] ADD CONSTRAINT [DF_Invoice_Detail_Enrich_Status] DEFAULT ((0)) FOR [Status]
go

ALTER TABLE [dbo].[Invoice_Detail_Enrich] ADD CONSTRAINT [PK_Invoice_Detail_Enrich] PRIMARY KEY ([ID])
 ON [Detail_Enrich_Data]
go

GRANT INSERT ON [dbo].[Invoice_Detail_Enrich] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Invoice_Detail_Enrich] TO [mindfire] AS [dbo]
go

CREATE INDEX [IX_InvoiceDetailEnrich_HeaderID] ON [dbo].[Invoice_Detail_Enrich] ([Header_ID])
 ON [Detail_Enrich_Index]
go

CREATE INDEX [IX_InvoiceDetailEnrich_ProcessedDT] ON [dbo].[Invoice_Detail_Enrich] ([PROCESSED_DT])
 ON [Detail_Enrich_Index]
go
