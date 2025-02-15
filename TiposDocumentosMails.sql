USE [CustomerAccess]
GO
/****** Object:  Table [dbo].[EMailsTemplates]    Script Date: 06/09/2016 14:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMailsTemplates](
	[Id] [int] NULL,
	[Asunto] [nvarchar](255) NULL,
	[Mensaje] [nvarchar](max) NULL,
	[CCaLP] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupsDoc]    Script Date: 06/09/2016 14:57:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsDoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descript] [varchar](100) NOT NULL,
	[Default] [bit] NULL,
	[TimeOutDate] [int] NULL,
	[ProccessDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_GroupsDoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeDoc]    Script Date: 06/09/2016 14:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeDoc](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Download] [int] NULL,
	[LetterCode] [varchar](3) NOT NULL,
	[MailId] [int] NULL,
 CONSTRAINT [PK_TypeDoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (1, N'Prudential Seguros - Aceptación de aportes adicionales - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Aceptación de aportes adicionales</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía.<br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (2, N'Prudential Seguros - Anulación de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Anulación</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía.<br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (3, N'Prudential Seguros - Aviso de caducidad - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Aviso de caducidad</strong>. 

<strong>IMPORTANTE: esta notificación contiene información sobre la vigencia de tu póliza. La imposibilidad de cobrar la prima podría derivar en su anulación.</strong><br>

Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (4, N'Prudential Seguros - Aviso de emisión - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Aviso de emisión</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (5, N'Prudential Seguros - Aviso de Expiración Enfermedades Críticas - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Aviso de expiración de la cobertura de Enfermedades Críticas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía.<br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (6, N'Prudential Seguros - Aviso de Paid Up - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Aviso de fin de pago de primas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (7, N'Prudential Seguros - Aviso de vencimiento - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Aviso vencimiento del pago de prima</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (8, N'Prudential Seguros - Baja de Cambio - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Baja del cambio solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.

C_######_N############_###', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (9, N'Prudential Seguros - Baja de Cambio y Solicitud - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Baja del cambio solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (10, N'Prudential Seguros - Baja de Rehabilitación - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Baja de la rehabilitación solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (11, N'Prudential Seguros - Baja de Revisión Extraprima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Baja de la revisión de extraprima solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (12, N'Prudential Seguros - Baja de solicitud - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu solicitud, específicamente sobre su <strong>Baja</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (13, N'Prudential Seguros - Cambio de aportes adicionales - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de aportes adicionales solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (14, N'Prudential Seguros - Cambio de beneficiario - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de beneficiarios solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (15, N'Prudential Seguros - Cambio de domicilio - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de domicilio solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br> 

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (16, N'Prudential Seguros - Cambio de frecuencia de pago - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de frecuencia de pago solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (17, N'Prudential Seguros - Cambio de medio de pago - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de medio de pago solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (18, N'Prudential Seguros - Cambio de medio y frecuencia de pago - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de medio y frecuencia de pago solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (19, N'Prudential Seguros - Cambio de opción de no pago de primas - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de opción de no pago de primas solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (20, N'Prudential Seguros - Cambio de tomador - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Cambio de tomador solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (21, N'Prudential Seguros - Cambios en su póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre los <strong>Cambios solicitados</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (22, N'Prudential Seguros - Certificado de cobertura - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Certificado de cobertura solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (23, N'Prudential Seguros - Conversión a seguro prorrogado - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Conversión solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (24, N'Prudential Seguros - Conversión a seguro saldado - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Conversión solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (25, N'Prudential Seguros - Copia de examen médico - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu solicitud, específicamente sobre la <strong>Copia de examen médico solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (26, N'Prudential Seguros - Corrección de póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Corrección de datos solicitados</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br> 

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (27, N'Prudential Seguros - Detalle de pago - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Detalle de pagos solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (28, N'Prudential Seguros - Devolución de diferencia a favor - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Devolución de prima solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (29, N'Prudential Seguros - Devolución de última prima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Devolución de prima solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (30, N'Prudential Seguros - Expiración de póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Expiración</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. 
<br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (31, N'Prudential Seguros - Expiración Enfermedades Críticas - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Expiración de la cobertura de Enfermedades Críticas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (32, N'Prudential Seguros - Extraprima de Solicitud - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu solicitud, específicamente sobre el <strong>Aviso de extraprima</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (33, N'Prudential Seguros - Fin de No Pago de Primas - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Pago de primas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (34, N'Prudential Seguros - Imputación de fondos      - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Imputación de fondos</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (35, N'Prudential Seguros - No recontratación de Enfermedades Críticas - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>No recontratación de la cobertura de Enfermedades Críticas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (36, N'Prudential Seguros - Notificación de caducidad - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Anulación</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (37, N'Prudential Seguros - Opción de pago de prima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Opción de pago de primas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (38, N'Prudential Seguros - Posposición de Solicitud - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu solicitud, específicamente sobre su <strong>Posposición</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (39, N'Prudential Seguros - Préstamo de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Préstamo solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (40, N'Prudential Seguros - Primer rechazo de prima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Pago de primas</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (41, N'Prudential Seguros - Rechazo de Solicitud - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu solicitud, específicamente sobre su <strong>Rechazo</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (42, N'Prudential Seguros - Recibo de pago - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Recibo de pago solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (43, N'Prudential Seguros - Reemplazo de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Reemplazo</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (44, N'Prudential Seguros - Rehabilitación de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Rehabilitación</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (45, N'Prudential Seguros - Rescate de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Rescate solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (46, N'Prudential Seguros - Rescate y Baja de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre su <strong>Anulación</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (47, N'Prudential Seguros - Resumen Anual de Póliza - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Resumen Anual solicitado</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (48, N'Prudential Seguros - Revisión de extraprima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre la <strong>Revisión de extraprima solicitada</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (49, N'Prudential Seguros - Segundo rechazo de aporte - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Pago de aportes</strong>.<br> Dicha información está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
INSERT [dbo].[EMailsTemplates] ([Id], [Asunto], [Mensaje], [CCaLP]) VALUES (50, N'Prudential Seguros - Segundo rechazo de prima - ###', N'Estimado /a cliente,

Tenemos novedades acerca de tu póliza, específicamente sobre el <strong>Pago de primas<strong>.<br>

<strong>IMPORTANTE: esta notificación contiene información sobre la vigencia de tu póliza. La imposibilidad de cobrar la prima podría derivar en su anulación.</strong><br>

Dicha notificación está disponible en www.clientes/prudentialseguros.com.ar, sitio dónde encontrarás todo tipo de información relacionada a la póliza contratada con nuestra compañía. <br>

Cordialmente, <br>

Prudential Seguros S.A.', NULL)
SET IDENTITY_INSERT [dbo].[GroupsDoc] ON 

INSERT [dbo].[GroupsDoc] ([Id], [Descript], [Default], [TimeOutDate], [ProccessDate], [IsDeleted]) VALUES (1, N'Documentación de Póliza', 1, NULL, CAST(N'2016-08-29T20:09:37.070' AS DateTime), 0)
INSERT [dbo].[GroupsDoc] ([Id], [Descript], [Default], [TimeOutDate], [ProccessDate], [IsDeleted]) VALUES (2, N'Cambios Simples', 0, 90, CAST(N'2016-08-29T20:09:37.087' AS DateTime), 0)
INSERT [dbo].[GroupsDoc] ([Id], [Descript], [Default], [TimeOutDate], [ProccessDate], [IsDeleted]) VALUES (3, N'Facturación y Vencimientos', 0, 90, CAST(N'2016-08-29T20:09:37.093' AS DateTime), 0)
INSERT [dbo].[GroupsDoc] ([Id], [Descript], [Default], [TimeOutDate], [ProccessDate], [IsDeleted]) VALUES (4, N'Pagos y Rescates', 0, 90, CAST(N'2016-08-29T20:09:37.103' AS DateTime), 0)
INSERT [dbo].[GroupsDoc] ([Id], [Descript], [Default], [TimeOutDate], [ProccessDate], [IsDeleted]) VALUES (5, N'Otros', 0, 90, CAST(N'2016-08-29T20:09:37.113' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GroupsDoc] OFF
SET IDENTITY_INSERT [dbo].[TypeDoc] ON 

INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (156, 5, N'Baja de solicitud', 30, N'A01', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (157, 5, N'Baja de solicitud', 30, N'A02', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (158, 5, N'Baja de solicitud', 30, N'A03', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (159, 5, N'Baja de solicitud', 30, N'A04', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (160, 5, N'Baja de solicitud', 30, N'A05', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (161, 5, N'Baja de solicitud', 30, N'A06', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (162, 5, N'Baja de solicitud', 30, N'A07', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (163, 5, N'Baja de solicitud', 30, N'A08', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (164, 5, N'Baja de solicitud', 30, N'A09', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (165, 5, N'Baja de solicitud', 30, N'A10', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (166, 5, N'Baja de solicitud', 30, N'A11', 12)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (167, 5, N'Rechazo de Solicitud', 30, N'A12', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (168, 5, N'Rechazo de Solicitud', 30, N'A13', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (169, 5, N'Rechazo de Solicitud', 30, N'A14', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (170, 5, N'Rechazo de Solicitud', 30, N'A15', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (171, 5, N'Rechazo de Solicitud', 30, N'A16', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (172, 5, N'Rechazo de Solicitud', 30, N'A17', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (173, 5, N'Rechazo de Solicitud', 30, N'A18', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (174, 5, N'Rechazo de Solicitud', 30, N'A19', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (175, 5, N'Rechazo de Solicitud', 30, N'A20', 41)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (176, 5, N'Posposición de Solicitud', 30, N'A21', 38)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (177, 5, N'Posposición de Solicitud', 30, N'A22', 38)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (178, 5, N'Posposición de Solicitud', 30, N'A23', 38)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (179, 5, N'Extraprima de Solicitud', 30, N'A24', 32)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (180, 5, N'Extraprima de Solicitud', 30, N'A25', 32)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (181, 5, N'Extraprima de Solicitud', 30, N'A26', 32)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (182, 5, N'Copia de examen médico', 30, N'A27', 25)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (183, 5, N'Copia de examen médico', 30, N'A28', 25)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (184, 1, N'Aviso de emisión', 30, N'A30', 4)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (185, 5, N'Corrección de póliza', 30, N'A31', 26)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (186, 1, N'Cambios en su póliza', 30, N'A32', 21)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (187, 1, N'Cambios en su póliza', 30, N'A33', 21)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (188, 1, N'Cambios en su póliza', 30, N'A34', 21)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (189, 1, N'Reemplazo de Póliza', 30, N'A35', 43)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (190, 1, N'Rehabilitación de Póliza', 30, N'A36', 44)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (191, 2, N'Cambio de domicilio', 30, N'A37', 15)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (192, 2, N'Cambio de tomador', 30, N'A38', 20)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (193, 2, N'Cambio de beneficiario', 30, N'A39', 14)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (194, 2, N'Cambio de beneficiario', 30, N'A40', 14)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (195, 2, N'Cambio de frecuencia de pago', 30, N'A41', 16)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (196, 2, N'Cambio de medio de pago', 30, N'A42', 17)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (197, 2, N'Cambio de medio y frecuencia de pago', 30, N'A43', 18)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (198, 2, N'Cambio de opción de no pago de primas', 30, N'A44', 19)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (199, 2, N'Cambio de medio de pago', 30, N'A45', 17)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (200, 2, N'Cambio de aportes adicionales', 30, N'A46', 13)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (201, 2, N'Cambio de aportes adicionales', 30, N'A47', 13)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (202, 2, N'Cambio de aportes adicionales', 30, N'A48', 13)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (203, 2, N'Revisión de extraprima', 30, N'A49', 48)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (204, 2, N'Revisión de extraprima', 30, N'A50', 48)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (205, 2, N'Revisión de extraprima', 30, N'A51', 48)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (206, 1, N'Baja de Cambio', 30, N'A52', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (207, 1, N'Baja de Cambio', 30, N'A53', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (208, 1, N'Baja de Cambio', 30, N'A54', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (209, 1, N'Baja de Cambio', 30, N'A55', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (210, 1, N'Baja de Cambio', 30, N'A56', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (211, 1, N'Baja de Cambio', 30, N'A57', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (212, 1, N'Baja de Cambio', 30, N'A58', 8)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (213, 1, N'Baja de Cambio y Solicitud', 30, N'A59', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (214, 1, N'Baja de Cambio y Solicitud', 30, N'A60', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (215, 1, N'Baja de Cambio y Solicitud', 30, N'A61', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (216, 1, N'Baja de Cambio y Solicitud', 30, N'A62', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (217, 1, N'Baja de Cambio y Solicitud', 30, N'A63', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (218, 1, N'Baja de Cambio y Solicitud', 30, N'A64', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (219, 1, N'Baja de Cambio y Solicitud', 30, N'A65', 9)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (220, 1, N'Baja de Rehabilitación', 30, N'A66', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (221, 1, N'Baja de Rehabilitación', 30, N'A67', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (222, 1, N'Baja de Rehabilitación', 30, N'A68', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (223, 1, N'Baja de Rehabilitación', 30, N'A69', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (224, 1, N'Baja de Rehabilitación', 30, N'A70', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (225, 1, N'Baja de Rehabilitación', 30, N'A71', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (226, 1, N'Baja de Rehabilitación', 30, N'A72', 10)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (227, 2, N'Baja de Revisión Extraprima', 30, N'A73', 11)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (228, 2, N'Baja de Revisión Extraprima', 30, N'A74', 11)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (229, 2, N'Baja de Revisión Extraprima', 30, N'A75', 11)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (230, 4, N'Préstamo de Póliza', 30, N'A76', 39)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (231, 4, N'Préstamo de Póliza', 30, N'A77', 39)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (232, 4, N'Préstamo de Póliza', 30, N'A78', 39)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (233, 4, N'Rescate de Póliza', 30, N'A79', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (234, 4, N'Rescate de Póliza', 30, N'A80', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (235, 4, N'Rescate de Póliza', 30, N'A81', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (236, 4, N'Rescate de Póliza', 30, N'A82', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (237, 4, N'Rescate de Póliza', 30, N'A83', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (238, 4, N'Rescate de Póliza', 30, N'A84', 45)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (239, 1, N'Rescate y Baja de Póliza', 30, N'A85', 46)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (240, 1, N'Rescate y Baja de Póliza', 30, N'A86', 46)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (241, 1, N'Anulación de Póliza', 30, N'A87', 2)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (242, 1, N'Anulación de Póliza', 30, N'A88', 2)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (243, 1, N'Anulación de Póliza', 30, N'A89', 2)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (244, 1, N'Anulación de Póliza', 30, N'A90', 2)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (245, 1, N'Anulación de Póliza', 30, N'A91', 2)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (246, 4, N'Devolución de última prima', 30, N'A92', 29)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (247, 4, N'Devolución de última prima', 30, N'A93', 29)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (248, 4, N'Devolución de diferencia a favor', 30, N'A94', 28)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (249, 4, N'Devolución de diferencia a favor', 30, N'A95', 28)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (250, 3, N'Recibo de pago', 30, N'A96', 42)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (251, 3, N'Detalle de pago', 30, N'A97', 27)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (252, 1, N'Certificado de cobertura', 30, N'A98', 22)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (253, 3, N'Imputación de fondos', 30, N'A99', 34)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (254, 3, N'Fin de No Pago de Primas', 30, N'B01', 33)
GO
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (255, 1, N'Conversión a seguro saldado', 30, N'B02', 24)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (256, 1, N'Conversión a seguro prorrogado', 30, N'B03', 23)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (257, 1, N'Expiración de póliza', 30, N'B04', 30)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (258, 3, N'Aviso de vencimiento', 30, N'B05', 7)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (259, 3, N'Aviso de vencimiento', 30, N'B06', 7)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (260, 3, N'Primer rechazo de prima', 30, N'B07', 40)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (261, 3, N'Primer rechazo de prima', 30, N'B08', 40)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (262, 3, N'Primer rechazo de prima', 30, N'B09', 40)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (263, 3, N'Primer rechazo de prima', 30, N'B10', 40)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (264, 3, N'Aviso de caducidad', 30, N'B11', 3)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (265, 3, N'Aviso de caducidad', 30, N'B12', 3)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (266, 3, N'Aviso de caducidad', 30, N'B13', 3)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (267, 3, N'Aviso de caducidad', 30, N'B14', 3)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (268, 3, N'Segundo rechazo de prima', 30, N'B15', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (269, 3, N'Segundo rechazo de prima', 30, N'B16', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (270, 3, N'Segundo rechazo de prima', 30, N'B17', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (271, 3, N'Segundo rechazo de prima', 30, N'B18', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (272, 3, N'Opción de pago de prima', 30, N'B19', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (273, 3, N'Opción de pago de prima', 30, N'B20', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (274, 3, N'Segundo rechazo de prima', 30, N'B21', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (275, 3, N'Segundo rechazo de prima', 30, N'B22', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (276, 3, N'Segundo rechazo de prima', 30, N'B23', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (277, 3, N'Segundo rechazo de prima', 30, N'B24', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (278, 3, N'Segundo rechazo de prima', 30, N'B25', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (279, 3, N'Segundo rechazo de prima', 30, N'B26', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (280, 3, N'Segundo rechazo de prima', 30, N'B27', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (281, 3, N'Segundo rechazo de prima', 30, N'B28', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (282, 3, N'Opción de pago de prima', 30, N'B29', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (283, 3, N'Opción de pago de prima', 30, N'B30', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (284, 3, N'Opción de pago de prima', 30, N'B31', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (285, 3, N'Opción de pago de prima', 30, N'B32', 37)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (286, 3, N'Segundo rechazo de prima', 30, N'B33', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (287, 3, N'Segundo rechazo de prima', 30, N'B34', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (288, 3, N'Segundo rechazo de prima', 30, N'B35', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (289, 3, N'Segundo rechazo de prima', 30, N'B36', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (290, 3, N'Segundo rechazo de prima', 30, N'B37', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (291, 3, N'Segundo rechazo de prima', 30, N'B38', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (292, 3, N'Segundo rechazo de prima', 30, N'B39', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (293, 3, N'Segundo rechazo de prima', 30, N'B40', 50)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (294, 3, N'Notificación de caducidad', 30, N'B41', 36)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (295, 3, N'Notificación de caducidad', 30, N'B42', 36)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (296, 3, N'Notificación de caducidad', 30, N'B43', 36)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (297, 3, N'Notificación de caducidad', 30, N'B44', 36)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (298, 2, N'Aceptación de aportes adicionales', 30, N'B45', 1)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (299, 1, N'Aviso de Paid Up', 30, N'B46', 6)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (300, 1, N'Aviso de Paid Up', 30, N'B47', 6)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (301, 1, N'Aviso de Paid Up', 30, N'B48', 6)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (302, 1, N'Aviso de Paid Up', 30, N'B49', 6)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (303, 1, N'Aviso de Paid Up', 30, N'B50', 6)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (304, 3, N'Segundo rechazo de aporte', 30, N'B51', 49)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (305, 1, N'Aviso de Expiración Enfermedades Críticas', 30, N'C01', 5)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (306, 1, N'Aviso de Expiración Enfermedades Críticas', 30, N'C02', 5)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (307, 1, N'Expiración Enfermedades Críticas', 30, N'C03', 31)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (308, 1, N'No recontratación de Enfermedades Críticas', 30, N'C04', 35)
INSERT [dbo].[TypeDoc] ([Id], [GroupId], [Title], [Download], [LetterCode], [MailId]) VALUES (309, 1, N'Resumen Anual de Póliza', 30, N'RAP', 47)
SET IDENTITY_INSERT [dbo].[TypeDoc] OFF
/****** Object:  Index [AK_TypeDocu]    Script Date: 06/09/2016 14:57:02 ******/
ALTER TABLE [dbo].[TypeDoc] ADD  CONSTRAINT [AK_TypeDocu] UNIQUE NONCLUSTERED 
(
	[LetterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TypeDoc]  WITH NOCHECK ADD  CONSTRAINT [FK_TypeDoc_GroupsDoc] FOREIGN KEY([GroupId])
REFERENCES [dbo].[GroupsDoc] ([Id])
GO
ALTER TABLE [dbo].[TypeDoc] NOCHECK CONSTRAINT [FK_TypeDoc_GroupsDoc]
GO
