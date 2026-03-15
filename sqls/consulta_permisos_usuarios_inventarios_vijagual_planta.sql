  SELECT dba.opciones_modulo_usuario.id_modulo,   
         dba.opciones_modulo_usuario.id_usuario,   
         dba.opciones_modulo_usuario.id_opcion,   
         dba.opciones_modulo_usuario.usuario,   
         dba.opciones_modulo_usuario.fec_registro,   
         dba.opciones_modulo_usuario.crear,   
         dba.opciones_modulo_usuario.modificar,   
         dba.opciones_modulo_usuario.eliminar,   
         dba.opciones_modulo_usuario.imprimir  
    FROM dba.opciones_modulo_usuario  
   WHERE ( dba.opciones_modulo_usuario.id_modulo = 'm_inventarios' ) AND  
         ( dba.opciones_modulo_usuario.id_usuario in ('ALGG','CAGM','CJBO','CMZR','DEPG','GEMG','GLAC','JAGM','LUES','LMAM','OELO','SOVP','VTPV','YMQM') )   ;
