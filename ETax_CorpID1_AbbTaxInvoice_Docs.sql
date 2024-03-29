USE [ETax_CorpID1_AbbTaxInvoice_Docs]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_Buyer]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_Buyer](
	[DocId] [int] NOT NULL,
	[BuyerType] [varchar](50) NULL,
	[IndividualType] [varchar](50) NULL,
	[IdentificationType] [varchar](50) NULL,
	[IdentificationNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[TaxId] [varchar](50) NULL,
	[BranchName] [varchar](100) NULL,
	[BuildingName] [varchar](100) NULL,
	[BuildingNumber] [varchar](50) NULL,
	[Moo] [varchar](10) NULL,
	[RoomNo] [varchar](50) NULL,
	[Floor] [varchar](10) NULL,
	[Soi] [varchar](100) NULL,
	[SubSoi] [varchar](100) NULL,
	[StreetName] [varchar](100) NULL,
	[Tumbol] [varchar](100) NULL,
	[Amphur] [varchar](100) NULL,
	[Province] [varchar](100) NULL,
	[PostCode] [varchar](50) NULL,
	[CountryID] [varchar](50) NULL,
 CONSTRAINT [PK_Doc_AbbTaxInvoice_Buyer] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_Header]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_Header](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[BranchId] [int] NULL,
	[DocumentLanguage] [varchar](2) NOT NULL,
	[DocumentCode] [varchar](5) NOT NULL,
	[DocumentNumber] [varchar](50) NOT NULL,
	[IsSealer] [bit] NULL,
	[IsRealtime] [bit] NULL,
	[IsSendToCust] [bit] NULL,
	[DocumentDate] [date] NULL,
	[ActivityDate] [date] NULL,
	[PaymentChannel] [varchar](100) NULL,
	[PaymentAccountNo] [varchar](50) NULL,
	[PaymentOtherChannel] [varchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[VatRate] [decimal](9, 2) NULL,
	[VatAmount] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[UseDocAddForMailing] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_Doc_AbbTaxInvoice_Header] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_ItemDetail]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_ItemDetail](
	[DocId] [int] NOT NULL,
	[Seq] [int] NOT NULL,
	[ItemDescription] [nvarchar](200) NOT NULL,
	[ItemQty] [decimal](9, 2) NOT NULL,
	[ItemUnit] [nvarchar](50) NULL,
	[ItemSalePrice] [decimal](18, 2) NOT NULL,
	[ItemDiscountAmount] [decimal](9, 2) NOT NULL,
	[ItemAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_API_T03_Detail] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC,
	[Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_MailingAddress]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_MailingAddress](
	[DocId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[BuildingName] [varchar](100) NULL,
	[BuildingNumber] [varchar](50) NULL,
	[Moo] [varchar](10) NULL,
	[RoomNo] [varchar](50) NULL,
	[Floor] [varchar](10) NULL,
	[Soi] [varchar](100) NULL,
	[SubSoi] [varchar](100) NULL,
	[StreetName] [varchar](100) NULL,
	[Tumbol] [varchar](100) NULL,
	[Amphur] [varchar](100) NULL,
	[Province] [varchar](100) NULL,
	[PostCode] [varchar](50) NULL,
	[CountryID] [varchar](10) NULL,
 CONSTRAINT [PK_Doc_AbbTaxInvoice_MaillingAddress] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_Message]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_Message](
	[DocId] [int] NOT NULL,
	[Seq] [int] NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Doc_AbbTaxInvoice_Message] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC,
	[Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_AbbTaxInvoice_SendInformation]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_AbbTaxInvoice_SendInformation](
	[DocId] [int] NOT NULL,
	[Seq] [int] NOT NULL,
	[SendType] [varchar](5) NOT NULL,
	[SendTo] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_API_T03_SendInfor] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC,
	[Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_create_document]    Script Date: 16/12/2019 11:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_create_document]
	@docNumber		varchar(50),
	@jSonData		nvarchar(MAX),
	@jSonWorkProcess	nvarchar(max),
	@rStatus		bit OUTPUT,
	@rIsDuplicate	bit OUTPUT,
	@rDocId			int OUTPUT,
	@rMessage		varchar(500) OUTPUT
