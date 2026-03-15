  SELECT dba.opciones_modulo_usuario.id_modulo,   
         dba.opciones_modulo_usuario.id_usuario,   
         dba.opciones_modulo_usuario.id_opcion,   
         dba.opciones_modulo_usuario.usuario,   
         dba.opciones_modulo_usuario.fec_registro  
    FROM dba.opciones_modulo_usuario  
   WHERE ( dba.opciones_modulo_usuario.id_modulo = 'm_frigosan' ) AND  
         ( dba.opciones_modulo_usuario.id_usuario = 'CMZR' )   ;
