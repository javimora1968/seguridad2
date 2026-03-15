
-----------------------------------------------------------------------------
-- DDL for Index 'idx_opciones_modulo_usuario'
-----------------------------------------------------------------------------
print 'Creating Index idx_opciones_modulo_usuario'
go

create nonclustered index idx_opciones_modulo_usuario 
on dba.opciones_modulo_usuario ( id_modulo, id_usuario, id_opcion)
go 


