prompt --application/deployment/install/install_index
begin
--   Manifest
--     INSTALL: INSTALL-Index
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
 p_id=>wwv_flow_imp.id(65382717843975014432)
,p_install_id=>wwv_flow_imp.id(64845288597612745676)
,p_name=>'Index'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE UNIQUE INDEX "ERP_CARGO_FUNCIONARIO_PK" ON "ERP_CARGO_FUNCIONARIO" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_CLIENTE_CPF_UK" ON "ERP_CLIENTE" ("CPF") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_CLIENTE_ENDERECO_PK" ON "ERP_CLIENTE_ENDERECO" ("ID", "ERP_CLIENTE_ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_CLIENTE_PK" ON "ERP_CLIENTE" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_COMPRA_ITEM_PK" ON "ERP_COMPRA_ITEM" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_COMPRA_PK" ON "ERP_COMPRA" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_CONTATO_CLIENTE_PK" ON "ERP_CONTATO_CLIENTE" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_ESTADO_PK" ON "ERP_ESTADO" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_FILIAL_PK" ON "ERP_FILIAL" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_FORNECEDOR_PK" ON "ERP_FORNECEDOR" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_FUNCIONARIO_PK" ON "ERP_FUNCIONARIO" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_ORCAMENTO_COMPRA_PK" ON "ERP_ORCAMENTO_COMPRA" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_USUARIO_EMAIL_UK" ON "ERP_USUARIO" ("EMAIL") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_USUARIO_LOGIN_UK" ON "ERP_USUARIO" ("LOGIN") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_USUARIO_PK" ON "ERP_USUARIO" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_VENDA_ITEM_PK" ON "ERP_VENDA_ITEM" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "ERP_VENDA_PK" ON "ERP_VENDA" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "PRODUTO_PK" ON "ERP_PRODUTO" ("ID") ',
'  ;',
'',
'  CREATE UNIQUE INDEX "TIPO_CONTATO_PK" ON "ERP_TIPO_CONTATO" ("ID") ',
'  ; '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382717921177014432)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_CARGO_FUNCIONARIO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382718170625014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_CLIENTE_CPF_UK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382718352038014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_CLIENTE_ENDERECO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382718555762014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_CLIENTE_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382718773148014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_COMPRA_ITEM_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382718942012014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_COMPRA_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382719198424014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_CONTATO_CLIENTE_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382719327086014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_ESTADO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382719539211014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_FILIAL_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382719765355014433)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_FORNECEDOR_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382719979925014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_FUNCIONARIO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382720100439014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_ORCAMENTO_COMPRA_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382720344746014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_USUARIO_EMAIL_UK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382720551962014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_USUARIO_LOGIN_UK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382720791435014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_USUARIO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382720953508014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_VENDA_ITEM_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382721185828014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'ERP_VENDA_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382721342471014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'PRODUTO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65382721503930014434)
,p_script_id=>wwv_flow_imp.id(65382717843975014432)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TIPO_CONTATO_PK'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214122258','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
