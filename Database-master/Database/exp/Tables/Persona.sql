CREATE TABLE [exp].[Persona]
(
	[IdPersona] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED([IdPersona]), 
    [Cedula] NCHAR(10) NULL, 
    [Pasaporte] NCHAR(10) NULL, 
    [Cedula_Juridica] NCHAR(10) NULL 
  
)
WITH (DATA_COMPRESSION = PAGE)
GO
