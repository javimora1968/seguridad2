UPDATE dba.usuarios  
SET fec_cambio_clave = convert( datetime,'07/02/2003'),   
    estado = 'A',   
    cambio_passwd_siguente_sesion = 'N'  ;
