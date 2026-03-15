  SELECT dba.opciones_modulo_grupo.id_modulo,   
         dba.opciones_modulo_grupo.id_grupo,   
         dba.opciones_modulo_grupo.id_opcion,   
         dba.opciones_modulo_grupo.id_usuario,   
         dba.opciones_modulo_grupo.fec_registro  
    FROM dba.opciones_modulo_grupo  
   WHERE dba.opciones_modulo_grupo.id_modulo = 'm_nomina'   ;
