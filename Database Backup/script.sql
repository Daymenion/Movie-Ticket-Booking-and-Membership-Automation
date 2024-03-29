USE [master]
GO
/****** Object:  Database [bookshow]    Script Date: 25-08-2018 18:40:46 ******/
CREATE DATABASE [bookshow]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookshow', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bookshow.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookshow_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bookshow_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bookshow] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookshow].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bookshow] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bookshow] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bookshow] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bookshow] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bookshow] SET ARITHABORT OFF 
GO
ALTER DATABASE [bookshow] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [bookshow] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bookshow] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bookshow] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bookshow] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bookshow] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bookshow] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bookshow] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bookshow] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bookshow] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bookshow] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bookshow] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bookshow] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bookshow] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bookshow] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bookshow] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bookshow] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bookshow] SET RECOVERY FULL 
GO
ALTER DATABASE [bookshow] SET  MULTI_USER 
GO
ALTER DATABASE [bookshow] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bookshow] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bookshow] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bookshow] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bookshow] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bookshow] SET QUERY_STORE = OFF
GO
USE [bookshow]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [bookshow]
GO
/****** Object:  User [test]    Script Date: 25-08-2018 18:40:46 ******/
CREATE USER [test] FOR LOGIN [test] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[booked]    Script Date: 25-08-2018 18:40:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booked](
	[id] [bigint] NOT NULL,
	[uid] [varchar](50) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[url] [varchar](500) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[time] [varchar](50) NOT NULL,
	[amt] [varchar](50) NOT NULL,
	[theater] [varchar](50) NOT NULL,
	[seats] [varchar](100) NOT NULL,
 CONSTRAINT [PK_booked] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mainpic]    Script Date: 25-08-2018 18:40:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainpic](
	[id] [varchar](50) NULL,
	[moviename] [varchar](100) NOT NULL,
	[url] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mtable]    Script Date: 25-08-2018 18:40:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtable](
	[movieid] [varchar](50) NOT NULL,
	[mname] [varchar](50) NULL,
	[mgener] [varchar](50) NULL,
	[mduration] [varchar](50) NULL,
	[mlang] [varchar](50) NULL,
	[mcast] [varchar](50) NULL,
	[mrelease] [date] NULL,
	[mrating] [varchar](50) NULL,
	[youtubeurl] [text] NULL,
	[posterurl] [text] NULL,
	[msynopsis] [text] NULL,
 CONSTRAINT [PK_mtable] PRIMARY KEY CLUSTERED 
(
	[movieid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mtable1]    Script Date: 25-08-2018 18:40:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtable1](
	[mname] [varchar](max) NULL,
	[date] [date] NULL,
	[tname] [varchar](max) NULL,
	[TIME] [varchar](50) NULL,
	[s_price] [int] NULL,
	[p_price] [int] NULL,
	[r_price] [int] NULL,
	[ts_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mtable2]    Script Date: 25-08-2018 18:40:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtable2](
	[ts_id] [int] NOT NULL,
	[A1] [varchar](50) NULL,
	[A2] [varchar](max) NULL,
	[A3] [varchar](50) NULL,
	[A4] [varchar](50) NULL,
	[A5] [varchar](50) NULL,
	[A6] [varchar](50) NULL,
	[B1] [varchar](50) NULL,
	[B2] [varchar](50) NULL,
	[B3] [varchar](50) NULL,
	[B4] [varchar](50) NULL,
	[B5] [varchar](50) NULL,
	[B6] [varchar](50) NULL,
	[B7] [varchar](50) NULL,
	[B8] [varchar](50) NULL,
	[C1] [varchar](50) NULL,
	[C2] [varchar](50) NULL,
	[C3] [varchar](50) NULL,
	[C4] [varchar](50) NULL,
	[C5] [varchar](50) NULL,
	[C6] [varchar](50) NULL,
	[C7] [varchar](50) NULL,
	[C8] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mtables]    Script Date: 25-08-2018 18:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtables](
	[ts_id] [int] NULL,
	[A1] [varchar](50) NULL,
	[A2] [varchar](50) NULL,
	[A3] [varchar](50) NULL,
	[A4] [varchar](50) NULL,
	[A5] [varchar](50) NULL,
	[A6] [varchar](50) NULL,
	[B1] [varchar](50) NULL,
	[B2] [varchar](50) NULL,
	[B3] [varchar](50) NULL,
	[B4] [varchar](50) NULL,
	[B5] [varchar](50) NULL,
	[B6] [varchar](50) NULL,
	[B7] [varchar](50) NULL,
	[B8] [varchar](50) NULL,
	[C1] [varchar](50) NULL,
	[C2] [varchar](50) NULL,
	[C3] [varchar](50) NULL,
	[C4] [varchar](50) NULL,
	[C5] [varchar](50) NULL,
	[C6] [varchar](50) NULL,
	[C7] [varchar](50) NULL,
	[C8] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersdl]    Script Date: 25-08-2018 18:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersdl](
	[Username] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Wallet] [bigint] NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_usersdl] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32099999, N'arjun', N'Captain America: Civil War', N'http://ia.media-imdb.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_SY1000_CR0,0,674,1000_AL_.jpg', N'2017-06-10', N'09:30 AM', N'560', N'PVR LowerParel Phoniex', N'A3,A5,A6,A7')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100001, N'arjun', N'Batman vs Superman: Dawn of Justice (u/a) English', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'2017-06-11', N'09:30 AM', N'660', N'PVR SION,SION CIRCLE', N'A1,A3,A4,A5')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100002, N'arjun', N'Batman vs Superman: Dawn of Justice', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'6/16/2017 12:00:00 AM', N'12:30 AM', N'0', N'PVR : SION', N'C2, A2, B2, ')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100003, N'arjun', N'Batman vs Superman: Dawn of Justice', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'6/16/2017', N'12:30 AM', N'0', N'PVR : SION', N'C3, ')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100004, N'arjun', N'Batman vs Superman: Dawn of Justice', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'6/16/2017', N'12:30 AM', N'1180', N'PVR : SION', N'A3, B3, ')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100005, N'projecttt@gmail.com', N'Batman vs Superman: Dawn of Justice', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'6/16/2017', N'12:30 AM', N'990', N'PVR : SION', N'C4, C4, C5, C6')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100006, N'infinityprojectt@gmail.com', N'The Mummy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM5NzM5NTgxN15BMl5BanBnXkFtZTgwNDEyNTk4MTI@._V1_QL50_SY1000_CR0,0,631,1000_AL_.jpg', N'6/15/2017', N'01:30 PM', N'630', N'PVR: Phoenix, Lower Parel', N'A1, A1, B1')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100007, N'infinityprojectt@gmail.com', N'Wonder Woman', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_QL50_SY1000_SX675_AL_.jpg', N'6/15/2017', N'05:30 PM', N'990', N'PVP Kotak Lower Parel', N'C3, C3, C1, C2')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100008, N'infinity@gmail.com', N'The Mummy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM5NzM5NTgxN15BMl5BanBnXkFtZTgwNDEyNTk4MTI@._V1_QL50_SY1000_CR0,0,631,1000_AL_.jpg', N'6/19/2017', N'01:30 PM', N'500', N'PVR: Phoenix, Lower Parel', N'B5, B5, B4')
