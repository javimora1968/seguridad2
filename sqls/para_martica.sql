alter table dba.gl_nits  add
       nit_representante_legal char(15) null,
       apellido1_representante_legal char(60) null,
       apellido2_representante_legal char(60) null,
       nombre1_representante_legal char(60) null,
       nombre2_representante_legal char(60) null,
       cod_actividad_economica varchar(10) null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.gl_nits');

update dbo.pbcatcol  set pbc_cnam = 'nit_representante_legal', pbc_labl = 'Nit Representante Legal:',
       pbc_lpos = 0 , pbc_hdr = 'Nit Representante Legal', pbc_hpos = 0 ,
       pbc_jtfy = 23 , pbc_mask = '', pbc_case = 0 ,
       pbc_hght = 65 , pbc_wdth = 325 , pbc_ptrn = '',
       pbc_bmap = 'N', pbc_init = '',
       pbc_cmnt = '',
       pbc_edit = ''
       where pbc_tid = object_id('dba.gl_nits')  and pbc_cid = 66;

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_nits',
        object_id('dba.gl_nits'),
        'dba',  'apellido1_representante_legal', 67,
        'Apellido1 Representante Legal:', 0 ,
        'Apellido1 Representante Legal', 0,
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
        values  ( 'gl_nits',
        object_id('dba.gl_nits'),
        'dba',  'apellido2_representante_legal', 68,
        'Apellido2 Representante Legal:', 0 ,
        'Apellido2 Representante Legal', 0,
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
        values  ( 'gl_nits',
        object_id('dba.gl_nits'),
        'dba',  'nombre1_representante_legal', 69,
        'Nombre1 Representante Legal:', 0 ,
        'Nombre1 Representante Legal', 0,
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
        values  ( 'gl_nits',
        object_id('dba.gl_nits'),
        'dba',  'nombre2_representante_legal', 70,
        'Nombre2 Representante Legal:', 0 ,
        'Nombre2 Representante Legal', 0,
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
        values  ( 'gl_nits',
        object_id('dba.gl_nits'),
        'dba',  'cod_actividad_economica', 71,
        'Cod Actividad Economica:', 0 ,
        'Cod Actividad Economica', 0,
       23 , '',
       0 , 65 , 238 ,
        '', 'N',
        '',
        '',
        '', '');

