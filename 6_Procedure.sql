# Criando procedimento de reajuste

CREATE DEFINER=`root`@`localhost` PROCEDURE `reajustevalor`(in codigo int,taxa decimal (10,2))
BEGIN
update apartamento
set valor=apartamento.valor+apartamento.valor*taxa/100
where codigo_cond=codigo;
SELECT*FROM APARTAMENTO WHERE CODIGO_COND=codigo;
END


# Criando o processo de identificação do comprador
CREATE DEFINER=`root`@`localhost` PROCEDURE `novo_proprietario`(in codigo int,rg_comprador varchar (15),in telefone varchar (15),in comprador varchar(80), email varchar(50))
BEGIN
insert into proprietario (rg, nome,telefone,email)
values (rg_comprador,comprador,telefone,email);
update proprietario_apartamento
set rg_prop=rg_comprador
where prop_ap_id=codigo;
SELECT PA.PROP_AP_ID, PA.NUMERO_AP,PA.RG_PROP,P.RG,P.NOME,P.TELEFONE,P.EMAIL
FROM PROPRIETARIO_APARTAMENTO AS PA
INNER JOIN PROPRIETARIO AS P
ON PA.RG_PROP=P.RG;
END
