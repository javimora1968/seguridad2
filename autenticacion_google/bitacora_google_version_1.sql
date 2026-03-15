create table dba.usuarios_acceso
       (id_acceso int not null,
       email varchar(250) null,
       acces_token text null,
       identificacion char(15) null) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'usuarios_acceso',
       object_id('dba.usuarios_acceso'),
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
        values  ( 'usuarios_acceso',
        object_id('dba.usuarios_acceso'),
        'dba',  'id_acceso', 1,
        'id_acceso', 0 ,
        'id_acceso', 0,
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
        values  ( 'usuarios_acceso',
        object_id('dba.usuarios_acceso'),
        'dba',  'email', 2,
        'email', 0 ,
        'email', 0,
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
        values  ( 'usuarios_acceso',
        object_id('dba.usuarios_acceso'),
        'dba',  'acces_token', 3,
        'acces_token', 0 ,
        'acces_token', 0,
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
        values  ( 'usuarios_acceso',
        object_id('dba.usuarios_acceso'),
        'dba',  'identificacion', 4,
        'identificacion', 0 ,
        'identificacion', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
