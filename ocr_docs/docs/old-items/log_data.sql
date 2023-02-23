ALTER DATABASE [Ap_Invoice_Import]
    ADD FILEGROUP Invoice_Image_Transfer_Data;
    GO
    ALTER DATABASE [Ap_Invoice_Import]
    ADD FILE (NAME = Invoice_Image_Transfer_Data
            ,FILENAME = 'H:\SQL Server\MSSQL\DATA\Invoice_Image_Transfer.ndf'
            ,SIZE = 5MB
            ,FILEGROWTH = 4MB)
    TO FILEGROUP Invoice_Image_Transfer_Data
GO

ALTER DATABASE [Ap_Invoice_Import]
    ADD FILEGROUP Invoice_Image_Transfer_Index;
    GO
    ALTER DATABASE [Ap_Invoice_Import]
    ADD FILE (NAME = Invoice_Image_Transfer_Index
            ,FILENAME = 'J:\SQL Server\MSSQL\INDEX\Invoice_Image_Transfer.ndf'
            ,SIZE = 5MB
            ,FILEGROWTH = 4MB)
    TO FILEGROUP Invoice_Image_Transfer_Index
GO

CREATE TABLE [dbo].[Invoice_Image_Transfer_Log](
                [Id] [int] IDENTITY(1,1) NOT NULL,
                [InvoiceId] [int] NOT NULL,
                [Source] [nvarchar](10) NOT NULL,
                [Filename] [nvarchar](50) NOT NULL,
                [FileSent] [bit] not null default((0)),
                [FileType] [nvarchar](4) NOT NULL,
                [FileSize] [nvarchar](20) NOT NULL,
                [CreatedDate] [datetime2](7) NOT NULL,
                [UpdatedDate] [datetime2](7) NOT NULL
             ) ON [Invoice_Image_Transfer_Data]
go

CREATE TABLE [dbo].[Invoice_Image_Transfer_Exception_Log](
                [Id] [int] IDENTITY(1,1) NOT NULL,
                [InvoiceId] [int] NOT NULL,
                [Filename] [nvarchar](50) NOT NULL,
                [Exception] [nvarchar](200) NOT NULL,
                [CreatedDate] [datetime2](7) NOT NULL,
             ) ON [Invoice_Image_Transfer_Data]
go
