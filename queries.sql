use seu_banco;

-- 1 - A quantidade total de todos os produtos
select count(*) as total from produtos p;

-- 2 - Pegar produto e seu departamento
select * from produtos p inner join departamentos d on p.departamento_id = d.id;

-- 3 -  Pegar pedidos, seus clientes e enderecos 
select * from pedidos p 
inner join clientes c on p.cliente_id = c.id
inner join enderecos e on e.cliente_id = c.id;

-- 4 - Contar quantos produtos um departamento tem
select d.nome, count(*) as total from produtos p
inner join departamentos d on p.departamento_id = d.id
group by d.id;

-- 5 - Quantos produtos de todos os pedidos um cliente já fez
select c.nome, count(*) as total  from produtos_pedido pp  
inner join pedidos pe  on pp.pedido_id = pe.id 
inner join clientes c on pe.cliente_id = c.id
group by c.id;