INSERT [dbo].[booked] ([id], [uid], [title], [url], [date], [time], [amt], [theater], [seats]) VALUES (32100009, N'infinity@gmail.com', N'Wonder Woman', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_QL50_SY1000_SX675_AL_.jpg', N'6/19/2017', N'05:30 PM', N'990', N'PVP Kotak Lower Parel', N'C4, C4, C5, C6')
INSERT [dbo].[mainpic] ([id], [moviename], [url]) VALUES (N'0', N'Justice League', N'http://img02.deviantart.net/8170/i/2016/226/5/5/justice_league_poster_by_tobsternober_by_tobsternober-dadvs19.jpg')
INSERT [dbo].[mainpic] ([id], [moviename], [url]) VALUES (N'1', N'Transformers: The Last Knight', N'https://www.outincanberra.com.au/wp-content/uploads/2017/05/tformers.png')
INSERT [dbo].[mainpic] ([id], [moviename], [url]) VALUES (N'2', N'Cars 3 (U) English', N'https://www.alamo.com/content/alamo/en_US/car-rental/disney/cars-3-tour/_jcr_content/cq-colctrl-lt20-c0/container/newsection/textimage_205212172/imagePath.img.png/1490208939314.png')
INSERT [dbo].[mainpic] ([id], [moviename], [url]) VALUES (N'3', N'Thor: Ragnarok', N'https://pics.castofmovies.com/2017/04/ThorRagnarokppal.jpg')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'BY2017', N'Baywatch', N' Action, Comedy, Drama ', N'01.56 Hrs', N'English', N'Dwayne Johnson, Zac Efron, Alexandra Daddario', CAST(N'2017-05-25' AS Date), N'5.7', N'https://www.youtube.com/v/uo2F1eRpMoI', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNTA4MjQ0ODQzNF5BMl5BanBnXkFtZTgwNzA5NjYzMjI@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Devoted lifeguard Mitch Buchannon butts heads with a brash new recruit, as they uncover a criminal plot that threatens the future of the bay.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'C3207', N'Cars 3 (U) English', N'Animation, Adventure, Comedy', N'01.45 Hrs', N'English', N'Owen Wilson, Cristela Alonzo, Chris Cooper', CAST(N'2017-06-16' AS Date), N'7.8', N'https://www.youtube.com/v/2LeOH9AGJQM', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0NzU2OTYyN15BMl5BanBnXkFtZTgwMTkwOTg2MTI@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Lightning McQueen sets out to prove to a new generation of racers that he''s still the best race car in the world.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'JL-217', N'Justice League', N'Action, Adventure, Fantasy', N'02.39 Hrs', N'English', N' Ben Affleck, Gal Gadot, Jason Momoa', CAST(N'2017-09-06' AS Date), N'8.1', N'https://www.youtube.com/v/Fm3VgcyaPfo&t=2s', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI2NjI2MDQ0NV5BMl5BanBnXkFtZTgwMTc1MjAwMjI@._V1_UX182_CR0,0,182,268_AL__QL50.jpg', N'Fueled by his restored faith in humanity and inspired by Superman''s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'Marvel-CW', N'Captain America: Civil War', N'Action, Adventure, Sci-Fi', N'2.27 Hrs', N'English', N'Chris Evans,Robert Downey Jr., Scarlett Johansson', CAST(N'2016-05-06' AS Date), N'8.2', N'https://www.youtube.com/v/xnv__ogkt0M', N'http://ia.media-imdb.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_SY1000_CR0,0,674,1000_AL_.jpg', N'With many people fearing the actions of super heroes, the government decides to push for the Hero Registration Act, a law that limits a hero''s actions. This results in a division in The Avengers. Iron Man stands with this Act, claiming that their actions must be kept in check otherwise cities will continue to be destroyed, but Captain America feels that saving the world is daring enough and that they cannot rely on the government to protect the world. This escalates into an all-out war between Team Iron Man (Iron Man, Black Panther, Vision, Black Widow, War Machine, and Spiderman) and Team Captain America (Captain America, Bucky Barnes, Falcon, Sharon Carter, Scarlet Witch, Hawkeye, and Ant Man) while a new villain emerges.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'PC2017', N'Pirates of the Caribbean: Dead Men Tell No Tales', N'Action, Adventure, Fantasy', N'02.09 Hrs', N'English', N'Johnny Depp, Geoffrey Rush, Javier Bardem', CAST(N'2017-05-26' AS Date), N'7.1', N'https://www.youtube.com/v/Hgeu5rhoxxY', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYyMTcxNzc5M15BMl5BanBnXkFtZTgwOTg2ODE2MTI@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Captain Jack Sparrow searches for the trident of Poseidon while being pursued by an undead sea captain and his crew.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'TM2017', N'The Mummy', N'Action, Adventure, Fantasy', N'01.50 Hrs', N'English', N'Tom Cruise, Sofia Boutella, Annabelle Wallis', CAST(N'2017-06-09' AS Date), N'5.9', N'https://www.youtube.com/v/IjHgzkQM2Sg', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM5NzM5NTgxN15BMl5BanBnXkFtZTgwNDEyNTk4MTI@._V1_QL50_SY1000_CR0,0,631,1000_AL_.jpg', N'An ancient princess is awakened from her crypt beneath the desert, bringing with her malevolence grown over millennia, and terrors that defy human comprehension.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'TR207', N'Thor: Ragnarok', N'Action, Adventure, Fantasy', N'09.30 Hrs', N'English', N' Chris Hemsworth, Tom Hiddleston, Cate Blanchett', CAST(N'2017-11-03' AS Date), N'8.5', N'https://www.youtube.com/v/v7MGUNV8MxU', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjE1ODgwOTkzNF5BMl5BanBnXkFtZTgwMDcwMTg5MTI@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Imprisoned, the mighty Thor finds himself in a lethal gladiatorial contest against the Hulk, his former ally. Thor must fight for survival and race against time to prevent the all-powerful Hela from destroying his home and the Asgardian civilization.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'TTLK207', N'Transformers: The Last Knight', N'Action, Adventure, Sci-Fi', N'02.28 Hrs', N'English', N' Mark Wahlberg, Laura Haddock, Gemma Chan', CAST(N'2017-06-21' AS Date), N'8.1', N'https://www.youtube.com/v/6Vtf0MszgP8', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk3OTI3MDk4N15BMl5BanBnXkFtZTgwNDg2ODIyMjI@._V1_QL50_.jpg', N'Humans and Transformers are at war, Optimus Prime is gone. The key to saving our future lies buried in the secrets of the past, in the hidden history of Transformers on Earth.')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'WB-BVS', N'Batman vs Superman: Dawn of Justice', N'Action, Adventure, Sci-Fi', N'2.31 Hrs', N'English', N'Ben Affleck, Henry Cavill, Amy Adams', CAST(N'2016-03-25' AS Date), N'7', N'https://www.youtube.com/v/Cle_rKBpZ28', N'http://ia.media-imdb.com/images/M/MV5BNTE5NzU3MTYzOF5BMl5BanBnXkFtZTgwNTM5NjQxODE@._V1_.jpg', N'The General public is controversial over having superman on their planet and letting the dark knight pursue the streets of Gotham. And while this is happening, a power-phobic batman tries to attack superman, meanwhile, superman tries to settle on a decision, and Lex Luther, a millionaire, tries to use his own advantages to fight the man of steel. Written by Mine Turtle')
INSERT [dbo].[mtable] ([movieid], [mname], [mgener], [mduration], [mlang], [mcast], [mrelease], [mrating], [youtubeurl], [posterurl], [msynopsis]) VALUES (N'WW207', N'Wonder Woman', N'Action, Adventure, Fantasy', N'09.30 Hrs', N'English', N'Gal Gadot, Chris Pine, Robin Wright', CAST(N'2017-06-02' AS Date), N'8.2', N'https://www.youtube.com/v/VSB4wGIdDwo', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_QL50_SY1000_SX675_AL_.jpg', N'Before she was Wonder Woman she was Diana, princess of the Amazons, trained warrior. When a pilot crashes and tells of conflict in the outside world, she leaves home to fight a war to end all wars, discovering her full powers and true destiny.')
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 1)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 2)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'5:30 PM', 250, 170, 110, 3)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 4)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 5)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'7:30 PM', 250, 170, 110, 6)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 7)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 8)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 9)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 10)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 11)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 12)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 13)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 14)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 15)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 16)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 17)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 18)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 19)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:45 PM', 300, 230, 150, 20)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 21)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 22)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'4:30 PM', 300, 230, 150, 23)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 24)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 25)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 26)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 27)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 28)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 29)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 30)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 31)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 32)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 33)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 34)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 35)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 36)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 37)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 38)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 39)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 40)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 41)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-30' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 42)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 43)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 44)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'5:30 PM', 250, 170, 110, 45)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 46)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 47)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'7:30 PM', 250, 170, 110, 48)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 49)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 50)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 51)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 52)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 53)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 54)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 55)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 56)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 57)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 58)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 59)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Raman Raghav 2.0', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 60)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 61)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:45 PM', 300, 230, 150, 62)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 63)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:45 AM', 300, 230, 150, 64)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'4:30 PM', 300, 230, 150, 65)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Central Intelligence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 66)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 67)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 68)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 69)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 70)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 71)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'X-Men: Apocalypse', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 72)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 73)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 74)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 75)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 76)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 77)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 78)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'10:30 AM', 250, 170, 110, 79)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'3:30 PM', 250, 170, 110, 80)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Phoenix, Lower Parel', N'6:30 PM', 250, 170, 110, 81)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'10:30 AM', 300, 230, 150, 82)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'3:30 PM', 300, 230, 150, 83)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Independence Day: Resurgence', CAST(N'2016-06-29' AS Date), N'PVR: Market City, Kurla', N'6:30 PM', 300, 230, 150, 84)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2016-07-01' AS Date), N'PVR : SION', N'1:30 PM', 150, 250, 350, 85)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Finding Dory', CAST(N'2017-06-15' AS Date), N'PVR: Market City, Kurla', N'08:30 AM', 330, 480, 750, 87)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Batman vs Superman: Dawn of Justice', CAST(N'2017-06-16' AS Date), N'PVR : SION', N'12:30 AM', 330, 480, 700, 88)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Captain America: Civil War', CAST(N'2017-06-10' AS Date), N'PVR: Phoenix, Lower Parel', N'03:30 PM', 300, 450, 600, 89)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Baywatch', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'12:00 PM', 250, 380, 380, 90)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Baywatch', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'05:00 PM', 330, 450, 600, 91)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Baywatch', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'08:30 PM', 330, 480, 600, 92)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Baywatch', CAST(N'2017-06-19' AS Date), N'PVR: Market City, Kurla', N'12:00 PM', 250, 360, 500, 93)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Baywatch', CAST(N'2017-06-19' AS Date), N'PVR: Market City, Kurla', N'08:30 PM', 330, 480, 500, 94)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'The Mummy', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'01:30 PM', 250, 250, 380, 95)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'The Mummy', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'08:45 PM', 330, 330, 480, 96)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Wonder Woman', CAST(N'2017-06-19' AS Date), N'PVR: Phoenix, Lower Parel', N'11:00 AM', 250, 250, 380, 97)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Wonder Woman', CAST(N'2017-06-19' AS Date), N'PVP Kotak Lower Parel', N'05:30 PM', 330, 480, 600, 98)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Wonder Woman', CAST(N'2017-06-19' AS Date), N'PVP Kotak Lower Parel', N'09:30 PM', 330, 480, 600, 99)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Wonder Woman', CAST(N'2017-06-19' AS Date), N'PVR: Market City, Kurla', N'01:30 PM', 330, 400, 550, 100)
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Cars 3 (U) English', CAST(N'2017-06-20' AS Date), N'PVR Dadar', N'11:30 PM', 500, 600, 800, 101)
GO
INSERT [dbo].[mtable1] ([mname], [date], [tname], [TIME], [s_price], [p_price], [r_price], [ts_id]) VALUES (N'Thor: Ragnarok', CAST(N'2017-12-15' AS Date), N'PVR : SION', N'01:30 PM', 4354, 544, 54, 102)
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (1, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (2, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (3, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (4, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (5, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (6, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (7, N'0', N'1', N'0', N'1', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (8, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (9, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (10, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (11, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (12, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (13, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'4', N'0', N'1', N'0', N'1', N'0', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (14, N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (15, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (16, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (17, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (18, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (19, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (20, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (21, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (22, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (23, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (24, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (25, N'1', N'0', N'1', N'1', N'1', N'3', N'1', N'0', N'1', N'1', N'1', N'1', N'2', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (26, N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'0', N'1,150', N'1', N'0', N'0', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (27, N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (28, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (29, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (30, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (31, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (32, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (33, N'1,150', N'0', N'1,150', N'0', N'0', N'1,150', N'1,150', N'0', N'0', N'1,150', N'0', N'0', N'0', N'1,150', N'1,150', N'0', N'0', N'1,150', N'0', N'0', N'0', N'1,150')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (34, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (35, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (36, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (37, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (38, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (39, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (40, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (41, N'1,150', N'0', N'1,150', N'1,150', N'0', N'0', N'1,150', N'0', N'0', N'1,150', N'1,150', N'0', N'0', N'0', N'1,150', N'0', N'0', N'1,150', N'1,150', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (42, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (43, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (44, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (45, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (46, N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (47, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (48, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (49, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (50, N'1', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (51, N'0', N'0', N'0', N'0', N'2', N'2', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (52, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (53, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1,110', N'1,110', N'1,110', N'1,110', N'1,110', N'1,110')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (54, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (55, N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (56, N'1,110', N'1', N'0', N'0', N'1', N'1,110', N'1,110', N'0', N'1', N'1,110', N'0', N'1', N'0', N'8,110', N'1', N'1,110', N'0', N'1', N'1', N'0', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (57, N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (59, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (60, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (61, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (62, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (63, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (64, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (65, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (66, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (67, N'0', N'1', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'0', N'1', N'1', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (68, N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (69, N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (70, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (71, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (72, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (73, N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (74, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (75, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (76, N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (77, N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (78, N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (79, N'2', N'2', N'2', N'2', N'2', N'2', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'2', N'2', N'2', N'2', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (80, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (81, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (82, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (83, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1,150', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1,150', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (58, N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'1', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (84, N'0', N'1', N'0', N'0', N'1', N'1', N'1', N'0', N'1', N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (85, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (86, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (87, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (88, N'1', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (89, N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (90, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (91, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (92, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (93, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (94, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (95, N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (96, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (97, N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (98, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (99, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (100, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
GO
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (101, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtable2] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (102, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (1, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (2, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (3, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (4, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (5, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (6, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (7, N'0', N'1', N'0', N'1', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (8, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (9, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (10, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (11, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (12, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (13, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'4', N'0', N'1', N'0', N'1', N'0', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (14, N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (15, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (16, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (17, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (18, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (19, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (20, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (21, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (22, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (23, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (24, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (25, N'1', N'0', N'1', N'1', N'1', N'3', N'1', N'0', N'1', N'1', N'1', N'1', N'2', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (26, N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (27, N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (28, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (29, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (30, N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (31, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (32, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (33, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (34, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (35, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (36, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (37, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (38, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (39, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (40, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (41, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (42, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (43, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (44, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (45, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (46, N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (47, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (48, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (49, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (50, N'1', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (51, N'0', N'0', N'0', N'0', N'2', N'2', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (52, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (53, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (54, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (55, N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'0', N'0', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (56, N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'1', N'1', N'0', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (57, N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (59, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (60, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (61, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (62, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (63, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (64, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (65, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (66, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (67, N'0', N'1', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'0', N'1', N'1', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (68, N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (69, N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (70, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (71, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (72, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (73, N'0', N'1', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (74, N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (75, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (76, N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'1', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (77, N'0', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (78, N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (79, N'2', N'2', N'2', N'2', N'2', N'2', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'2', N'2', N'2', N'2', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (80, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (81, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (82, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (83, N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[mtables] ([ts_id], [A1], [A2], [A3], [A4], [A5], [A6], [B1], [B2], [B3], [B4], [B5], [B6], [B7], [B8], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8]) VALUES (84, N'0', N'1', N'0', N'0', N'1', N'1', N'1', N'0', N'1', N'0', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[usersdl] ([Username], [Password], [Wallet], [type]) VALUES (N'admin', N'123456', 488, 1)
INSERT [dbo].[usersdl] ([Username], [Password], [Wallet], [type]) VALUES (N'Arjun', N'123456', 1234, 0)
INSERT [dbo].[usersdl] ([Username], [Password], [Wallet], [type]) VALUES (N'infinity@gmail.com', N'123456', 0, 0)
INSERT [dbo].[usersdl] ([Username], [Password], [Wallet], [type]) VALUES (N'infinityprojectt@gmail.com', N'123456', 0, 0)
INSERT [dbo].[usersdl] ([Username], [Password], [Wallet], [type]) VALUES (N'projecttt@gmail.com', N'123456', 0, 0)
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A1]  DEFAULT ('0') FOR [A1]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A2]  DEFAULT ((0)) FOR [A2]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A3]  DEFAULT ('0') FOR [A3]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A4]  DEFAULT ('0') FOR [A4]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A5]  DEFAULT ('0') FOR [A5]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_A6]  DEFAULT ('0') FOR [A6]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B1]  DEFAULT ('0') FOR [B1]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B2]  DEFAULT ('0') FOR [B2]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B3]  DEFAULT ('0') FOR [B3]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B4]  DEFAULT ('0') FOR [B4]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B5]  DEFAULT ('0') FOR [B5]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B6]  DEFAULT ('0') FOR [B6]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B7]  DEFAULT ('0') FOR [B7]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_B8]  DEFAULT ('0') FOR [B8]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C1]  DEFAULT ('0') FOR [C1]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C2]  DEFAULT ('0') FOR [C2]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C3]  DEFAULT ('0') FOR [C3]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C4]  DEFAULT ('0') FOR [C4]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C5]  DEFAULT ('0') FOR [C5]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C6]  DEFAULT ('0') FOR [C6]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C7]  DEFAULT ('0') FOR [C7]
GO
ALTER TABLE [dbo].[mtable2] ADD  CONSTRAINT [DF_mtable2_C8]  DEFAULT ('0') FOR [C8]
GO
USE [master]
GO
ALTER DATABASE [bookshow] SET  READ_WRITE 
GO
