" Aqui estamos concatenando as tabelas existentes atraves do "inner join"  e criando 
uma nova tabela para que possamos realizar consultas com mais facilidade"

select cliente, data, nome as vendedor, produto, quantidade, total
into fatovendas
from vendas v
inner join clientes c on (c.idcliente= v.idcliente)
inner join itensvenda i on (i.idvenda = v.idvenda)
inner join produtos p on (p.idproduto = i.idproduto)
inner join vendedores vn on (vn.idvendedor = v.idvendedor)

select * from fatovendas where vendedor = 'Armando Lago'
