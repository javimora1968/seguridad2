
-----------------------------------------------------------------------------
-- DDL for Index 'idx_log_accesos'
-----------------------------------------------------------------------------
print 'Creating Index idx_log_accesos'
go

create nonclustered index idx_log_accesos 
on ala.dba.log_accesos ( id_empresa, id_usuario, id_modulo, fecha_ingreso)
go 


