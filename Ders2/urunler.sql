CREATE TABLE [dbo].[urunler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[urun] [nvarchar](100) NOT NULL,
	[birim] [nvarchar](10) NOT NULL,
	[satisfiyati] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_urunler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]