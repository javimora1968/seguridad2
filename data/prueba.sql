create table dba.opciones_modulo_grupo
       (id_modulo char(30) not null,
       id_grupo char(4) not null,
       id_opcion char(50) not null,
       id_usuario char(4) not null,
       fec_registro datetime not null) ;
 
alter table dba.opciones_modulo_grupo
       add constraint pk_opciones_modulo_grupo primary key  nonclustered
       (id_modulo,
       id_grupo,
       id_opcion) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'opciones_modulo_grupo',
       object_id('dba.opciones_modulo_grupo'),
        'dba',
        0,  0,  'N',  'N',  0,  0,
        '',
        0,  0,  'N',  'N',  0,  0,
        '',
        0,  0,  'N',  'N',  0,  0,
        '',
       '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_modulo_grupo',
        object_id('dba.opciones_modulo_grupo'),
        'dba',  'id_modulo', 1,
        'id_modulo', 0 ,
        'id_modulo', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_modulo_grupo',
        object_id('dba.opciones_modulo_grupo'),
        'dba',  'id_grupo', 2,
        'id_grupo', 0 ,
        'id_grupo', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_modulo_grupo',
        object_id('dba.opciones_modulo_grupo'),
        'dba',  'id_opcion', 3,
        'id_opcion', 0 ,
        'id_opcion', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_modulo_grupo',
        object_id('dba.opciones_modulo_grupo'),
        'dba',  'id_usuario', 4,
        'id_usuario', 0 ,
        'id_usuario', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_modulo_grupo',
        object_id('dba.opciones_modulo_grupo'),
        'dba',  'fec_registro', 5,
        'fec_registro', 0 ,
        'fec_registro', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
