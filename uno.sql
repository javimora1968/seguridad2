create table dba.gl_empresas
       (id_empresa char(2) not null,
       nit_empresa char(15) not null,
       digito_de_verificacion char(1) null,
       razon_social_empresa varchar(60) not null,
       direccion_empresa varchar(60) null,
       ciudad_empresa varchar(20) null,
       telefono_empresa char(15) null,
       indicador_autoretenedor char(1) not null,
       nombre_representante_legal varchar(60) null,
       nombre_revisor_fiscal varchar(60) null,
       nombre_del_contador varchar(60) null,
       nivel_clasificacion char(12) null,
       indicador_gran_contribuyente char(1) null,
       resolucion_autorretenedor char(15) null,
       regimen char(1) null,
       fecha_control datetime null,
       ind_aut_rendim_financ char(1) null,
       res_aut_redim_financ char(15) null,
       representante_legal2 varchar(60) null,
       representante_legal3 varchar(60) null,
       representante_legal4 varchar(60) null,
       representante_legal5 varchar(60) null,
       empresa_revisoria_fiscal varchar(60) null,
       suplente_revisor_fiscar varchar(60) null,
       tp_contador varchar(10) null,
       ciudad_tributaria varchar(20) null,
       id_tipo_actividad char(3) null,
       id_actividad char(5) null,
       depto_empresa varchar(60) null,
       tipo_empresa char(3) null,
       id_dpto_dane char(3) null,
       id_ciudad_dane char(3) null,
       id_usuario char(4) null,
       fec_registro datetime null,
       tipo_documento varchar(60) null,
       fecha_apertura datetime null,
       texto_apertura text null,
       fecha_gran_contribuyente datetime null,
       e_mail varchar(100) null,
       personeria_juridica varchar(100) null,
       titulo_contador varchar(30) null,
       titulo_revisor_fiscal varchar(30) null,
       logo_empresa varchar(255) null,
       fec_autoretenedor datetime null,
       ind_retenedor_iva char(1) null,
       apartado_aereo varchar(20) null,
       fax varchar(30) null,
       pagina varchar(100) null,
       resolucion_grancontribuyente varchar(15) null,
       tp_revisor varchar(10) null,
       nit_representante_legal char(15) null,
       titulo_representante_legal varchar(30) null,
       nombre_ap varchar(30) null,
       nombre_empresa_corto varchar(30) null,
       id_servidor_correo varchar(50) null,
       ind_req_usrio_contrsena_correo char(1) null,
       ind_requiere_encripcion char(1) null,
       usuario_para_envio_correo char(30) null,
       contrasena_para_envio_correo char(30) null,
       puerto_servidor_correo numeric(8,0) null,
       email_remitente varchar(100) null,
       usuario_lista_cautelar char(30) null,
       contrasena_lista_cautelar char(30) null,
       base_datos_lista_cautelar varchar(30) null,
       servidor_lista_cautelar varchar(50) null,
       usuario_rep_lista_cautelar char(30) null,
       contrasena_rep_lista_cautelar char(30) null,
       base_datos_rep_lista_cautelar varchar(30) null,
       servidor_rep_lista_cautelar varchar(50) null,
       nit_empresa_absorbe char(15) null,
       nombre_empresa_absorbe varchar(100) null,
       direccion_empresa_absorbe varchar(100) null,
       segundo_nombre_r_legal varchar(60) null,
       pirmer_nombre_rep_legal varchar(60) null,
       primer_apellido_rep_legal varchar(60) null,
       segundo_apellido_r_legal varchar(60) null,
       tipo_id_rep_legal char(2) null) ;
 
