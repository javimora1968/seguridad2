  SELECT dba.opciones_por_modulo.id_modulo,   
         dba.opciones_por_modulo.id_opcion,   
         dba.opciones_por_modulo.descripcion,   
         dba.opciones_por_modulo.id_opcion_padre,   
         dba.opciones_por_modulo.id_usuario,   
         dba.opciones_por_modulo.fec_registro  
    FROM dba.opciones_por_modulo  
   WHERE dba.opciones_por_modulo.id_modulo = 'm_nomina' and
			dba.opciones_por_modulo.id_opcion='m_porcajasdecompensacion'   ;
