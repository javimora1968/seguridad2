  UPDATE dba.mp_perm_usuarios_bod  
     SET pedidos = 'N'  
   WHERE dba.mp_perm_usuarios_bod.pedidos is null   ;
