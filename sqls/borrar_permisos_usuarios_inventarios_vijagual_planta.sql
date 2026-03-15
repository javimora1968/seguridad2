DELETE FROM dba.opciones_modulo_usuario 
FROM dba.opciones_modulo_usuario  
WHERE ( dba.opciones_modulo_usuario.id_modulo = 'm_inventarios' ) AND  
      ( dba.opciones_modulo_usuario.id_usuario in ('ALGG','CAGM','CJBO','CMZR','DEPG','GEMG','GLAC','JAGM','LUES','LMAM','OELO','SOVP','VTPV','YMQM') )   ;
