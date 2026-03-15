  UPDATE dba.mp_perm_usuarios_bod  
     SET precios = 'N'  
   WHERE dba.mp_perm_usuarios_bod.precios is null   ;
