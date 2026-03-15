
-----------------------------------------------------------------------------
-- DDL for Stored procedure 'opl_trailers.dba.consulta_todos_empleados;1'
-----------------------------------------------------------------------------
print 'Creating Stored procedure consulta_todos_empleados'
go 

setuser 'dba'
go 

CREATE PROCEDURE dba.consulta_todos_empleados
/* [ (@param_name datatype [= default] [output] ), ... ] */
AS
	BEGIN

        SELECT dba.no_datos_empleados.apellidos,   
               dba.no_datos_empleados.nombre  
        FROM dba.no_datos_empleados  
        ORDER BY dba.no_datos_empleados.apellidos,   
               dba.no_datos_empleados.nombre  

	END                                                                                                                                                      
go 

Grant Execute on dba.consulta_todos_empleados to digitadores 
go

sp_procxmode 'consulta_todos_empleados', unchained
go 

setuser
go 

