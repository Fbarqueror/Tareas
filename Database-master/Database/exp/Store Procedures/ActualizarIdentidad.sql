CREATE PROCEDURE [EXP].[ActualizarIdentidad]
    @IdPersona  int,
	@Cedula int, 
	@Pasaporte int,
	@Cedula_Juridica int



AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE exp.Persona SET
	 Cedula= @Cedula,
	 Pasaporte=@Pasaporte,
	 Cedula_Juridica=@Cedula_Juridica
	
	WHERE 
	       IdPersona=@IdPersona
	
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