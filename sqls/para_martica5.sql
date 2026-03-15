alter table dba.gl_empresas  add
       usuario_lista_cautelar char(15) null,
       contrasena_lista_cautelar char(15) null,
       base_datos_lista_cautelar varchar(30) null,
       servidor_lista_cautelar varchar(50) null,
       usuario_rep_lista_cautelar char(15) null,
       contrasena_rep_lista_cautelar char(15) null,
       base_datos_rep_lista_cautelar varchar(30) null,
       servidor_rep_lista_cautelar varchar(50) null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.gl_empresas');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'usuario_lista_cautelar', 67,
        'Usuario Lista Cautelar:', 0 ,
        'Usuario Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'contrasena_lista_cautelar', 68,
        'Contrasena Lista Cautelar:', 0 ,
        'Contrasena Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'base_datos_lista_cautelar', 69,
        'Base Datos Lista Cautelar:', 0 ,
        'Base Datos Lista Cautelar', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'servidor_lista_cautelar', 70,
        'Servidor Lista Cautelar:', 0 ,
        'Servidor Lista Cautelar', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'usuario_rep_lista_cautelar', 71,
        'Usuario Rep Lista Cautelar:', 0 ,
        'Usuario Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'contrasena_rep_lista_cautelar', 72,
        'Contrasena Rep Lista Cautelar:', 0 ,
        'Contrasena Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'base_datos_rep_lista_cautelar', 73,
        'Base Datos Rep Lista Cautelar:', 0 ,
        'Base Datos Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'servidor_rep_lista_cautelar', 74,
        'Servidor Rep Lista Cautelar:', 0 ,
        'Servidor Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        '',
        '', '');

