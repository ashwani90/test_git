


CREATE TABLE [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP_655A7C2D79464D2E952825017F14D06E]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Customer_Organization_PowerOrder_ID] Uniqueidentifier NOT NULL,
 [Customer_Branch_GSID] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Company_Code] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Line_Number] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Quantity_List1] Decimal(12,2) NULL,
 [PO_Quantity_List2] Decimal(12,2) NULL,
 [PO_Quantity_List3] Decimal(12,2) NULL,
 [PO_Quantity_List4] Decimal(12,2) NULL,
 [PO_Quantity_List5] Decimal(12,2) NULL,
 [Item_Code] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Item_Description] Nvarchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Unit_Of_Measure] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Item_Price] Decimal(14,4) NULL,
 [Item_Discount_Percent] Decimal(14,4) NULL,
 [Tax_Percent] Decimal(14,4) NULL,
 [Tax_Amount_List1] Decimal(12,2) NULL,
 [Tax_Amount_List2] Decimal(12,2) NULL,
 [Line_Extension_List1] Decimal(12,2) NULL,
 [Line_Extension_List2] Decimal(12,2) NULL,
 [Delivery_Date] Datetime NULL,
 [GL_Account] Nvarchar(12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Job_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Phase_Code] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Cost_Type] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Message] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Received_Extension] Decimal(12,2) NULL,
 [Warehouse_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [WO_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Sequence] Nvarchar(14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Price_Per_Factor] Decimal(14,4) NULL,
 [Equipment_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Equipment_Category] Nvarchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Open_Receipt_Quantity] Decimal(12,2) NULL,
 [Use_Tax_Code] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Use_Tax_Extension] Decimal(12,2) NULL,
 [PM_Work_Order] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Terms_Discount_Percent] Decimal(12,2) NULL,
 [Tax_Code] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Taxable_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [WO_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Component_Number] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [System_ID] Nvarchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [WO_Item_Price] Decimal(12,2) NULL,
 [Blanket_Release_Number] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Cost_Center] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [SC_Contract] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Control_Code] Nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Billing_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Line_Type] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [IsPoLineUsed] Bit DEFAULT ((0)) NOT NULL,
 [PO_ENTRY_DT] Datetime2(7) DEFAULT (getdate()) NULL
)
ON [Order_Detail_ERP_Data]
go
SET IDENTITY_INSERT [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP_655A7C2D79464D2E952825017F14D06E] ON
go
INSERT INTO [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP_655A7C2D79464D2E952825017F14D06E] ([ID], [Customer_Organization_PowerOrder_ID], [Customer_Branch_GSID], [Company_Code], [PO_Number], [Line_Number], [PO_Quantity_List1], [PO_Quantity_List2], [PO_Quantity_List3], [PO_Quantity_List4], [PO_Quantity_List5], [Item_Code], [Item_Description], [Unit_Of_Measure], [Item_Price], [Item_Discount_Percent], [Tax_Percent], [Tax_Amount_List1], [Tax_Amount_List2], [Line_Extension_List1], [Line_Extension_List2], [Delivery_Date], [GL_Account], [Job_Number], [Phase_Code], [Cost_Type], [Message], [Received_Extension], [Warehouse_Code], [WO_Number], [Sequence], [Price_Per_Factor], [Equipment_Code], [Equipment_Category], [Open_Receipt_Quantity], [Use_Tax_Code], [Use_Tax_Extension], [PM_Work_Order], [Terms_Discount_Percent], [Tax_Code], [Taxable_Flag], [WO_Flag], [Component_Number], [System_ID], [WO_Item_Price], [Blanket_Release_Number], [Cost_Center], [SC_Contract], [Control_Code], [Billing_Flag], [Line_Type], [IsPoLineUsed], [PO_ENTRY_DT]) SELECT [ID], [Customer_Organization_PowerOrder_ID], [Customer_Branch_GSID], [Company_Code], [PO_Number], [Line_Number], [PO_Quantity_List1], [PO_Quantity_List2], [PO_Quantity_List3], [PO_Quantity_List4], [PO_Quantity_List5], [Item_Code], [Item_Description], [Unit_Of_Measure], [Item_Price], [Item_Discount_Percent], [Tax_Percent], [Tax_Amount_List1], [Tax_Amount_List2], [Line_Extension_List1], [Line_Extension_List2], [Delivery_Date], [GL_Account], [Job_Number], [Phase_Code], [Cost_Type], [Message], [Received_Extension], [Warehouse_Code], [WO_Number], [Sequence], [Price_Per_Factor], [Equipment_Code], [Equipment_Category], [Open_Receipt_Quantity], [Use_Tax_Code], [Use_Tax_Extension], [PM_Work_Order], [Terms_Discount_Percent], [Tax_Code], [Taxable_Flag], [WO_Flag], [Component_Number], [System_ID], [WO_Item_Price], [Blanket_Release_Number], [Cost_Center], [SC_Contract], [Control_Code], [Billing_Flag], [Line_Type], [IsPoLineUsed], [PO_ENTRY_DT] FROM [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP]
go
SET IDENTITY_INSERT [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP_655A7C2D79464D2E952825017F14D06E] OFF
go



DROP TABLE [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP]
go
EXEC sp_rename '[dbo].[PO_PURCHASE_ORDER_DETAIL_ERP_655A7C2D79464D2E952825017F14D06E]', 'PO_PURCHASE_ORDER_DETAIL_ERP', 'OBJECT'
go


ALTER TABLE [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP] ADD CONSTRAINT [PK_PO_PURCHASE_ORDER_DETAIL_ERP] PRIMARY KEY ([ID])
 ON [Order_Detail_ERP_Data]
go

GRANT INSERT ON [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP] TO [mindfire] AS [dbo]
go



CREATE INDEX [IX_POPurchaseOrderDetailErp_CompanyCode] ON [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP] ([Company_Code])
 ON [Order_Detail_ERP_Index]
go

CREATE INDEX [IX_POPurchaseOrderDetailErp_PONumber] ON [dbo].[PO_PURCHASE_ORDER_DETAIL_ERP] ([PO_Number])
 ON [Order_Detail_ERP_Index]
go
