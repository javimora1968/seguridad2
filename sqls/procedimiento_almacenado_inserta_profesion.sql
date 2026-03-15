
-----------------------------------------------------------------------------
-- DDL for Stored procedure 'opl_trailers.dba.profesiones;1'
-----------------------------------------------------------------------------
print 'Creating Stored procedure profesiones'
go 


setuser 'dba'
go 

CREATE PROCEDURE dba.profesiones
@empresa char(10),@cod_profesion char(2),@nombre_profesion char(35)
/* [ (@param_name datatype [= default] [output] ), ... ] */
AS
	BEGIN


  INSERT INTO dba.ch_profesiones  
         ( id_empresas,   
           id_profesion,   
           nombre,
           id_usuario,
           fec_registro)
        
  VALUES ( @empresa,   
           @cod_profesion,   
           @nombre_profesion,
           NULL,
           NULL)

		
	END                                             
go 

Grant Execute on dba.profesiones to digitadores 
go

sp_procxmode 'profesiones', unchained
go 

setuser
go 

