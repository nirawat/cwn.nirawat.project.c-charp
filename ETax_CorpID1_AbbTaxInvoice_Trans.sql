USE [ETax_CorpID1_AbbTaxInvoice_Trans]
GO
/****** Object:  Table [dbo].[TRN_Process]    Script Date: 16/12/2019 11:21:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRN_Process](
	[TrnId] [int] IDENTITY(1,1) NOT NULL,
	[DocId] [int] NOT NULL,
	[RepairCount] [int] NOT NULL,
	[ProcessPriority] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[IsProcess] [bit] NOT NULL,
	[IsComplete] [bit] NOT NULL,
	[IsError] [bit] NOT NULL,
	[ErrorType] [int] NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_TRN_Process] PRIMARY KEY CLUSTERED 
(
	[TrnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_process]    Script Date: 16/12/2019 11:21:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_process]
	@jSonData		nvarchar(MAX),
	@rStatus		bit OUTPUT,
	@rMessage		varchar(500) OUTPUT
AS
BEGIN

	UPDATE TRN_Process SET 
				TRN_Process.[IsProcess]=j.[IsProcess],
				TRN_Process.[IsComplete]=j.[IsComplete],
				TRN_Process.[IsError]=j.[IsError],
				TRN_Process.[ErrorType]=j.[ErrorType],
				TRN_Process.[Message]=j.[Message]
				FROM OPENJSON(@jSonData)
				WITH (
					[DocId]				int				 N'$.DocId',
					[ProcessId]			int				 N'$.ProcessId',
					[IsProcess]			bit				 N'$.IsProcess',
					[IsComplete]		bit				 N'$.IsComplete',
					[IsError]			bit				 N'$.IsError',
					[ErrorType]			int				 N'$.ErrorType',
					[Message]			nvarchar(max)	 N'$.Message'
				) AS j
				WHERE TRN_Process.DocId = j.DocId
				AND TRN_Process.ProcessId = j.ProcessId


				SET @rStatus = 1;
				SET @rMessage = 'Update Data Successfully';

END
GO
