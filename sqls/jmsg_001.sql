create table dba.opciones_por_modulo
       (id_modulo char(30) not null,
       id_opcion char(50) not null,
       descripcion varchar(60) not null,
       id_opcion_padre char(50) not null);

alter table dba.opciones_por_modulo
       add constraint pk_opciones_por_modulo primary key  nonclustered
       (id_modulo,
       id_opcion);

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'opciones_por_modulo',
       object_id('dba.opciones_por_modulo'),
        'dba',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
       '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'opciones_por_modulo',
        object_id('dba.opciones_por_modulo'),
        'dba',  'id_modulo', 1,
        'Id Modulo:', 0 ,
        'Id Modulo', 0,
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
        values  ( 'opciones_por_modulo',
        object_id('dba.opciones_por_modulo'),
        'dba',  'id_opcion', 2,
        'Id Opcion:', 0 ,
        'Id Opcion', 0,
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
        values  ( 'opciones_por_modulo',
        object_id('dba.opciones_por_modulo'),
        'dba',  'descripcion', 3,
        'Descripcion:', 0 ,
        'Descripcion', 0,
       23 , '',
       0 , 65 , 1153 ,
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
        values  ( 'opciones_por_modulo',
        object_id('dba.opciones_por_modulo'),
        'dba',  'id_opcion_padre', 4,
        'Id Opcion Padre:', 0 ,
        'Id Opcion Padre', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        '',
        '', '');

