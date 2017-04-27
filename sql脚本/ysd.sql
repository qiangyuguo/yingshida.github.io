USE [YingShiDa]
GO
/****** Object:  Table [dbo].[Talent_Concept]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talent_Concept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](30) NULL,
	[UserName] [nvarchar](30) NULL,
	[PassWord] [nvarchar](30) NULL,
	[Phone] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Presence]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Presence](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Concept]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Concept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[BrowseTimes] [int] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Department] [nvarchar](20) NULL,
	[Number] [int] NULL,
	[Responsibilities] [ntext] NULL,
	[JobRequirements] [ntext] NULL,
	[Salary] [nvarchar](20) NULL,
	[Language] [int] NULL,
 CONSTRAINT [PK__Recruitm__3214EC275006DFF2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘岗位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recruitment', @level2type=N'COLUMN',@level2name=N'Title'
GO
/****** Object:  Table [dbo].[ProductRelation]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRelation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductDetailID] [nvarchar](30) NOT NULL,
	[ProductID] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ProductRelation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品详情ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductRelation', @level2type=N'COLUMN',@level2name=N'ProductDetailID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联的产品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductRelation', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
/****** Object:  Table [dbo].[ProductCenterModel]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCenterModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductModelID] [nvarchar](30) NULL,
	[ProductID] [nvarchar](30) NULL,
	[ProductModel] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Language] [int] NULL,
 CONSTRAINT [PK__ProductC__3214EC276ABAD62E] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCenterDetail]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCenterDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductDetailID] [nvarchar](30) NULL,
	[ProductModelID] [nvarchar](30) NULL,
	[Title] [nvarchar](30) NULL,
	[Series] [nvarchar](20) NULL,
	[ClothAngle] [nvarchar](20) NULL,
	[Advantage] [ntext] NULL,
	[TechnicalParameter] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[FileName] [nvarchar](500) NULL,
	[Language] [int] NULL,
 CONSTRAINT [PK__ProductC__3214EC276E8B6712] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductCenterDetail', @level2type=N'COLUMN',@level2name=N'TechnicalParameter'
GO
/****** Object:  Table [dbo].[ProductCenter]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCenter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [nvarchar](30) NULL,
	[ProductTitle] [nvarchar](30) NULL,
	[ProductType] [int] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InTeam]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InTeam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content1] [nvarchar](30) NULL,
	[COntent2] [nvarchar](30) NULL,
	[Content3] [nvarchar](30) NULL,
	[CreatePeople] [nvarchar](30) NULL,
	[TeamPicname] [nvarchar](500) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Language] [int] NULL,
 CONSTRAINT [PK__InTeam__3214EC27267ABA7A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industry_News]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[BrowseTimes] [int] NULL,
	[LogoUrl] [nvarchar](500) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InBanner]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InBanner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[CreatePeople] [nvarchar](30) NULL,
	[BannerPicname] [nvarchar](500) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Language] [int] NULL,
 CONSTRAINT [PK__InBanner__3214EC271ED998B2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_US]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_US](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Department] [nvarchar](30) NULL,
	[Company] [nvarchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Fax] [nvarchar](30) NULL,
	[Postcode] [nvarchar](20) NULL,
	[mailbox] [nvarchar](20) NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[BrowseTimes] [int] NULL,
	[LogoUrl] [nvarchar](500) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Profile]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Profile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[TextUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_News]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateCompany] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[BrowseTimes] [int] NULL,
	[LogoUrl] [nvarchar](500) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Location]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Location](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Honor]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Honor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_History]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_History](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Culture]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Culture](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Content] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonQuestion]    Script Date: 04/27/2017 12:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonQuestion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[ContentQuestion] [ntext] NULL,
	[ContentAnswer] [ntext] NULL,
	[CreatetPeople] [nvarchar](30) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[LogoUrl] [nvarchar](50) NULL,
	[Language] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Common_FastPageList]    Script Date: 04/27/2017 12:40:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--存储过程
CREATE procedure [dbo].[Common_FastPageList]   
@sql nvarchar(max),	--要执行的sql语句
@page int=1, 			--要显示的页码
@pageSize int,			--每页的大小
@pageCount int=0 out,	--总页数
@recordCount int=0 out	--总记录数
as
set nocount on
declare @p1 int
exec sp_cursoropen @p1 output,@sql,@scrollopt=1,@ccopt=1,@rowcount=@pagecount output
set @recordCount = @pageCount
select @pagecount=ceiling(1.0*@pagecount/@pagesize)
	,@page=(@page-1)*@pagesize+1
exec sp_cursorfetch @p1,16,@page,@pagesize 
select @pageCount,@recordCount;
GO
