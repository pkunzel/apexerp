create or replace trigger "ERP_CARGO_FUNCIONARIO_BI"
before
insert or update or delete on "ERP_CARGO_FUNCIONARIO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_CLIENTE_BI"
before
insert or update or delete on "ERP_CLIENTE"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_CLIENTE_ENDERECO_BI"
before
insert or update or delete on "ERP_CLIENTE_ENDERECO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_COMPRA_BI"
before
insert or update or delete on "ERP_COMPRA"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_COMPRA_ITEM_BI"
before
insert or update or delete on "ERP_COMPRA_ITEM"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_CONTATO_CLIENTE_BI"
before
insert or update or delete on "ERP_CONTATO_CLIENTE"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_ESTADO_BI"
before
insert or update or delete on "ERP_ESTADO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_FILIAL_BI"
before
insert or update or delete on "ERP_FILIAL"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_FORNECEDOR_BI"
before
insert or update or delete on "ERP_FORNECEDOR"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_FUNCIONARIO_BI"
before
insert or update or delete on "ERP_FUNCIONARIO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:= SYSTIMESTAMP AT TIME ZONE 'America/Sao_Paulo'; 
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    if UPDATING then 
        :new.data_atualizacao:= SYSTIMESTAMP AT TIME ZONE 'America/Sao_Paulo'; 
        :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if;
   
end;
/
create or replace trigger "ERP_ORCAMENTO_COMPRA_BI"
before
insert or update or delete on "ERP_ORCAMENTO_COMPRA"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_PRODUTO_BI"
before
insert or update or delete on "ERP_PRODUTO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_TIPO_CONTATO_BI"
before
insert or update or delete on "ERP_TIPO_CONTATO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_USUARIO_BI"
before
insert or update on "ERP_USUARIO"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
        :new.ativo:='S'; 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_VENDA_BI"
before
insert or update or delete on "ERP_VENDA"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/
create or replace trigger "ERP_VENDA_ITEM_BI"
before
insert or update or delete on "ERP_VENDA_ITEM"
for each row
begin
    if INSERTING then 
        :new.data_criacao:=sysdate;   
        :new.criado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 

    :new.data_atualizacao:=sysdate;
    :new.atualizado_por:=coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    
end;
/ 