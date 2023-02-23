

CREATE TABLE [dbo].[Tags_49D3561196444590B334242457160E63]
(
 [ID] Int IDENTITY(1,1) NOT NULL,
 [Text] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [CustomerOrganizationId] Nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 [TagColor] Nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [Lookup_Data]
go
SET IDENTITY_INSERT [dbo].[Tags_49D3561196444590B334242457160E63] ON
go
INSERT INTO [dbo].[Tags_49D3561196444590B334242457160E63] ([ID], [Text], [CustomerOrganizationId], [TagColor]) SELECT [ID], [Text], [CustomerOrganizationId], [TagColor] FROM [dbo].[Tags]
go
SET IDENTITY_INSERT [dbo].[Tags_49D3561196444590B334242457160E63] OFF
go



DROP TABLE [dbo].[Tags]
go
EXEC sp_rename '[dbo].[Tags_49D3561196444590B334242457160E63]', 'Tags', 'OBJECT'
go


ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [PK_Tags] PRIMARY KEY ([ID])
 ON [Lookup_Data]
go

ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [UK_Tags_Text_Customer_Organization_ID] UNIQUE ([Text],[CustomerOrganizationId])
 ON [Lookup_Data]
go

GRANT INSERT ON [dbo].[Tags] TO [mindfire] AS [dbo]
go
GRANT SELECT ON [dbo].[Tags] TO [mindfire] AS [dbo]
go
