USE [master]
GO
/****** Object:  Database [BootcampHafta3]    Script Date: 4.06.2022 20:40:49 ******/
CREATE DATABASE [BootcampHafta3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BootcampHafta3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BootcampHafta3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BootcampHafta3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BootcampHafta3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BootcampHafta3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BootcampHafta3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BootcampHafta3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BootcampHafta3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BootcampHafta3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BootcampHafta3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BootcampHafta3] SET ARITHABORT OFF 
GO
ALTER DATABASE [BootcampHafta3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BootcampHafta3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BootcampHafta3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BootcampHafta3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BootcampHafta3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BootcampHafta3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BootcampHafta3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BootcampHafta3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BootcampHafta3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BootcampHafta3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BootcampHafta3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BootcampHafta3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BootcampHafta3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BootcampHafta3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BootcampHafta3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BootcampHafta3] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BootcampHafta3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BootcampHafta3] SET RECOVERY FULL 
GO
ALTER DATABASE [BootcampHafta3] SET  MULTI_USER 
GO
ALTER DATABASE [BootcampHafta3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BootcampHafta3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BootcampHafta3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BootcampHafta3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BootcampHafta3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BootcampHafta3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BootcampHafta3', N'ON'
GO
ALTER DATABASE [BootcampHafta3] SET QUERY_STORE = OFF
GO
USE [BootcampHafta3]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Sender] [int] NOT NULL,
	[PostId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTypes]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ContentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friendships]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friendships](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [int] NOT NULL,
	[Reciever] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Friendships] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendshipsApprovements]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendshipsApprovements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FriendshipId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_FriendshipsApprovements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendshipStatuses]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendshipStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FriendshipStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMessageHistories]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMessageHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupMessageId] [int] NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_GroupMessageHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMessages]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
	[Sender] [int] NOT NULL,
	[Reciever] [int] NOT NULL,
 CONSTRAINT [PK_GroupMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupMemberId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_Memberships] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[TypeId] [int] NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
	[Sender] [int] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMessageHistories]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMessageHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserMessageId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserMessageHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMessages]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [int] NOT NULL,
	[Reciever] [int] NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_PostId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_PostId] ON [dbo].[Comments]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_Sender]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_Sender] ON [dbo].[Comments]
(
	[Sender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_TypeId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_TypeId] ON [dbo].[Comments]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Friendships_Reciever]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Friendships_Reciever] ON [dbo].[Friendships]
(
	[Reciever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Friendships_Sender]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Friendships_Sender] ON [dbo].[Friendships]
(
	[Sender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Friendships_StatusId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Friendships_StatusId] ON [dbo].[Friendships]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupMessages_Reciever]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_GroupMessages_Reciever] ON [dbo].[GroupMessages]
(
	[Reciever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupMessages_Sender]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_GroupMessages_Sender] ON [dbo].[GroupMessages]
(
	[Sender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupMessages_TypeId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_GroupMessages_TypeId] ON [dbo].[GroupMessages]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Memberships_GroupId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Memberships_GroupId] ON [dbo].[Memberships]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Memberships_GroupMemberId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Memberships_GroupMemberId] ON [dbo].[Memberships]
(
	[GroupMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Posts_Sender]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Posts_Sender] ON [dbo].[Posts]
(
	[Sender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Posts_TypeId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_Posts_TypeId] ON [dbo].[Posts]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserMessages_Reciever]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserMessages_Reciever] ON [dbo].[UserMessages]
(
	[Reciever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserMessages_Sender]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserMessages_Sender] ON [dbo].[UserMessages]
(
	[Sender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserMessages_TypeId]    Script Date: 4.06.2022 20:40:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserMessages_TypeId] ON [dbo].[UserMessages]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_ContentTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ContentTypes] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_ContentTypes_TypeId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_Sender] FOREIGN KEY([Sender])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_Sender]
