

ALTER TABLE [dbo].[BranchAccountingSettingOptions] DROP CONSTRAINT [FK_BranchAccountingSettingOptions_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId]
go
ALTER TABLE [dbo].[BranchAccountingSettings] DROP CONSTRAINT [FK_BranchAccountingSettings_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId]
go
ALTER TABLE [dbo].[BranchAccountingSettingValues] DROP CONSTRAINT [FK_BranchAccountingSettingValues_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId]
go

CREATE TABLE [dbo].[BranchDefaultAccountingSettings_771AF7DF9B8941218499E7880F1C7C52]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [Name] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [Description] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [IsSet] Bit NOT NULL,
 [ParentId] Int DEFAULT ((0)) NOT NULL,
 [Code] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT (N'') NOT NULL,
 [HasValue] Bit NOT NULL,
 [ApplicationId] Int DEFAULT ((1)) NOT NULL,
 [AccountingType] Int DEFAULT ((1)) NOT NULL,
 [AccountingSystem] Int DEFAULT ((0)) NOT NULL,
 [SettingType] Nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('AP') NOT NULL
)
ON [Lookup_Data]
TEXTIMAGE_ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[BranchDefaultAccountingSettings_771AF7DF9B8941218499E7880F1C7C52] ON
go
INSERT INTO [dbo].[BranchDefaultAccountingSettings_771AF7DF9B8941218499E7880F1C7C52] ([Id], [Name], [Description], [IsSet], [ParentId], [Code], [HasValue], [ApplicationId], [AccountingType], [AccountingSystem], [SettingType]) SELECT [Id], [Name], [Description], [IsSet], [ParentId], [Code], [HasValue], [ApplicationId], [AccountingType], [AccountingSystem], [SettingType] FROM [dbo].[BranchDefaultAccountingSettings]
go
SET IDENTITY_INSERT [dbo].[BranchDefaultAccountingSettings_771AF7DF9B8941218499E7880F1C7C52] OFF
go




CREATE TABLE [dbo].[BranchAccountingSettingValues_E20447E7E41042B2ADF670DF881802C9]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [BranchAccountingSettingId] Int NULL,
 [BranchAccountingSettingOptionId] Int NULL,
 [BranchDefaultAccountingSettingId] Int NOT NULL,
 [Value] Nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 [ValueType] Nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [Branch_Data]
TEXTIMAGE_ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettingValues_E20447E7E41042B2ADF670DF881802C9] ON
go
INSERT INTO [dbo].[BranchAccountingSettingValues_E20447E7E41042B2ADF670DF881802C9] ([Id], [BranchAccountingSettingId], [BranchAccountingSettingOptionId], [BranchDefaultAccountingSettingId], [Value], [ValueType]) SELECT [Id], [BranchAccountingSettingId], [BranchAccountingSettingOptionId], [BranchDefaultAccountingSettingId], [Value], [ValueType] FROM [dbo].[BranchAccountingSettingValues]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettingValues_E20447E7E41042B2ADF670DF881802C9] OFF
go



ALTER TABLE [dbo].[BranchAccountingSettingOptions] DROP CONSTRAINT [FK_BranchAccountingSettingOptions_BranchAccountingSettings_BranchAccountingSettingId]
go
ALTER TABLE [dbo].[BranchAccountingSettings] DROP CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId]
go

CREATE TABLE [dbo].[BranchAccountingSettings_FD230C85FD484235A8D7C8E1F02F53D7]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [CustomerBranchId] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [BranchDefaultAccountingSettingId] Int NOT NULL,
 [IsSet] Bit NOT NULL
)
ON [Branch_Data]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettings_FD230C85FD484235A8D7C8E1F02F53D7] ON
go
INSERT INTO [dbo].[BranchAccountingSettings_FD230C85FD484235A8D7C8E1F02F53D7] ([Id], [CustomerBranchId], [BranchDefaultAccountingSettingId], [IsSet]) SELECT [Id], [CustomerBranchId], [BranchDefaultAccountingSettingId], [IsSet] FROM [dbo].[BranchAccountingSettings]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettings_FD230C85FD484235A8D7C8E1F02F53D7] OFF
go




CREATE TABLE [dbo].[BranchAccountingSettingOptions_FDD551048ED7471393ECCF5859DEFFEA]
(
 [Id] Int IDENTITY(1,1) NOT NULL,
 [BranchAccountingSettingId] Int NOT NULL,
 [BranchDefaultAccountingSettingId] Int NOT NULL,
 [IsSet] Bit NOT NULL
)
ON [Branch_Data]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettingOptions_FDD551048ED7471393ECCF5859DEFFEA] ON
go
INSERT INTO [dbo].[BranchAccountingSettingOptions_FDD551048ED7471393ECCF5859DEFFEA] ([Id], [BranchAccountingSettingId], [BranchDefaultAccountingSettingId], [IsSet]) SELECT [Id], [BranchAccountingSettingId], [BranchDefaultAccountingSettingId], [IsSet] FROM [dbo].[BranchAccountingSettingOptions]
go
SET IDENTITY_INSERT [dbo].[BranchAccountingSettingOptions_FDD551048ED7471393ECCF5859DEFFEA] OFF
go



DROP TABLE [dbo].[BranchAccountingSettingOptions]
go
EXEC sp_rename '[dbo].[BranchAccountingSettingOptions_FDD551048ED7471393ECCF5859DEFFEA]', 'BranchAccountingSettingOptions', 'OBJECT'
go


