USE [CarMakerDb]
GO

/****** Object:  Table [dbo].[sub_menu]    Script Date: 16/12/2024 03:23:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sub_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_menuCode] [nvarchar](50) NULL,
	[menu_id] [int] NULL,
	[sub_MenuDescription] [nvarchar](250) NULL,
	[isEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CarMakerDb]
GO

/****** Object:  Table [dbo].[menu_master]    Script Date: 16/12/2024 03:23:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[menu_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu_id] [int] NULL,
	[menu_code] [nvarchar](50) NULL,
	[menu_name] [nvarchar](150) NULL,
	[isEnabled] [bit] NULL,
 CONSTRAINT [PK_menu_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CarMakerDb]
GO

/****** Object:  Table [dbo].[project_master]    Script Date: 16/12/2024 03:23:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[project_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projecNname] [nvarchar](250) NULL,
	[projectDescrition] [nvarchar](500) NULL,
	[isEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CarMakerDb]
GO

/****** Object:  Table [dbo].[project_Transaction]    Script Date: 16/12/2024 03:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[project_Transaction](
	[menu_Id] [int] NULL,
	[submenu_Id] [int] NULL,
	[project_Id] [int] NULL,
	[selectedHardware] [nvarchar](250) NULL,
	[selected_budRate] [nvarchar](250) NULL,
	[selected_HardwareType] [nvarchar](250) NULL,
	[selectedIOPort] [nvarchar](250) NULL,
	[isCanFD] [bit] NULL
) ON [PRIMARY]
GO


