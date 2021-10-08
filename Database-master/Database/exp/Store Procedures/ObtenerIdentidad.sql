CREATE PROCEDURE [exp].[ObtenerIdentidad]
      @IdPersona int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.IdPersona,
     E.Cedula,
     E.Pasaporte,
     E.Cedula_Juridica
       
    FROM EXP.Persona E
    WHERE
    (@IdPersona IS NULL OR IdPersona=@IdPersona)

END