


CREATE TABLE [dbo].[PO_PURCHASE_ORDER_HEADER_ERP_BF0EC1FC2A2742098B9620711587C019]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Customer_Organization_PowerOrder_ID] Uniqueidentifier NOT NULL,
 [Customer_Branch_GSID] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Company_Code] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Vendor_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_To_Code] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Job_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Name] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Address_1] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Address_2] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_City] Nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_State] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Zip_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Date_List1] Datetime NULL,
 [PO_Date_List2] Datetime NULL,
 [PO_Date_List3] Datetime NULL,
 [Terms_Code] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Payment_Days] Decimal(12,2) NULL,
 [Terms_Description] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Discount_From_Code] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Discount_Days] Decimal(12,2) NULL,
 [Terms_Percent] Decimal(12,2) NULL,
 [Ordered_By] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Confirmed_By] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Resale_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Tax_Percent] Decimal(14,4) NULL,
 [PO_Print_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Status_Flag] Nvarchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Via] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Ship_Terms] Nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [FOB] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Special_Instructions] Nvarchar(29) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Remarks] Nvarchar(29) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Warehouse_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Taxable_Amount] Decimal(12,2) NULL,
 [Non_Taxable_Amount] Decimal(12,2) NULL,
 [Tax_Total] Decimal(12,2) NULL,
 [PO_Total_Amount] Decimal(12,2) NULL,
 [Due_Date_List1] Datetime NULL,
 [Due_Date_List2] Datetime NULL,
 [Total_Freight] Decimal(12,2) NULL,
 [Reference_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Type] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Received_Date] Datetime NULL,
 [Received_Flag] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Last_Receipt_Number] Decimal(12,2) NULL,
 [Proposed_PO_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Batch_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Use_Tax_Code] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Current_Revision] Decimal(10,0) NULL,
 [Blanket_PO] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Blanket_Exp_Date] Datetime NULL,
 [Blanket_Total_Amt] Decimal(12,2) NULL,
 [Blanket_Vendor_Num] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Current_Blanket_Release] Decimal(10,0) NULL,
 [Routing_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Release_Schedule_s] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Date_List1_Year] Nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Date_List1_Period] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Date_List3_Year] Nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Date_List3_Period] Nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Cost_Center] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Bank_Account_Code] Nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Card_Number] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Currency_Code] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_Method] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Comment] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [VAT_Code] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Total_VAT_Amt] Decimal(12,2) NULL,
 [Purch_Loc_Code] Nvarchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Pay_Loc_Code] Nvarchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Accrue_PO_Costs] Nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Job_Name] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [Vendor_Name] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [PO_ENTRY_DT] Datetime2(7) DEFAULT (getdate()) NULL
)
ON [Order_Header_ERP_Data]
go
SET IDENTITY_INSERT [dbo].[PO_PURCHASE_ORDER_HEADER_ERP_BF0EC1FC2A2742098B9620711587C019] ON
go
INSERT INTO [dbo].[PO_PURCHASE_ORDER_HEADER_ERP_BF0EC1FC2A2742098B9620711587C019] ([ID], [Customer_Organization_PowerOrder_ID], [Customer_Branch_GSID], [Company_Code], [PO_Number], [Vendor_Code], [Ship_To_Code], [Job_Number], [Ship_Name], [Ship_Address_1], [Ship_Address_2], [Ship_City], [Ship_State], [Ship_Zip_Code], [PO_Date_List1], [PO_Date_List2], [PO_Date_List3], [Terms_Code], [Payment_Days], [Terms_Description], [Discount_From_Code], [Discount_Days], [Terms_Percent], [Ordered_By], [Confirmed_By], [Resale_Flag], [Tax_Percent], [PO_Print_Flag], [Status_Flag], [Ship_Via], [Ship_Terms], [FOB], [Special_Instructions], [Remarks], [Warehouse_Code], [Taxable_Amount], [Non_Taxable_Amount], [Tax_Total], [PO_Total_Amount], [Due_Date_List1], [Due_Date_List2], [Total_Freight], [Reference_Flag], [PO_Type], [Received_Date], [Received_Flag], [Last_Receipt_Number], [Proposed_PO_Number], [Batch_Code], [Use_Tax_Code], [Current_Revision], [Blanket_PO], [Blanket_Exp_Date], [Blanket_Total_Amt], [Blanket_Vendor_Num], [Current_Blanket_Release], [Routing_Code], [Release_Schedule_s], [PO_Date_List1_Year], [PO_Date_List1_Period], [PO_Date_List3_Year], [PO_Date_List3_Period], [Cost_Center], [Bank_Account_Code], [Card_Number], [Currency_Code], [PO_Method], [Comment], [VAT_Code], [Total_VAT_Amt], [Purch_Loc_Code], [Pay_Loc_Code], [Accrue_PO_Costs], [Job_Name], [Vendor_Name], [PO_ENTRY_DT]) SELECT [ID], [Customer_Organization_PowerOrder_ID], [Customer_Branch_GSID], [Company_Code], [PO_Number], [Vendor_Code], [Ship_To_Code], [Job_Number], [Ship_Name], [Ship_Address_1], [Ship_Address_2], [Ship_City], [Ship_State], [Ship_Zip_Code], [PO_Date_List1], [PO_Date_List2], [PO_Date_List3], [Terms_Code], [Payment_Days], [Terms_Description], [Discount_From_Code], [Discount_Days], [Terms_Percent], [Ordered_By], [Confirmed_By], [Resale_Flag], [Tax_Percent], [PO_Print_Flag], [Status_Flag], [Ship_Via], [Ship_Terms], [FOB], [Special_Instructions], [Remarks], [Warehouse_Code], [Taxable_Amount], [Non_Taxable_Amount], [Tax_Total], [PO_Total_Amount], [Due_Date_List1], [Due_Date_List2], [Total_Freight], [Reference_Flag], [PO_Type], [Received_Date], [Received_Flag], [Last_Receipt_Number], [Proposed_PO_Number], [Batch_Code], [Use_Tax_Code], [Current_Revision], [Blanket_PO], [Blanket_Exp_Date], [Blanket_Total_Amt], [Blanket_Vendor_Num], [Current_Blanket_Release], [Routing_Code], [Release_Schedule_s], [PO_Date_List1_Year], [PO_Date_List1_Period], [PO_Date_List3_Year], [PO_Date_List3_Period], [Cost_Center], [Bank_Account_Code], [Card_Number], [Currency_Code], [PO_Method], [Comment], [VAT_Code], [Total_VAT_Amt], [Purch_Loc_Code], [Pay_Loc_Code], [Accrue_PO_Costs], [Job_Name], [Vendor_Name], [PO_ENTRY_DT] FROM [dbo].[PO_PURCHASE_ORDER_HEADER_ERP]
go
SET IDENTITY_INSERT [dbo].[PO_PURCHASE_ORDER_HEADER_ERP_BF0EC1FC2A2742098B9620711587C019] OFF
go