GO
ALTER TABLE [dbo].[Friendships]  WITH CHECK ADD  CONSTRAINT [FK_Friendships_FriendshipStatuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[FriendshipStatuses] ([Id])
GO
ALTER TABLE [dbo].[Friendships] CHECK CONSTRAINT [FK_Friendships_FriendshipStatuses_StatusId]
GO
ALTER TABLE [dbo].[Friendships]  WITH CHECK ADD  CONSTRAINT [FK_Friendships_Users_Reciever] FOREIGN KEY([Reciever])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friendships] CHECK CONSTRAINT [FK_Friendships_Users_Reciever]
GO
ALTER TABLE [dbo].[Friendships]  WITH CHECK ADD  CONSTRAINT [FK_Friendships_Users_Sender] FOREIGN KEY([Sender])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friendships] CHECK CONSTRAINT [FK_Friendships_Users_Sender]
GO
ALTER TABLE [dbo].[GroupMessages]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessages_ContentTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ContentTypes] ([Id])
GO
ALTER TABLE [dbo].[GroupMessages] CHECK CONSTRAINT [FK_GroupMessages_ContentTypes_TypeId]
GO
ALTER TABLE [dbo].[GroupMessages]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessages_Groups_Reciever] FOREIGN KEY([Reciever])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupMessages] CHECK CONSTRAINT [FK_GroupMessages_Groups_Reciever]
GO
ALTER TABLE [dbo].[GroupMessages]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessages_Users_Sender] FOREIGN KEY([Sender])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[GroupMessages] CHECK CONSTRAINT [FK_GroupMessages_Users_Sender]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [FK_Memberships_Groups_GroupId]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Users_GroupMemberId] FOREIGN KEY([GroupMemberId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [FK_Memberships_Users_GroupMemberId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_ContentTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ContentTypes] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_ContentTypes_TypeId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Users_Sender] FOREIGN KEY([Sender])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Users_Sender]
GO
ALTER TABLE [dbo].[UserMessages]  WITH CHECK ADD  CONSTRAINT [FK_UserMessages_ContentTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ContentTypes] ([Id])
GO
ALTER TABLE [dbo].[UserMessages] CHECK CONSTRAINT [FK_UserMessages_ContentTypes_TypeId]
GO
ALTER TABLE [dbo].[UserMessages]  WITH CHECK ADD  CONSTRAINT [FK_UserMessages_Users_Reciever] FOREIGN KEY([Reciever])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMessages] CHECK CONSTRAINT [FK_UserMessages_Users_Reciever]
GO
ALTER TABLE [dbo].[UserMessages]  WITH CHECK ADD  CONSTRAINT [FK_UserMessages_Users_Sender] FOREIGN KEY([Sender])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMessages] CHECK CONSTRAINT [FK_UserMessages_Users_Sender]
GO
/****** Object:  StoredProcedure [dbo].[MaxMsgUser]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MaxMsgUser]
AS
select top(3) 
	COUNT(um.Sender) msgCount,
	u.Name from UserMessages um
	join Users u on um.Sender=u.Id
	group by u.Name
	order by msgCount desc	
GO
/****** Object:  Trigger [dbo].[FriendsApprove]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[FriendsApprove]
   ON  [dbo].[Friendships]
   AFTER INSERT
AS 
BEGIN
DECLARE @FRIENDSHIPID INT, @STATUSID INT
SELECT @FRIENDSHIPID=Id,@STATUSID=StatusId FROM inserted

INSERT INTO FriendshipsApprovements (FriendshipId,StatusId)  VALUES (@FRIENDSHIPID,@STATUSID)

END
GO
ALTER TABLE [dbo].[Friendships] ENABLE TRIGGER [FriendsApprove]
GO
/****** Object:  Trigger [dbo].[MSG_UPDATE]    Script Date: 4.06.2022 20:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[MSG_UPDATE]
ON [dbo].[UserMessages]
INSTEAD OF UPDATE
AS
BEGIN
DECLARE @MESSAGEID AS INT
DECLARE @CONTENT AS VARCHAR(max)
DECLARE @TYPE AS INT
DECLARE @SENDDATE AS DATETIME

SELECT @MESSAGEID=Id,@CONTENT=Content,@TYPE=TypeId,@SENDDATE=SendDate FROM inserted

INSERT INTO UserMessageHistories (UserMessageId,Content,Type,UpdateDate)
VALUES (@MESSAGEID,@CONTENT,@TYPE,@SENDDATE)

UPDATE UserMessages SET Content=@CONTENT,SendDate=GETDATE()
WHERE Id=@MESSAGEID

END
GO
ALTER TABLE [dbo].[UserMessages] ENABLE TRIGGER [MSG_UPDATE]
GO
USE [master]
GO
ALTER DATABASE [BootcampHafta3] SET  READ_WRITE 
GO
