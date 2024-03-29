USE [CWN_Service_Sms]
GO
/****** Object:  Table [dbo].[MST_Register]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Register](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [varchar](500) NULL,
	[Username] [varchar](200) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[SenderId] [varchar](11) NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_MST_Register_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_Register_Log]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Register_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Event] [varchar](50) NULL,
	[Token] [nvarchar](max) NULL,
	[Username] [varchar](200) NULL,
	[Password] [varchar](200) NULL,
	[SenderId] [varchar](11) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[LogDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Trans_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sms_Job]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sms_Job](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [varchar](11) NOT NULL,
	[ReferenceKey1] [varchar](100) NULL,
	[ReferenceKey2] [varchar](100) NULL,
	[ReferenceKey3] [varchar](100) NULL,
	[FromName] [varchar](100) NOT NULL,
	[ToNumber] [varchar](11) NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Sms_WaitingSend] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sms_Job_Log]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sms_Job_Log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[LogEvent] [nvarchar](max) NULL,
	[LogContent] [nvarchar](max) NULL,
	[LogDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Sms_Job_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sms_Send]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sms_Send](
	[SendId] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [varchar](20) NOT NULL,
	[ReferenceKey1] [varchar](100) NULL,
	[ReferenceKey2] [varchar](100) NULL,
	[ReferenceKey3] [varchar](100) NULL,
	[FromName] [varchar](11) NOT NULL,
	[ToNumber] [varchar](11) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[ResultTrackingID] [varchar](200) NULL,
	[ResultContent] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Sms_Send] PRIMARY KEY CLUSTERED 
(
	[SendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sms_Tracking]    Script Date: 16/12/2019 11:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sms_Tracking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SendId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[SendDateTime] [datetime] NULL,
	[TrackingID] [varchar](200) NULL,
	[TrackingResult] [varchar](max) NULL,
	[TrackingDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TRN_Response] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MST_Register] ON 

INSERT [dbo].[MST_Register] ([Id], [Token], [Username], [Password], [SenderId], [StartTime], [EndTime], [CreateDate], [UpdateDate], [IsActive], [Role]) VALUES (85, N'e2QxMDljMDA0LTU5Y2UtNDQ4Mi1iZTIwLWU5MzEzYzJlZDk3ZnwwODowMDowMHwyMjowMDowMHxDU1BTZXJ2aWNlVXBkYXRlfQ==', N'Administrator', N'ezE5ODF9', N'Admin', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(N'2019-10-03T16:14:40.483' AS DateTime), CAST(N'2019-10-04T16:01:48.390' AS DateTime), 1, N'Admin')
INSERT [dbo].[MST_Register] ([Id], [Token], [Username], [Password], [SenderId], [StartTime], [EndTime], [CreateDate], [UpdateDate], [IsActive], [Role]) VALUES (92, N'ezc3M2IxYWFkLTlmYjktNDJmYi04ZGYwLTk3ODFhZTk5NDQ4OHwxMzowMDowMHwxOTo1OTowMHxFVGF4fQ==', N'ETax', N'ezE5ODF9', N'ETax', CAST(N'13:00:00' AS Time), CAST(N'19:59:00' AS Time), CAST(N'2019-11-29T11:50:53.960' AS DateTime), CAST(N'2019-12-12T14:31:45.527' AS DateTime), 1, NULL)
INSERT [dbo].[MST_Register] ([Id], [Token], [Username], [Password], [SenderId], [StartTime], [EndTime], [CreateDate], [UpdateDate], [IsActive], [Role]) VALUES (93, N'ezZkNTc3YmQ2LWFlMzktNGIzYS04MDA0LWJhOWQxYTUxMWU4YXwxNTowNTowMHwxNjo1OTowMHxFVGF4fQ==', N'ETaxRobot', N'e2V0YXh9', N'ETax', CAST(N'15:05:00' AS Time), CAST(N'16:59:00' AS Time), CAST(N'2019-12-12T15:02:16.357' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[MST_Register] OFF
SET IDENTITY_INSERT [dbo].[MST_Register_Log] ON 

INSERT [dbo].[MST_Register_Log] ([Id], [Event], [Token], [Username], [Password], [SenderId], [StartTime], [EndTime], [LogDate]) VALUES (13, N'Register User', N'ezZkNTc3YmQ2LWFlMzktNGIzYS04MDA0LWJhOWQxYTUxMWU4YXwxNTowNTowMHwxNjo1OTowMHxFVGF4fQ==', N'ETaxRobot', N'e2V0YXh9', N'ETax', CAST(N'15:05:00' AS Time), CAST(N'16:59:00' AS Time), CAST(N'2019-12-12T15:02:16.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[MST_Register_Log] OFF
SET IDENTITY_INSERT [dbo].[Sms_Job_Log] ON 

INSERT [dbo].[Sms_Job_Log] ([id], [JobId], [LogEvent], [LogContent], [LogDate]) VALUES (3, 26, N'Send Ok', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566008","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-7e6504488e2d43dbb528e7286686defb","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา"}]}]}', CAST(N'2019-12-12T15:05:00.900' AS DateTime))
INSERT [dbo].[Sms_Job_Log] ([id], [JobId], [LogEvent], [LogContent], [LogDate]) VALUES (4, 27, N'Send Ok', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566012","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-26684ad36bd8423091f7e0689fe7fa54","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 2"}]}]}', CAST(N'2019-12-12T15:05:06.347' AS DateTime))
INSERT [dbo].[Sms_Job_Log] ([id], [JobId], [LogEvent], [LogContent], [LogDate]) VALUES (5, 28, N'Send Ok', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566021","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-191a74aad97e46d0a36c415c01940cb0","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 3"}]}]}', CAST(N'2019-12-12T15:05:11.387' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sms_Job_Log] OFF
SET IDENTITY_INSERT [dbo].[Sms_Send] ON 

INSERT [dbo].[Sms_Send] ([SendId], [SenderId], [ReferenceKey1], [ReferenceKey2], [ReferenceKey3], [FromName], [ToNumber], [Message], [ResultTrackingID], [ResultContent], [CreateDate]) VALUES (145, N'ETax', N'TrueCorporate', N'RealMove', N'Doc0000001', N'ETax', N'0886380638', N'ส่งข้อความ ผ่านเซอร์เวอร์', NULL, NULL, CAST(N'2019-12-12T14:42:56.690' AS DateTime))
INSERT [dbo].[Sms_Send] ([SendId], [SenderId], [ReferenceKey1], [ReferenceKey2], [ReferenceKey3], [FromName], [ToNumber], [Message], [ResultTrackingID], [ResultContent], [CreateDate]) VALUES (146, N'ETax', N'TrueCorporate', N'RealMove', N'Doc0000001', N'ETax', N'0886380638', N'ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา', N'66886380638-7e6504488e2d43dbb528e7286686defb', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566008","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-7e6504488e2d43dbb528e7286686defb","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา"}]}]}', CAST(N'2019-12-12T15:02:57.280' AS DateTime))
INSERT [dbo].[Sms_Send] ([SendId], [SenderId], [ReferenceKey1], [ReferenceKey2], [ReferenceKey3], [FromName], [ToNumber], [Message], [ResultTrackingID], [ResultContent], [CreateDate]) VALUES (147, N'ETax', N'TrueCorporate', N'RealMove', N'Doc0000001', N'ETax', N'0886380638', N'ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 2', N'66886380638-26684ad36bd8423091f7e0689fe7fa54', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566012","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-26684ad36bd8423091f7e0689fe7fa54","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 2"}]}]}', CAST(N'2019-12-12T15:03:23.710' AS DateTime))
INSERT [dbo].[Sms_Send] ([SendId], [SenderId], [ReferenceKey1], [ReferenceKey2], [ReferenceKey3], [FromName], [ToNumber], [Message], [ResultTrackingID], [ResultContent], [CreateDate]) VALUES (148, N'ETax', N'TrueCorporate', N'RealMove', N'Doc0000001', N'ETax', N'0886380638', N'ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 3', N'66886380638-191a74aad97e46d0a36c415c01940cb0', N'{"ErrorCode":"000","ErrorMessage":"Success","JobId":"6566021","MessageData":[{"Number":"66886380638","MessageParts":[{"MsgId":"66886380638-191a74aad97e46d0a36c415c01940cb0","PartId":"1","Text":"ส่งข้อความ ผ่านเซอร์เวอร์ ส่งตามชวงเวลา ครั้งที่ 3"}]}]}', CAST(N'2019-12-12T15:03:36.053' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sms_Send] OFF
SET IDENTITY_INSERT [dbo].[Sms_Tracking] ON 

INSERT [dbo].[Sms_Tracking] ([Id], [SendId], [JobId], [SendDateTime], [TrackingID], [TrackingResult], [TrackingDate], [CreateDate]) VALUES (145, 145, 145, CAST(N'2019-12-12T14:42:56.627' AS DateTime), N'66886380638-ad912033a13f4b84aaa80b27809bc463', NULL, NULL, CAST(N'2019-12-12T14:42:56.690' AS DateTime))
INSERT [dbo].[Sms_Tracking] ([Id], [SendId], [JobId], [SendDateTime], [TrackingID], [TrackingResult], [TrackingDate], [CreateDate]) VALUES (146, 146, 26, CAST(N'2019-12-12T15:05:00.900' AS DateTime), N'66886380638-7e6504488e2d43dbb528e7286686defb', NULL, NULL, CAST(N'2019-12-12T15:02:57.280' AS DateTime))
INSERT [dbo].[Sms_Tracking] ([Id], [SendId], [JobId], [SendDateTime], [TrackingID], [TrackingResult], [TrackingDate], [CreateDate]) VALUES (147, 147, 27, CAST(N'2019-12-12T15:05:06.347' AS DateTime), N'66886380638-26684ad36bd8423091f7e0689fe7fa54', NULL, NULL, CAST(N'2019-12-12T15:03:23.710' AS DateTime))
INSERT [dbo].[Sms_Tracking] ([Id], [SendId], [JobId], [SendDateTime], [TrackingID], [TrackingResult], [TrackingDate], [CreateDate]) VALUES (148, 148, 28, CAST(N'2019-12-12T15:05:11.387' AS DateTime), N'66886380638-191a74aad97e46d0a36c415c01940cb0', NULL, NULL, CAST(N'2019-12-12T15:03:36.053' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sms_Tracking] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetPeriodByJob]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetPeriodByJob]
	@StartTime			time(7),
	@EndTime			time(7),
	@MaxRowData			int
AS
BEGIN
	SELECT TOP(@MaxRowData)* 
	FROM [dbo].[Sms_Job] 
	WHERE([StartTime]<=@StartTime AND [EndTime]>=@EndTime)
	ORDER BY CreateDate ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPeriodTimeOfRegister]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetPeriodTimeOfRegister]
	-- Add the parameters for the stored procedure here
	@OldToken			varchar(500),
	@Username			varchar(500),
	@Password			varchar(500)
AS
BEGIN
	SELECT [StartTime],[EndTime] FROM [dbo].[MST_Register] WHERE [Token]=@OldToken AND [Username]=@Username AND [Password]=@Password
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetToken]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetToken]
	@NewToken			varchar(500),
	@DateTimeNow		datetime,
	@Username			varchar(500),
	@Password			varchar(500),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN
	IF NOT EXISTS (SELECT [Id] FROM [dbo].[MST_Register] WHERE [Username]=@Username AND [Password]=@Password)
		BEGIN
			SET @rStatus = 0;
			SET @rMessage = 'User is not registered.';
		END
	ELSE
		BEGIN
			BEGIN TRANSACTION
			SAVE TRANSACTION SavePoint
			BEGIN TRY

				UPDATE [dbo].[MST_Register]
				SET [Token]=@NewToken, [UpdateDate]=@DateTimeNow, [IsActive]=1
				WHERE [Username]=@Username AND [Password]=@Password

				INSERT INTO [dbo].[MST_Register_Log]
				([Event],[Token],[Username],[Password],[LogDate])
				VALUES ('Get Token',@NewToken, @Username,@Password,@DateTimeNow);

				SET @rStatus = 1;
				SET @rMessage = 'Successfully';	

				COMMIT TRANSACTION SavePoint;

			END TRY
			BEGIN CATCH
			ROLLBACK TRANSACTION SavePoint
				SET @rStatus = 0;
				SELECT @rMessage = ERROR_MESSAGE();
			END CATCH
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegisterUser]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_RegisterUser]
	@NewToken			varchar(500),
	@DateTimeNow		datetime,
	@Username			varchar(500),
	@Password			varchar(500),
	@SenderId			varchar(11),
	@StartTime			time(7),
	@EndTime			time(7),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN
	IF EXISTS (SELECT [Id] FROM [dbo].[MST_Register] WHERE [Username]=@Username AND [Password]=@Password)
		BEGIN
			SET @rStatus = 0;
			SET @rMessage = 'User is ready.';
		END
	ELSE
		BEGIN
			BEGIN TRANSACTION
			SAVE TRANSACTION SavePoint
			BEGIN TRY

				INSERT INTO [dbo].[MST_Register]
					([Token],[Username],[Password],[SenderId],[StartTime],[EndTime],[CreateDate],[IsActive])
				VALUES (@NewToken,@Username,@Password,@SenderId,@StartTime,@EndTime,@DateTimeNow,1);

				INSERT INTO [dbo].[MST_Register_Log]
					([Token],[Event],[Username],[Password],[SenderId],[StartTime],[EndTime],[LogDate])
				VALUES (@NewToken,'Register User',@Username,@Password,@SenderId,@StartTime,@EndTime,@DateTimeNow);

				SET @rStatus = 1;
				SET @rMessage = 'Successfully';	

				COMMIT TRANSACTION SavePoint;

			END TRY
			BEGIN CATCH
			ROLLBACK TRANSACTION SavePoint
				SET @rStatus = 0;
				SELECT @rMessage = ERROR_MESSAGE();
			END CATCH
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sms_Job]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sms_Job]
	@JobId				int,
	@DateTimeNow		datetime,
	@SendDateTime		datetime,
	@ResultTrackingID	varchar(200),
	@ResultContent		nvarchar(Max),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN

	IF NOT EXISTS (SELECT [JobId] FROM [dbo].[Sms_Job] WHERE [JobId]=@JobId)
		BEGIN
			SET @rStatus = 0;
			SET @rMessage = 'Job not found.';
		END
	ELSE
		BEGIN
			BEGIN TRANSACTION
			SAVE TRANSACTION SavePoint
			BEGIN TRY

				DECLARE @SendId int = 0;

				SELECT @SendId=[SendId] FROM [dbo].[Sms_Tracking] WHERE [JobId]=@JobId;

				UPDATE [dbo].[Sms_Send]
				SET [ResultTrackingID]=@ResultTrackingID, [ResultContent]=@ResultContent
				WHERE [SendId]=@SendId

				UPDATE [dbo].[Sms_Tracking]
				SET [SendDateTime]=@SendDateTime, [TrackingID]=@ResultTrackingID
				WHERE [JobId]=@JobId

				INSERT INTO [dbo].[Sms_Job_Log] 
					([JobId],[LogEvent],[LogContent],[LogDate])
				VALUES (@JobId,'Send Ok',@ResultContent,@DateTimeNow);

				DELETE FROM [dbo].[Sms_Job] WHERE [JobId]=@JobId

				SET @rStatus = 1;
				SET @rMessage = 'Successfully';

				COMMIT TRANSACTION SavePoint;

			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION SavePoint
				SET @rStatus = 0;
				SELECT @rMessage = ERROR_MESSAGE();
			END CATCH
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sms_Job_ErrorLog]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sms_Job_ErrorLog]
	@JobId				int,
	@DateTimeNow		datetime,
	@LogEvent			nvarchar(Max),
	@LogContent			nvarchar(Max),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN

	BEGIN TRANSACTION
		SAVE TRANSACTION SavePoint
		BEGIN TRY

			INSERT INTO [dbo].[Sms_Job_Log] 
				([JobId],[LogEvent],[LogContent],[LogDate])
			VALUES (@JobId,@LogEvent,@LogContent,@DateTimeNow);

			SET @rStatus = 1;
			SET @rMessage = 'Successfully';

			COMMIT TRANSACTION SavePoint;
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION SavePoint
			SET @rStatus = 0;
			SELECT @rMessage = ERROR_MESSAGE();
		END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sms_Send]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sms_Send]
	@SenderId			varchar(11),
	@DateTimeNow		datetime,
	@isSend				bit,
	@ReferenceKey1		varchar(100),
	@ReferenceKey2		varchar(100),
	@ReferenceKey3		varchar(100),
	@FromName			varchar(100),
	@ToNumber			varchar(11),
	@Message			varchar(500),
	@SendDateTime		datetime,
	@StartTime			time(7),
	@EndTime			time(7),
	@ResultTrackingID	varchar(200),
	@ResultContent		nvarchar(Max),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT,
	@rTrackID			int OUTPUT
AS
BEGIN

	BEGIN TRANSACTION
		SAVE TRANSACTION SavePoint
		BEGIN TRY

			DECLARE @JobID int = 0;
			DECLARE @SendID int = 0;

			IF (@isSend = 0) 
			BEGIN
					INSERT INTO [dbo].[Sms_Job]
						([SenderId],[ReferenceKey1],[ReferenceKey2],[ReferenceKey3],[FromName],[ToNumber],[Message],[StartTime],[EndTime],[CreateDate])
					VALUES (@SenderId,@ReferenceKey1,@ReferenceKey2,@ReferenceKey3,@FromName,@ToNumber,@Message,@StartTime,@EndTime,@DateTimeNow);

					SET @JobID = SCOPE_IDENTITY();
			END

			BEGIN
				INSERT INTO [dbo].[Sms_Send]
						([SenderId],[ReferenceKey1],[ReferenceKey2],[ReferenceKey3],[FromName],[ToNumber],[Message],[CreateDate])
				VALUES (@SenderId,@ReferenceKey1,@ReferenceKey2,@ReferenceKey3,@FromName,@ToNumber,@Message,@DateTimeNow);

				SET @SendID = SCOPE_IDENTITY();

				INSERT INTO [dbo].[Sms_Tracking] 
							([SendID],[JobId],[SendDateTime],[TrackingID],[CreateDate])
				VALUES (@SendID,(CASE WHEN @JobID>0 THEN @JobID ELSE @SendID END),
					(CASE WHEN @SendDateTime=null THEN NULL ELSE @SendDateTime END),@ResultTrackingID,@DateTimeNow);
			END
			SET @rStatus = 1;
			SET @rMessage = 'Insert Data Successfully';
			SET @rTrackID = (CASE WHEN @JobID>0 THEN @JobID ELSE @SendID END);

			COMMIT TRANSACTION SavePoint;
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION SavePoint
			SET @rStatus = 0;
			SET @rTrackID = 0;
			SELECT @rMessage = ERROR_MESSAGE();
		END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sms_Tracking]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sms_Tracking]
	@TrackingId			varchar(100),
	@DateTimeNow		datetime,
	@ResultContent		nvarchar(Max),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN

	IF NOT EXISTS (SELECT [TrackingId] FROM [dbo].[Sms_Tracking] WHERE [TrackingId]=@TrackingId)
		BEGIN
			SET @rStatus = 0;
			SET @rMessage = 'TrackingID not found.';
		END
	ELSE
		BEGIN
			BEGIN TRANSACTION
			SAVE TRANSACTION SavePoint
			BEGIN TRY

				UPDATE [dbo].[Sms_Tracking]
				SET [TrackingResult]=@ResultContent,[TrackingDate]=@DateTimeNow
				WHERE [TrackingId]=@TrackingId AND ([TrackingResult]<>'#DELIVRD' OR [TrackingResult] IS NULL)

				SET @rStatus = 1;
				SET @rMessage = 'Successfully';

				COMMIT TRANSACTION SavePoint;

			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION SavePoint
				SET @rStatus = 0;
				SELECT @rMessage = ERROR_MESSAGE();
			END CATCH
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateInformation]    Script Date: 16/12/2019 11:18:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateInformation]
	@OldToken			varchar(500),
	@NewToken			varchar(500),
	@DateTimeNow		datetime,
	@Username			varchar(500),
	@Password			varchar(500),
	@SenderId			varchar(11),
	@StartTime			time(7),
	@EndTime			time(7),
	@rStatus			bit OUTPUT,
	@rMessage			varchar(500) OUTPUT
AS
BEGIN
	IF NOT EXISTS (SELECT [Id] FROM [dbo].[MST_Register] WHERE [Token]=@OldToken AND [Role]='Admin')
		BEGIN
			SET @rStatus = 0;
			SET @rMessage = 'Data not found.';
		END
	ELSE
		BEGIN
			BEGIN TRANSACTION
			SAVE TRANSACTION SavePoint
			BEGIN TRY

				UPDATE [dbo].[MST_Register]
				SET [Token]=@NewToken,
					[Password]=@Password,
					[SenderId]=@SenderId,
					[StartTime]=@StartTime,
					[EndTime]=@EndTime,
					[UpdateDate]=@DateTimeNow
				WHERE Username=@Username

				INSERT INTO [dbo].[MST_Register_Log]
					([Token],[Event],[Username],[Password],[SenderId],[StartTime],[EndTime],[LogDate])
				VALUES (@OldToken,'Update Information',@Username,@Password,@SenderId,@StartTime,@EndTime,@DateTimeNow);

				SET @rStatus = 1;
				SET @rMessage = 'Successfully';	

				COMMIT TRANSACTION SavePoint;

			END TRY
			BEGIN CATCH
			ROLLBACK TRANSACTION SavePoint
				SET @rStatus = 0;
				SELECT @rMessage = ERROR_MESSAGE();
			END CATCH
		END
END
GO
