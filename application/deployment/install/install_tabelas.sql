prompt --application/deployment/install/install_tabelas
begin
--   Manifest
--     INSTALL: INSTALL-Tabelas
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
 p_id=>wwv_flow_imp.id(65379184532033991183)
,p_install_id=>wwv_flow_imp.id(64845288597612745676)
,p_name=>'Tabelas'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "ERP_CARGO_FUNCIONARIO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"DESCRICAO" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_CARGO_FUNCIONARIO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_CLIENTE" ',
'   (	"ID" NUMBER(38,8) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"CPF" CHAR(11 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_CLIENTE_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "ERP_CLIENTE_CPF_UK" UNIQUE ("CPF")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_CLIENTE_ENDERECO" ',
'   (	"ID" NUMBER(38,0) NOT NULL ENABLE, ',
'	"ERP_CLIENTE_ID" NUMBER(38,0) NOT NULL ENABLE, ',
'	"CEP" CHAR(8 CHAR) NOT NULL ENABLE, ',
'	"RUA" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_CLIENTE_ENDERECO_PK" PRIMARY KEY ("ID", "ERP_CLIENTE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_COMPRA" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"CODIGO_ORCAMENTO_FORNEC" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"VALOR_TOTAL_COMPRA" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_COMPRA_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_COMPRA_ITEM" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"QUANTIDADE" NUMBER(38,0) NOT NULL ENABLE, ',
'	"VALOR_UNITARIO" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DESCONTO" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_COMPRA_ITEM_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_CONTATO_CLIENTE" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"CONTATO" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"PRINCIPAL" CHAR(1 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_CONTATO_CLIENTE_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_ESTADO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"UF" CHAR(2 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_ESTADO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_FILIAL" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"CNPJ" CHAR(14 CHAR) NOT NULL ENABLE, ',
'	"ATIVO" CHAR(1 CHAR) DEFAULT ''S'' NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_FILIAL_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_FORNECEDOR" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"CNPJ" CHAR(14 CHAR) NOT NULL ENABLE, ',
'	"ATIVO" CHAR(1 CHAR) DEFAULT ''S'' NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_FORNECEDOR_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_FUNCIONARIO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"CPF" CHAR(11 CHAR) NOT NULL ENABLE, ',
'	"REPORTA_PARA" NUMBER(38,0), ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR), ',
'	"USUARIO_ID" NUMBER(38,0), ',
'	 CONSTRAINT "ERP_FUNCIONARIO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_ORCAMENTO_COMPRA" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"CODIGO_ORCAMENTO_FORNEC" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_ORCAMENTO_COMPRA_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_PRODUTO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"DESCRICAO" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"SKU" VARCHAR2(200 CHAR) NOT NULL ENABLE, ',
'	"CODIGO_DE_BARRA" CHAR(13 CHAR) NOT NULL ENABLE, ',
'	"QUANTIDADE" NUMBER(38,0) NOT NULL ENABLE, ',
'	"VALOR_VENDA" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"VALOR_COMPRA" NUMBER(38,2) NOT NULL ENABLE, ',
'	 CONSTRAINT "PRODUTO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_TIPO_CONTATO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"DESCRICAO" VARCHAR2(100 CHAR) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "TIPO_CONTATO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_USUARIO" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"LOGIN" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"NOME" VARCHAR2(100 CHAR) NOT NULL ENABLE, ',
'	"EMAIL" VARCHAR2(100 CHAR) NOT NULL ENABLE, ',
'	"ATIVO" CHAR(1 CHAR) DEFAULT ''S'' NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"SENHA" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_USUARIO_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "ERP_USUARIO_LOGIN_UK" UNIQUE ("LOGIN")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "ERP_USUARIO_EMAIL_UK" UNIQUE ("EMAIL")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "ERP_USUARIO_ATIVO" CHECK ( "ATIVO" in (''S'',''N'') ) ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_VENDA" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NUMERO_VENDA" NUMBER(38,0) NOT NULL ENABLE, ',
'	"TOTAL_VENDA" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DATA_VENDA" DATE NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_VENDA_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "ERP_VENDA_ITEM" ',
'   (	"ID" NUMBER(38,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"VALOR_UNITARIO" NUMBER(38,2) NOT NULL ENABLE, ',
'	"QUANTIDADE" NUMBER(38,0) NOT NULL ENABLE, ',
'	"DESCONTO" NUMBER(38,2) NOT NULL ENABLE, ',
'	"DATA_CRIACAO" DATE NOT NULL ENABLE, ',
'	"DATA_ATUALIZACAO" DATE NOT NULL ENABLE, ',
'	"CRIADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"ATUALIZADO_POR" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "ERP_VENDA_ITEM_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_CARGO_FUNCIONARIO_BI" ',
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
'ALTER TRIGGER "ERP_CARGO_FUNCIONARIO_BI" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_CLIENTE_BI" ',
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
'ALTER TRIGGER "ERP_CLIENTE_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_CLIENTE_ENDERECO" ADD CONSTRAINT "ERP_CLIENTE_ENDERECO_CLI_FK" FOREIGN KEY ("ERP_CLIENTE_ID")',
'	  REFERENCES "ERP_CLIENTE" ("ID") ENABLE;',
'  ALTER TABLE "ERP_CLIENTE_ENDERECO" ADD CONSTRAINT "ERP_CLIENTE_ENDERECO_CON_CLIENTE" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_CLIENTE" ("ID") ENABLE;',
'  ALTER TABLE "ERP_CLIENTE_ENDERECO" ADD CONSTRAINT "ERP_CLIENTE_ENDERECO_CON_ESTADO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_ESTADO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_CLIENTE_ENDERECO_BI" ',
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
'ALTER TRIGGER "ERP_CLIENTE_ENDERECO_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_COMPRA" ADD CONSTRAINT "ERP_COMPRA_CON_FORNEC" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FORNECEDOR" ("ID") ENABLE;',
'  ALTER TABLE "ERP_COMPRA" ADD CONSTRAINT "ERP_COMPRA_CON_FUNCIONARIO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FUNCIONARIO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_COMPRA_BI" ',
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
'ALTER TRIGGER "ERP_COMPRA_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_COMPRA_ITEM" ADD CONSTRAINT "ERP_COMPRA_ITEM_CON_FILIAL" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FILIAL" ("ID") ENABLE;',
'  ALTER TABLE "ERP_COMPRA_ITEM" ADD CONSTRAINT "ERP_COMPRA_ITEM_CON_PRODUTO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_PRODUTO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_COMPRA_ITEM_BI" ',
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
'ALTER TRIGGER "ERP_COMPRA_ITEM_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_CONTATO_CLIENTE" ADD CONSTRAINT "ERP_CONTATO_CLIENTE_CON_FK" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_CLIENTE" ("ID") ENABLE;',
'  ALTER TABLE "ERP_CONTATO_CLIENTE" ADD CONSTRAINT "ERP_CONTATO_CLIENTE_CON_FK_TIPO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_TIPO_CONTATO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_CONTATO_CLIENTE_BI" ',
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
'ALTER TRIGGER "ERP_CONTATO_CLIENTE_BI" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_ESTADO_BI" ',
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
'ALTER TRIGGER "ERP_ESTADO_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_FILIAL" ADD CONSTRAINT "ERP_FILIAL_CON_ESTADO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_ESTADO" ("ID") DISABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_FILIAL_BI" ',
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
'ALTER TRIGGER "ERP_FILIAL_BI" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_FORNECEDOR_BI" ',
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
'ALTER TRIGGER "ERP_FORNECEDOR_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_FUNCIONARIO" ADD CONSTRAINT "ERP_FUNCIONARIO_CON_CARGO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_CARGO_FUNCIONARIO" ("ID") DISABLE;',
'  ALTER TABLE "ERP_FUNCIONARIO" ADD CONSTRAINT "ERP_FUNCIONARIO_CON_FILIAL" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FILIAL" ("ID") DISABLE;',
'  ALTER TABLE "ERP_FUNCIONARIO" ADD CONSTRAINT "ERP_FUNCIONARIO_CON_FUNCIONARIO" FOREIGN KEY ("REPORTA_PARA")',
'	  REFERENCES "ERP_FUNCIONARIO" ("ID") DISABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_FUNCIONARIO_BI" ',
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
'ALTER TRIGGER "ERP_FUNCIONARIO_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_ORCAMENTO_COMPRA" ADD CONSTRAINT "ERP_ORCAMENTO_COMPRA_CON_FORNEC" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FORNECEDOR" ("ID") ENABLE;',
'  ALTER TABLE "ERP_ORCAMENTO_COMPRA" ADD CONSTRAINT "ERP_ORCAMENTO_COMPRA_CON_FUNCIONARIO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FUNCIONARIO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_ORCAMENTO_COMPRA_BI" ',
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
'ALTER TRIGGER "ERP_ORCAMENTO_COMPRA_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_PRODUTO" ADD CONSTRAINT "ERP_PRODUTO_CON_FILIAL" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FILIAL" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_PRODUTO_BI" ',
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
'ALTER TRIGGER "ERP_PRODUTO_BI" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_TIPO_CONTATO_BI" ',
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
'ALTER TRIGGER "ERP_TIPO_CONTATO_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_USUARIO" ADD CONSTRAINT "ERP_USUARIO_CON_FUNCIONARIO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FUNCIONARIO" ("ID") DISABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_USUARIO_BI" ',
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
'ALTER TRIGGER "ERP_USUARIO_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_VENDA" ADD CONSTRAINT "ERP_VENDA_CON_CLIENTE" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_CLIENTE" ("ID") ENABLE;',
'  ALTER TABLE "ERP_VENDA" ADD CONSTRAINT "ERP_VENDA_CON_FILIAL" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FILIAL" ("ID") ENABLE;',
'  ALTER TABLE "ERP_VENDA" ADD CONSTRAINT "ERP_VENDA_CON_FUNCIONARIO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_FUNCIONARIO" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_VENDA_BI" ',
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
'ALTER TRIGGER "ERP_VENDA_BI" ENABLE;',
'',
'  ALTER TABLE "ERP_VENDA_ITEM" ADD CONSTRAINT "ERP_VENDA_ITEM_CON_PRODUTO" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_PRODUTO" ("ID") ENABLE;',
'  ALTER TABLE "ERP_VENDA_ITEM" ADD CONSTRAINT "ERP_VENDA_ITEM_CON_VENDA" FOREIGN KEY ("ID")',
'	  REFERENCES "ERP_VENDA" ("ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "ERP_VENDA_ITEM_BI" ',
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
'/',
'ALTER TRIGGER "ERP_VENDA_ITEM_BI" ENABLE; '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379184735006991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_CARGO_FUNCIONARIO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379184989582991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_CLIENTE'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379185117910991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_CLIENTE_ENDERECO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379185396916991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_COMPRA'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379185586631991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_COMPRA_ITEM'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379185751742991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_CONTATO_CLIENTE'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379185932999991186)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_ESTADO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379186109537991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_FILIAL'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379186332695991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_FORNECEDOR'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379186519189991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_FUNCIONARIO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379186771926991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_ORCAMENTO_COMPRA'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379186934550991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_PRODUTO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379187183976991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_TIPO_CONTATO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379187384048991187)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_USUARIO'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379187587492991188)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_VENDA'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(65379187775103991188)
,p_script_id=>wwv_flow_imp.id(65379184532033991183)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ERP_VENDA_ITEM'
,p_last_updated_by=>'ARNETO'
,p_last_updated_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
,p_created_by=>'ARNETO'
,p_created_on=>to_date('20240214121906','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
