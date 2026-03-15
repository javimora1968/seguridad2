
-----------------------------------------------------------------------------
-- DDL for Stored procedure 'opl_trailers.dba.consulta_empleado_especifico;1'
-----------------------------------------------------------------------------
print 'Creating Stored procedure consulta_empleado_especifico'
go 

setuser 'dba'
go 

CREATE PROCEDURE dba.consulta_empleado_especifico
@codigo varchar(20)
/* [ (@param_name datatype [= default] [output] ), ... ] */
AS
	BEGIN
		
      SELECT dba.no_datos_empleados.apellidos,   
             dba.no_datos_empleados.nombre  
        FROM dba.no_datos_empleados  
       WHERE dba.no_datos_empleados.doc_empleado = @codigo  


	END                                                                                                                                                                       
go 

Grant Execute on dba.consulta_empleado_especifico to digitadores 
go

sp_procxmode 'consulta_empleado_especifico', unchained
go 

setuser
go 

