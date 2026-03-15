alter table dba.opciones_modulo_grupo
       add constraint fk_opcnes_mdlo_grpo_por_mdlo foreign key (
       id_modulo,
       id_opcion)
        references dba.opciones_por_modulo
       (id_modulo,
       id_opcion);

