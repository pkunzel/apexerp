prompt --application/deployment/install/install_triggers
begin
--   Manifest
--     INSTALL: INSTALL-Triggers
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(65380605655095507141)
,p_install_id=>wwv_flow_imp.id(64845288597612745676)
,p_name=>'Triggers'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger "ERP_CARGO_FUNCIONARIO_BI"',
'before',
'insert or update or delete on "ERP_CARGO_FUNCIONARIO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_CLIENTE_BI"',
'before',
'insert or update or delete on "ERP_CLIENTE"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_CLIENTE_ENDERECO_BI"',
'before',
'insert or update or delete on "ERP_CLIENTE_ENDERECO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_COMPRA_BI"',
'before',
'insert or update or delete on "ERP_COMPRA"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_COMPRA_ITEM_BI"',
'before',
'insert or update or delete on "ERP_COMPRA_ITEM"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_CONTATO_CLIENTE_BI"',
'before',
'insert or update or delete on "ERP_CONTATO_CLIENTE"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_ESTADO_BI"',
'before',
'insert or update or delete on "ERP_ESTADO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_FILIAL_BI"',
'before',
'insert or update or delete on "ERP_FILIAL"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_FORNECEDOR_BI"',
'before',
'insert or update or delete on "ERP_FORNECEDOR"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_FUNCIONARIO_BI"',
'before',
'insert or update or delete on "ERP_FUNCIONARIO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:= SYSTIMESTAMP AT TIME ZONE ''America/Sao_Paulo''; ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    if UPDATING then ',
'        :new.data_atualizacao:= SYSTIMESTAMP AT TIME ZONE ''America/Sao_Paulo''; ',
'        :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if;',
'   ',
'end;',
'/',
'create or replace trigger "ERP_ORCAMENTO_COMPRA_BI"',
'before',
'insert or update or delete on "ERP_ORCAMENTO_COMPRA"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_PRODUTO_BI"',
'before',
'insert or update or delete on "ERP_PRODUTO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_TIPO_CONTATO_BI"',
'before',
'insert or update or delete on "ERP_TIPO_CONTATO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_USUARIO_BI"',
'before',
'insert or update on "ERP_USUARIO"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'        :new.ativo:=''S''; ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_VENDA_BI"',
'before',
'insert or update or delete on "ERP_VENDA"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/',
'create or replace trigger "ERP_VENDA_ITEM_BI"',
'before',
'insert or update or delete on "ERP_VENDA_ITEM"',
'for each row',
'begin',
'    if INSERTING then ',
'        :new.data_criacao:=sysdate;   ',
'        :new.criado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'',
'    :new.data_atualizacao:=sysdate;',
'    :new.atualizado_por:=coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    ',
'end;',
'/ '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380605739624507142)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_CARGO_FUNCIONARIO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380605918161507142)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_CLIENTE_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380606147387507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_CLIENTE_ENDERECO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380606333960507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_COMPRA_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380606551853507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_COMPRA_ITEM_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380606768010507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_CONTATO_CLIENTE_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380606947642507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_ESTADO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380607194265507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_FILIAL_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380607353434507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_FORNECEDOR_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380607572395507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_FUNCIONARIO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380607790261507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_ORCAMENTO_COMPRA_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380607940141507143)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_PRODUTO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380608112663507144)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_TIPO_CONTATO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380608385332507144)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_USUARIO_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380608556503507144)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_VENDA_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65380608703601507144)
,p_script_id=>wwv_flow_imp.id(65380605655095507141)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ERP_VENDA_ITEM_BI'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121952','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