ALTER TABLE [dbo].[BranchAccountingSettingOptions] ADD CONSTRAINT [PK_BranchAccountingSettingOptions] PRIMARY KEY ([Id])
 ON [Branch_Data]
go

GRANT INSERT ON [dbo].[BranchAccountingSettingOptions] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[BranchAccountingSettingOptions] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[BranchAccountingSettings]
go
EXEC sp_rename '[dbo].[BranchAccountingSettings_FD230C85FD484235A8D7C8E1F02F53D7]', 'BranchAccountingSettings', 'OBJECT'
go


ALTER TABLE [dbo].[BranchAccountingSettings] ADD CONSTRAINT [PK_BranchAccountingSettings] PRIMARY KEY ([Id])
 ON [Branch_Data]
go

GRANT INSERT ON [dbo].[BranchAccountingSettings] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[BranchAccountingSettings] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[BranchAccountingSettingValues]
go
EXEC sp_rename '[dbo].[BranchAccountingSettingValues_E20447E7E41042B2ADF670DF881802C9]', 'BranchAccountingSettingValues', 'OBJECT'
go


ALTER TABLE [dbo].[BranchAccountingSettingValues] ADD CONSTRAINT [PK_BranchAccountingSettingValues] PRIMARY KEY ([Id])
 ON [Branch_Data]
go

GRANT INSERT ON [dbo].[BranchAccountingSettingValues] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[BranchAccountingSettingValues] TO [mindfire] AS [dbo]
go

DROP TABLE [dbo].[BranchDefaultAccountingSettings]
go
EXEC sp_rename '[dbo].[BranchDefaultAccountingSettings_771AF7DF9B8941218499E7880F1C7C52]', 'BranchDefaultAccountingSettings', 'OBJECT'
go


ALTER TABLE [dbo].[BranchDefaultAccountingSettings] ADD CONSTRAINT [PK_BranchDefaultAccountingSettings] PRIMARY KEY ([Id])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[BranchDefaultAccountingSettings] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[BranchDefaultAccountingSettings] TO [mindfire] AS [dbo]
go
ALTER TABLE [dbo].[BranchAccountingSettingOptions] ADD CONSTRAINT [FK_BranchAccountingSettingOptions_BranchAccountingSettings_BranchAccountingSettingId] FOREIGN KEY ([BranchAccountingSettingId]) REFERENCES [dbo].[BranchAccountingSettings] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [dbo].[BranchAccountingSettingOptions] ADD CONSTRAINT [FK_BranchAccountingSettingOptions_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId] FOREIGN KEY ([BranchDefaultAccountingSettingId]) REFERENCES [dbo].[BranchDefaultAccountingSettings] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[BranchAccountingSettings] ADD CONSTRAINT [FK_BranchAccountingSettings_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId] FOREIGN KEY ([BranchDefaultAccountingSettingId]) REFERENCES [dbo].[BranchDefaultAccountingSettings] ([Id]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[BranchAccountingSettings] ADD CONSTRAINT [FK_BranchAccountingSettings_CustomerBranches_CustomerBranchId] FOREIGN KEY ([CustomerBranchId]) REFERENCES [dbo].[CustomerBranches] ([ClientId]) ON UPDATE NO ACTION ON DELETE CASCADE
go


ALTER TABLE [dbo].[BranchAccountingSettingValues] ADD CONSTRAINT [FK_BranchAccountingSettingValues_BranchDefaultAccountingSettings_BranchDefaultAccountingSettingId] FOREIGN KEY ([BranchDefaultAccountingSettingId]) REFERENCES [dbo].[BranchDefaultAccountingSettings] ([Id]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



CREATE INDEX [IX_BranchDefaultAccountingSettings_ParentID] ON [dbo].[BranchDefaultAccountingSettings] ([ParentId])
 ON [Lookup_Index]
go

CREATE INDEX [IX_BranchAccountingSettingValues_BranchAccountingSettingID] ON [dbo].[BranchAccountingSettingValues] ([BranchAccountingSettingId])
 ON [Branch_Index]
go

CREATE INDEX [IX_BranchAccountingSettingValues_BranchDefaultAccountingSettingId] ON [dbo].[BranchAccountingSettingValues] ([BranchDefaultAccountingSettingId])
 ON [Branch_Index]
go

CREATE INDEX [IX_BranchAccountingSettingValues_BranchAccountingSettingOptionId] ON [dbo].[BranchAccountingSettingValues] ([BranchAccountingSettingOptionId])
 ON [Branch_Index]
go


CREATE INDEX [IX_BranchAccountingSettings_CustomerBranchId] ON [dbo].[BranchAccountingSettings] ([CustomerBranchId])
 ON [Branch_Index]
go

CREATE INDEX [IX_BranchAccountingSettings_BranchDefaultAccountingSettingId] ON [dbo].[BranchAccountingSettings] ([BranchDefaultAccountingSettingId])
 ON [Branch_Index]
go


CREATE INDEX [IX_BranchAccountingSettingOptions_BranchAccountingSettingID] ON [dbo].[BranchAccountingSettingOptions] ([BranchAccountingSettingId])
 ON [Branch_Index]
go

CREATE INDEX [IX_BranchAccountingSettingOptions_BranchDefaultAccountingSettingId] ON [dbo].[BranchAccountingSettingOptions] ([BranchDefaultAccountingSettingId])
 ON [Branch_Index]
go
