USE [kitaplik]
GO

/****** Object:  Table [dbo].[Kitaplar]    Script Date: 18.01.2022 22:43:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Kitaplar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Sayfa] [int] NULL,
	[Yazar] [varchar](255) NULL,
	[KitapAdi] [varchar](255) NULL,
	[BasimYili] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

