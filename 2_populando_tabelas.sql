-- Script de população das tabelas no Redshif
-- ANTES DE POSTAR RETIRAR A CHAVE SECRETA

-- TABELA CLIENTES
copy clientes
from 's3://aula-redshift-aurelia1/dados/clientes.csv'
credentials 'aws_access_key_id=AKILILQOJGRQNT6TJZ;aws_secret_access_key=9EB2cxsJCxeqEjKzmL2+qaIW3ckexc2XIiEjzj'
region'sa-east-1'
delimiter ';'
IGNOREHEADER 1
DATEFORMAT 'DD/MM/YYYY';

select * from clientes;

-- TABELA ITENSVENDA
copy itensvenda
from 's3://aula-redshift-aurelia1/dados/itensvenda.csv'
credentials 'aws_access_key_id=AKILILQOJGRQNT6TJZ;aws_secret_access_key=9EB2cxsJCxeqEjKzmL2+qaIW3ckexc2XIiEjzj'
region'sa-east-1'
delimiter ';'
IGNOREHEADER 1
DATEFORMAT 'DD/MM/YYYY';

select * from itensvenda;

-- TABELA PRODUTOS
copy produtos
from 's3://aula-redshift-aurelia1/dados/produtos.csv'
credentials 'aws_access_key_id=AKILILQOJGRQNT6TJZ;aws_secret_access_key=9EB2cxsJCxeqEjKzmL2+qaIW3ckexc2XIiEjzj'
region'sa-east-1'
delimiter ';'
IGNOREHEADER 1
DATEFORMAT 'DD/MM/YYYY';

select * from produtos;

-- TABELA VENDAS
copy vendas
from 's3://aula-redshift-aurelia1/dados/vendas.csv'
credentials 'aws_access_key_id=AKILILQOJGRQNT6TJZ;aws_secret_access_key=9EB2cxsJCxeqEjKzmL2+qaIW3ckexc2XIiEjzj'
region'sa-east-1'
delimiter ';'
IGNOREHEADER 1
DATEFORMAT 'DD/MM/YYYY';

select * from vendas;

-- TABELA VENDEDORES
copy vendedores
from 's3://aula-redshift-aurelia1/dados/vendedores.csv'
credentials 'aws_access_key_id=AKILILQOJGRQNT6TJZ;aws_secret_access_key=9EB2cxsJCxeqEjKzmL2+qaIW3ckexc2XIiEjzj'
region'sa-east-1'
delimiter ';'
IGNOREHEADER 1
DATEFORMAT 'DD/MM/YYYY';

select * from vendedores;