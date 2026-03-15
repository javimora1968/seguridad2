use test_lanza
go
set nocount on
go
declare
    @sql							 varchar(255),
	@codigo_articulo                 char(15),
    @ubicacion                       char(20)
SELECT codigo_articulo,ubicacion
INTO #tablas_a
FROM dba.mp_materia_prima
WHERE id_empresa = '01' 
print select cast(getdate() as varchar(255)) + ' Inicia proceso'

while exists(select 1 from #tablas_a)
begin

	select top 1
    	@codigo_articulo = codigo_articulo, @ubicacion = ubicacion
    from #tablas_a

    select @sql='UPDATE dba.mp_existencias SET ubicacion = "' + @ubicacion + '" WHERE id_empresa = "01" AND id_bodega = "01" AND articulo =  "' + @codigo_articulo + '"'
    --exec(@sql)
    print @sql

    delete #tablas_a
    where codigo_articulo=@codigo_articulo

end
go
drop table #tablas_a
go
print select cast(getdate() as varchar(255)) + ' Finaliza proceso'


