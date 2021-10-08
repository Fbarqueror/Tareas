CREATE PROCEDURE [exp].[InsertarIdentidad]
	@Cedula int, 
	@Pasaporte int, 
	@Cedula_Juridica int
	
AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO exp.Persona
	(Cedula,
	 Pasaporte,
	 Cedula_Juridica
	 
	)
	VALUES
	(
	@Cedula,
	@Pasaporte,
	@Cedula_Juridica
	
	)

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

   SELECT 
         ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
   
   ROLLBACK TRANSACTION TRASA

   END CATCH

 END



