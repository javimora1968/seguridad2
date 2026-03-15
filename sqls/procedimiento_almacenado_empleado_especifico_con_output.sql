
-----------------------------------------------------------------------------
-- DDL for Stored procedure 'opl_trailers.dba.consult_empl_especifico_output;1'
-----------------------------------------------------------------------------
print 'Creating Stored procedure consult_empl_especifico_output'
go 


setuser 'dba'
go 

CREATE PROCEDURE dba.consult_empl_especifico_output
@codigo varchar(20),@codigo1 varchar(20) output
/* [ (@param_name datatype [= default] [output] ), ... ] */
AS
	BEGIN
		
		
      SELECT dba.no_datos_empleados.apellidos,   
             dba.no_datos_empleados.nombre  
        FROM dba.no_datos_empleados  
       WHERE dba.no_datos_empleados.doc_empleado = @codigo  

        SET @codigo1=@codigo+"-"
	
	END                                                                                                    
go 

Grant Execute on dba.consult_empl_especifico_output to digitadores 
go

sp_procxmode 'consult_empl_especifico_output', unchained
go 

setuser
go 