DROP TABLE [dbo].[PO_PURCHASE_ORDER_HEADER_ERP]
go
EXEC sp_rename '[dbo].[PO_PURCHASE_ORDER_HEADER_ERP_BF0EC1FC2A2742098B9620711587C019]', 'PO_PURCHASE_ORDER_HEADER_ERP', 'OBJECT'
go


CREATE INDEX [index_po_header] ON [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] ([Customer_Organization_PowerOrder_ID],[Customer_Branch_GSID],[Company_Code],[PO_Number],[Vendor_Code])
 ON [Order_Header_ERP_Index]
go


CREATE INDEX [IX_POPurchaseOrderHeaderErp_ComapnyCode] ON [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] ([Company_Code])
 ON [Order_Header_ERP_Index]
go

CREATE INDEX [IX_POPurchaseOrderHeaderErp_PoNUmber] ON [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] ([PO_Number])
 ON [Order_Header_ERP_Index]
go


ALTER TABLE [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] ADD CONSTRAINT [PK_PO_PURCHASE_ORDER_HEADER_ERP] PRIMARY KEY ([ID])
 ON [Order_Header_ERP_Data]
go

GRANT INSERT ON [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[PO_PURCHASE_ORDER_HEADER_ERP] TO [mindfire] AS [dbo]
go