AS
BEGIN

	IF EXISTS (SELECT DocId FROM [dbo].[Doc_AbbTaxInvoice_Header] WHERE [DocumentNumber] = @docNumber)
	BEGIN
		SET @rStatus = 0;
		SET @rIsDuplicate = 1;
		SET @rDocId = 0;
		SET @rMessage = 'Data is duplicate.';
	END
	ELSE
	BEGIN
				
		BEGIN TRANSACTION
		SAVE TRANSACTION SavePoint
		BEGIN TRY

			DECLARE @DocID int;
			DECLARE @CreateDate datetime = GETDATE();

			-- insert Header --
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_Header]
					([CompanyId],[BranchId],[DocumentLanguage],[DocumentCode],[DocumentNumber],[IsSealer],[IsRealtime],[IsSendToCust],[DocumentDate],
					 [ActivityDate],[PaymentChannel],[PaymentAccountNo],[PaymentOtherChannel],[Password],
					 [Remark],[TotalAmount],[DiscountAmount],[VatRate],[VatAmount],[NetAmount],[UseDocAddForMailing],[CreateDate],[StatusId])
				SELECT 
					 [CompanyId],[BranchId],[DocumentLanguage],[DocumentCode],[DocumentNumber],[IsSealer],[IsRealtime],[IsSendToCust],[DocumentDate],
					 (CASE WHEN [ActivityDate]=null THEN NULL ELSE [ActivityDate] END),[PaymentChannel],[PaymentAccountNo],[PaymentOtherChannel],[Password],
					 [Remark],[TotalAmount],[DiscountAmount],[VatRate],[VatAmount],[NetAmount],[UseDocAddForMailing],@CreateDate,1
				FROM OPENJSON(@jSonData)
				WITH (
						[CompanyId]					int			     N'$.CompanyId',
						[BranchId]					int				 N'$.BranchId',
						[DocumentLanguage]			varchar(2)		 N'$.DocumentLanguage',
						[DocumentCode]				varchar(5)		 N'$.DocumentCode',
						[DocumentNumber]			varchar(50)		 N'$.DocumentNumber',
						[IsSealer]					bit				 N'$.IsSealer',
						[IsRealtime]				bit				 N'$.IsRealtime',
						[IsSendToCust]				bit				 N'$.IsSendToCust',
						[DocumentDate]				date			 N'$.DocumentDate',
						[ActivityDate]				date			 N'$.ActivityDate',
						[PaymentChannel]			varchar(100)	 N'$.PaymentChannel',
						[PaymentAccountNo]			varchar(50)		 N'$.PaymentAccountNo',
						[PaymentOtherChannel]		varchar(100)	 N'$.PaymentOtherChannel',
						[Password]					nvarchar(MAX)	 N'$.Password',
						[Remark]					nvarchar(MAX)	 N'$.Remark',
						[TotalAmount]				decimal(18, 2)	 N'$.TotalAmount',
						[DiscountAmount]			decimal(18, 2)	 N'$.DiscountAmount',
						[VatRate]					decimal(9, 2)	 N'$.VatRate',
						[VatAmount]					decimal(18, 2)	 N'$.VatAmount',
						[NetAmount]					decimal(18, 2)	 N'$.NetAmount',
						[UseDocAddForMailing]		bit				 N'$.UseDocAddForMailing'
				)

				SET @DocID = SCOPE_IDENTITY();

				--- Item Detail ---
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_ItemDetail]
					   ([DocId],[Seq],[ItemDescription],[ItemQty],[ItemUnit],[ItemSalePrice],[ItemDiscountAmount],[ItemAmount])
				SELECT @DocID,[Seq],[Description],[Qty],[Unit],[SalePrice],[DiscountAmount],[Amount]
				FROM OPENJSON(@jSonData, N'$.ItemDetail')
				WITH (
					[Seq]				int				 N'$.Seq',
					[Description]		nvarchar(200)	 N'$.Description',
					[Qty]				decimal(9,2)	 N'$.Qty',
					[Unit]				nvarchar(50)	 N'$.Unit',
					[SalePrice]			decimal(18,2)	 N'$.SalePrice',
					[DiscountAmount]	decimal(9,2)	 N'$.DiscountAmount',
					[Amount]			decimal(18,2)	 N'$.Amount'
				)

				--- Send Channel Information ---
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_SendInformation]
					   ([DocId],[Seq],[SendType],[SendTo])
				SELECT @DocID,[Seq],UPPER([SendType]),[SendTo]
				FROM OPENJSON(@jSonData, N'$.ItemSendChannel')
				WITH (
					[Seq]			int				 N'$.Seq',
					[SendType]		varchar(5)		 N'$.SendType',
					[SendTo]		nvarchar(200)	 N'$.SendTo'
				)

				--- Buyer Infomation ---
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_Buyer]
					   ([DocId],[BuyerType],[IndividualType],[IdentificationType],[IdentificationNo],[Name],[TaxId],[BranchName],
					   [BuildingName],[BuildingNumber],[Moo],[RoomNo],[Floor],[Soi],[SubSoi],[StreetName],[Tumbol],[Amphur],[Province],[PostCode],[CountryID])
				SELECT @DocID,[BuyerType],[IndividualType],[IdentificationType],[IdentificationNo],[Name],[TaxId],[BranchName],
					   [BuildingName],[BuildingNumber],[Moo],[RoomNo],[Floor],[Soi],[SubSoi],[StreetName],[Tumbol],[Amphur],[Province],[PostCode],[CountryID]
				FROM OPENJSON(@jSonData, N'$.Buyer')
				WITH (
					[BuyerType]					varchar(50)		N'$.BuyerType',
					[IndividualType]			varchar(50)		N'$.IndividualType',
					[IdentificationType]		varchar(50)		N'$.IdentificationType',
					[IdentificationNo]			varchar(50)		N'$.IdentificationNo',
					[Name]						varchar(50)		N'$.Name',
					[TaxId]						varchar(50)		N'$.TaxId',
					[BranchName]				varchar(100)	N'$.BranchName',
					[BuildingName]				varchar(100)	N'$.BuildingName',
					[BuildingNumber]			varchar(50)		N'$.BuildingNumber',
					[Moo]						varchar(10)		N'$.Moo',
					[RoomNo]					varchar(50)		N'$.RoomNo',
					[Floor]						varchar(10)		N'$.Floor',
					[Soi]						varchar(100)	N'$.Soi',
					[SubSoi]					varchar(100)	N'$.SubSoi',
					[StreetName]				varchar(100)	N'$.StreetName',
					[Tumbol]					varchar(100)	N'$.Tumbol',
					[Amphur]					varchar(100)	N'$.Amphur',
					[Province]					varchar(100)	N'$.Province',
					[PostCode]					varchar(50)		N'$.PostCode',
					[CountryID]					varchar(3)		N'$.CountryID'
				)

				--- Mailling Address ---
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_MailingAddress]
					   ([DocId],[Name],[BuildingName],[BuildingNumber],[Moo],[RoomNo],[Floor],[Soi],[SubSoi],[StreetName],[Tumbol],[Amphur],[Province],[PostCode],[CountryID])
				SELECT @DocID,[Name],[BuildingName],[BuildingNumber],[Moo],[RoomNo],[Floor],[Soi],[SubSoi],[StreetName],[Tumbol],[Amphur],[Province],[PostCode],[CountryID]
				FROM OPENJSON(@jSonData, N'$.MailingAddress')
				WITH (
					[Name]						varchar(50)		N'$.Name',
					[BuildingName]				varchar(100)	N'$.BuildingName',
					[BuildingNumber]			varchar(50)		N'$.BuildingNumber',
					[Moo]						varchar(10)		N'$.Moo',
					[RoomNo]					varchar(50)		N'$.RoomNo',
					[Floor]						varchar(10)		N'$.Floor',
					[Soi]						varchar(100)	N'$.Soi',
					[SubSoi]					varchar(100)	N'$.SubSoi',
					[StreetName]				varchar(100)	N'$.StreetName',
					[Tumbol]					varchar(100)	N'$.Tumbol',
					[Amphur]					varchar(100)	N'$.Amphur',
					[Province]					varchar(100)	N'$.Province',
					[PostCode]					varchar(50)		N'$.PostCode',
					[CountryID]					varchar(3)		N'$.CountryID'
				)

				--- Message Items ---
				INSERT INTO [dbo].[Doc_AbbTaxInvoice_Message]
					   ([DocId],[Seq],[Message])
				SELECT @DocID,[Seq],[Message]
				FROM OPENJSON(@jSonData, N'$.ItemMessage')
				WITH (
					[Seq]		int				N'$.Seq',
					[Message]	varchar(200)	N'$.Message'
				)


				-- Transaction Work Process ---
				INSERT INTO [ETax_CorpID1_AbbTaxInvoice_Trans].[dbo].[TRN_Process] 
							([DocId],[RepairCount],[ProcessPriority],[ProcessId],[IsProcess],[IsError],[Message],[IsComplete])
				SELECT @DocID,0,[ProcessPriority],[ProcessId],0,0,NULL,(CASE WHEN [ProcessId] = 1 THEN 1 ELSE 0 END)
				FROM OPENJSON(@jSonWorkProcess)
				WITH (
					[RepairCount]		int		N'$.RepairCount',
					[ProcessId]			int		N'$.ProcessId',
					[ProcessPriority]	int		N'$.ProcessPriority'
				)


				SET @rStatus = 1;
				SET @rDocId = @DocID;
				SET @rMessage = 'Insert Data Successfully';

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
