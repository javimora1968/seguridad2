alter table dba.usuarios_acceso  add
       fecha_hora_acceso datetime null;

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'usuarios_acceso',
       object_id('dba.usuarios_acceso'),
        'dba',
        -8,  400,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
       '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'usuarios_acceso',
        object_id('dba.usuarios_acceso'),
        'dba',  'fecha_hora_acceso', 5,
        'Fecha Hora Acceso:', 0 ,
        'Fecha Hora Acceso', 0,
       23 , '',
       0 , 53 , 481 ,
        '', 'N',
        '',
        '',
        '', '');

