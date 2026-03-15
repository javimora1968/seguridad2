alter table dba.usuarios  add
       fec_ultimo_ingreso datetime null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.usuarios');

update dbo.pbcatcol  set pbc_cnam = 'fec_ultimo_ingreso', pbc_labl = 'Fec Ultimo Ingreso:',
       pbc_lpos = 0 , pbc_hdr = 'Fec Ultimo Ingreso', pbc_hpos = 0 ,
       pbc_jtfy = 23 , pbc_mask = '', pbc_case = 0 ,
       pbc_hght = 65 , pbc_wdth = 385 , pbc_ptrn = '',
       pbc_bmap = 'N', pbc_init = '',
       pbc_cmnt = '',
       pbc_edit = ''
       where pbc_tid = object_id('dba.usuarios')  and pbc_cid = 16;

