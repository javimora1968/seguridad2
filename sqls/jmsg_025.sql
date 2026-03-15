alter table dba.usuarios  add
       usuario_crea char(15) null,
       fecha_creacion datetime null,
       usuario_desactiva char(15) null,
       fecha_desactiva datetime null,
       usuario_reactiva char(15) null,
       fecha_reactiva datetime null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.usuarios');

update dbo.pbcatcol  set pbc_cnam = 'usuario_crea', pbc_labl = 'Usuario Crea:',
       pbc_lpos = 0 , pbc_hdr = 'Usuario Crea', pbc_hpos = 0 ,
       pbc_jtfy = 23 , pbc_mask = '', pbc_case = 0 ,
       pbc_hght = 65 , pbc_wdth = 325 , pbc_ptrn = '',
       pbc_bmap = 'N', pbc_init = '',
       pbc_cmnt = '',
       pbc_edit = ''
       where pbc_tid = object_id('dba.usuarios')  and pbc_cid = 17;

update dbo.pbcatcol  set pbc_cnam = 'fecha_creacion', pbc_labl = 'Fecha Creacion:',
       pbc_lpos = 0 , pbc_hdr = 'Fecha Creacion', pbc_hpos = 0 ,
       pbc_jtfy = 23 , pbc_mask = '', pbc_case = 0 ,
       pbc_hght = 65 , pbc_wdth = 385 , pbc_ptrn = '',
       pbc_bmap = 'N', pbc_init = '',
       pbc_cmnt = '',
       pbc_edit = ''
       where pbc_tid = object_id('dba.usuarios')  and pbc_cid = 18;

update dbo.pbcatcol  set pbc_cnam = 'usuario_desactiva', pbc_labl = 'Usuario Desactiva:',
       pbc_lpos = 0 , pbc_hdr = 'Usuario Desactiva', pbc_hpos = 0 ,
       pbc_jtfy = 23 , pbc_mask = '', pbc_case = 0 ,
       pbc_hght = 65 , pbc_wdth = 325 , pbc_ptrn = '',
       pbc_bmap = 'N', pbc_init = '',
       pbc_cmnt = '',
       pbc_edit = ''
       where pbc_tid = object_id('dba.usuarios')  and pbc_cid = 19;

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'usuarios',
        object_id('dba.usuarios'),
        'dba',  'fecha_desactiva', 20,
        'Fecha Desactiva:', 0 ,
        'Fecha Desactiva', 0,
       23 , '',
       0 , 65 , 385 ,
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
        values  ( 'usuarios',
        object_id('dba.usuarios'),
        'dba',  'usuario_reactiva', 21,
        'Usuario Reactiva:', 0 ,
        'Usuario Reactiva', 0,
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
        values  ( 'usuarios',
        object_id('dba.usuarios'),
        'dba',  'fecha_reactiva', 22,
        'Fecha Reactiva:', 0 ,
        'Fecha Reactiva', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        '',
        '', '');