alter table dba.gl_empresas
       add constraint gl_empresa_7840058241 primary key  clustered
       (id_empresa) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'gl_empresas',
       object_id('dba.gl_empresas'),
        'dba',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
       ' ') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_empresa', 1,
        'id_empresa', 0 ,
        'id_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nit_empresa', 2,
        'nit_empresa', 0 ,
        'nit_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'digito_de_verificacion', 3,
        'digito_de_verificacion', 0 ,
        'digito_de_verificacion', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'razon_social_empresa', 4,
        'razon_social_empresa', 0 ,
        'razon_social_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'direccion_empresa', 5,
        'direccion_empresa', 0 ,
        'direccion_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ciudad_empresa', 6,
        'ciudad_empresa', 0 ,
        'ciudad_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'telefono_empresa', 7,
        'telefono_empresa', 0 ,
        'telefono_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'indicador_autoretenedor', 8,
        'indicador_autoretenedor', 0 ,
        'indicador_autoretenedor', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_representante_legal', 9,
        'nombre_representante_legal', 0 ,
        'nombre_representante_legal', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_revisor_fiscal', 10,
        'nombre_revisor_fiscal', 0 ,
        'nombre_revisor_fiscal', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_del_contador', 11,
        'nombre_del_contador', 0 ,
        'nombre_del_contador', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nivel_clasificacion', 12,
        'nivel_clasificacion', 0 ,
        'nivel_clasificacion', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'indicador_gran_contribuyente', 13,
        'indicador_gran_contribuyente', 0 ,
        'indicador_gran_contribuyente', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'resolucion_autorretenedor', 14,
        'resolucion_autorretenedor', 0 ,
        'resolucion_autorretenedor', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'regimen', 15,
        'regimen', 0 ,
        'regimen', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fecha_control', 16,
        'fecha_control', 0 ,
        'fecha_control', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ind_aut_rendim_financ', 17,
        'ind_aut_rendim_financ', 0 ,
        'ind_aut_rendim_financ', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'res_aut_redim_financ', 18,
        'res_aut_redim_financ', 0 ,
        'res_aut_redim_financ', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'representante_legal2', 19,
        'representante_legal2', 0 ,
        'representante_legal2', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'representante_legal3', 20,
        'representante_legal3', 0 ,
        'representante_legal3', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'representante_legal4', 21,
        'representante_legal4', 0 ,
        'representante_legal4', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'representante_legal5', 22,
        'representante_legal5', 0 ,
        'representante_legal5', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'empresa_revisoria_fiscal', 23,
        'empresa_revisoria_fiscal', 0 ,
        'empresa_revisoria_fiscal', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'suplente_revisor_fiscar', 24,
        'suplente_revisor_fiscar', 0 ,
        'suplente_revisor_fiscar', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'tp_contador', 25,
        'tp_contador', 0 ,
        'tp_contador', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ciudad_tributaria', 26,
        'ciudad_tributaria', 0 ,
        'ciudad_tributaria', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_tipo_actividad', 27,
        'id_tipo_actividad', 0 ,
        'id_tipo_actividad', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_actividad', 28,
        'id_actividad', 0 ,
        'id_actividad', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'depto_empresa', 29,
        'depto_empresa', 0 ,
        'depto_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'tipo_empresa', 30,
        'tipo_empresa', 0 ,
        'tipo_empresa', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_dpto_dane', 31,
        'id_dpto_dane', 0 ,
        'id_dpto_dane', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_ciudad_dane', 32,
        'id_ciudad_dane', 0 ,
        'id_ciudad_dane', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_usuario', 33,
        'Id Usuario:', 0 ,
        'Id Usuario', 0,
       23 , '',
       0 , 65 , 129 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fec_registro', 34,
        'Fec Registro:', 0 ,
        'Fec Registro', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'tipo_documento', 35,
        'Tipo Documento:', 0 ,
        'Tipo Documento', 0,
       23 , '',
       0 , 65 , 1153 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fecha_apertura', 36,
        'Fecha Apertura:', 0 ,
        'Fecha Apertura', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'texto_apertura', 37,
        'Texto Apertura:', 0 ,
        'Texto Apertura', 0,
       23 , '',
       0 , 65 , 4718 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fecha_gran_contribuyente', 38,
        'Fecha Gran Contribuyente:', 0 ,
        'Fecha Gran Contribuyente', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'e_mail', 39,
        'Personeria Juridica:', 0 ,
        'Personeria Juridica', 0,
       23 , '',
       0 , 65 , 1879 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'personeria_juridica', 40,
        'Titulo Revisor Fiscal:', 0 ,
        'Titulo Revisor Fiscal', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'titulo_contador', 41,
        'Logo Empresa:', 0 ,
        'Logo Empresa', 0,
       23 , '',
       0 , 65 , 4718 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'titulo_revisor_fiscal', 42,
        'Fec Autoretenedor:', 0 ,
        'Fec Autoretenedor', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'logo_empresa', 43,
        'Logo Empresa:', 0 ,
        'Logo Empresa', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fec_autoretenedor', 44,
        'Apartado Aereo:', 0 ,
        'Apartado Aereo', 0,
       23 , '',
       0 , 65 , 421 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ind_retenedor_iva', 45,
        'Fax:', 0 ,
        'Fax', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'apartado_aereo', 46,
        'Pagina:', 0 ,
        'Pagina', 0,
       23 , '',
       0 , 65 , 1879 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'fax', 47,
        'Resolucion Grancontribuyente:', 0 ,
        'Resolucion Grancontribuyente', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'pagina', 48,
        'Tp Revisor:', 0 ,
        'Tp Revisor', 0,
       23 , '',
       0 , 65 , 238 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'resolucion_grancontribuyente', 49,
        'Nit Representante Legal:', 0 ,
        'Nit Representante Legal', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'tp_revisor', 50,
        'Titulo Representante Legal:', 0 ,
        'Titulo Representante Legal', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nit_representante_legal', 51,
        'Nombre Ap:', 0 ,
        'Nombre Ap', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'titulo_representante_legal', 52,
        'titulo_representante_legal', 0 ,
        'titulo_representante_legal', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_ap', 53,
        'nombre_ap', 0 ,
        'nombre_ap', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_empresa_corto', 54,
        'nombre_empresa_corto', 0 ,
        'nombre_empresa_corto', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'id_servidor_correo', 55,
        'id_servidor_correo', 0 ,
        'id_servidor_correo', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ind_req_usrio_contrsena_correo', 56,
        'ind_req_usrio_contrsena_correo', 0 ,
        'ind_req_usrio_contrsena_correo', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'ind_requiere_encripcion', 57,
        'ind_requiere_encripcion', 0 ,
        'ind_requiere_encripcion', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'usuario_para_envio_correo', 58,
        'usuario_para_envio_correo', 0 ,
        'usuario_para_envio_correo', 0,
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
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'contrasena_para_envio_correo', 59,
        'Nombre Empresa Corto:', 0 ,
        'Nombre Empresa Corto', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'puerto_servidor_correo', 60,
        'Id Servidor Correo:', 0 ,
        'Id Servidor Correo', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'email_remitente', 61,
        'ind_req_usrio_contrsena_correo', 0 ,
        'ind_req_usrio_contrsena_correo', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'usuario_lista_cautelar', 62,
        'Ind Requiere Encripcion:', 0 ,
        'Ind Requiere Encripcion', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'contrasena_lista_cautelar', 63,
        'Usuario Para Envio Correo:', 0 ,
        'Usuario Para Envio Correo', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'base_datos_lista_cautelar', 64,
        'Contrasena Para Envio Correo:', 0 ,
        'Contrasena Para Envio Correo', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'servidor_lista_cautelar', 65,
        'Puerto Servidor Correo:', 0 ,
        'Puerto Servidor Correo', 0,
       24 , '[General]',
       0 , 65 , 238 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'usuario_rep_lista_cautelar', 66,
        'Email Remitente:', 0 ,
        'Email Remitente', 0,
       23 , '',
       0 , 65 , 1879 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'contrasena_rep_lista_cautelar', 67,
        'Usuario Lista Cautelar:', 0 ,
        'Usuario Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'base_datos_rep_lista_cautelar', 68,
        'Contrasena Lista Cautelar:', 0 ,
        'Contrasena Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'servidor_rep_lista_cautelar', 69,
        'Base Datos Lista Cautelar:', 0 ,
        'Base Datos Lista Cautelar', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nit_empresa_absorbe', 70,
        'Servidor Lista Cautelar:', 0 ,
        'Servidor Lista Cautelar', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'nombre_empresa_absorbe', 71,
        'Usuario Rep Lista Cautelar:', 0 ,
        'Usuario Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'direccion_empresa_absorbe', 72,
        'Contrasena Rep Lista Cautelar:', 0 ,
        'Contrasena Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'segundo_nombre_r_legal', 73,
        'Base Datos Rep Lista Cautelar:', 0 ,
        'Base Datos Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 599 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'pirmer_nombre_rep_legal', 74,
        'Servidor Rep Lista Cautelar:', 0 ,
        'Servidor Rep Lista Cautelar', 0,
       23 , '',
       0 , 65 , 965 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'primer_apellido_rep_legal', 75,
        'Nit Empresa Absorbe:', 0 ,
        'Nit Empresa Absorbe', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'segundo_apellido_r_legal', 76,
        'Nombre Empresa Absorbe:', 0 ,
        'Nombre Empresa Absorbe', 0,
       23 , '',
       0 , 65 , 1879 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'gl_empresas',
        object_id('dba.gl_empresas'),
        'dba',  'tipo_id_rep_legal', 77,
        'Direccion Empresa Absorbe:', 0 ,
        'Direccion Empresa Absorbe', 0,
       23 , '',
       0 , 65 , 1879 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
