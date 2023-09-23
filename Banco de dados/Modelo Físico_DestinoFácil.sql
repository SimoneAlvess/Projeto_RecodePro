/* Banco de Dados */
create database destinofacil;
use destinofacil;

/* Tabela Cliente */
create table clientes (
id_cliente int primary key auto_increment not null,
nome varchar(60),
email varchar(60),
senha varchar(20)
);

/* Tabela Destino */
create table destinos (
id_destino int primary key auto_increment not null,
destino varchar(100),
preco decimal (10, 2),
transporte varchar(50),
promocao_id int,
foreign key (promocao_id) references promocao (id_promocao)
);

/* Tabela Promoção */
create table promocao (
id_promocao int primary key auto_increment not null,
desconto decimal(5,2),
validade_promocao datetime,
pacote varchar(50)
);

/* Tabela Compra - Relacionamento */
create table compra (
id_compra int primary key auto_increment not null,
data_hora_viagem datetime,
forma_pagamento varchar(50),
status_compra boolean,
cliente_id int,
destino_id int,
foreign key (cliente_id) references clientes (id_cliente),
foreign key (destino_id) references destinos (id_destino)
);

/* Seleção Tabelas */
select * from clientes;
select * from destinos;
select * from promocoes;
select * from compra;

/* Seleção Personalizada */
# Compra - Cliente
select c.id_compra, cl.nome as nome_cliente, d.destino, c.forma_pagamento, c.data_hora_viagem from compra as c 
join clientes as cl on c.cliente_id = cl.id_cliente
join destinos  as d on c.destino_id = d.id_destino
order by nome_cliente;

# Destino - Promoção
select d.destino, d.preco, p.desconto, d.transporte, p.pacote, p.validade_promocao
from destinos as d
join promocoes as p on d.promocao_id = p.id_promocao
order by destino;

/* Inserção de Dados */
# Clientes
insert into destinofacil.clientes (nome, email, senha) values 
('Vitoria Brito', 'vitoriabrito@hotmail.com', '2678'),
('Carla Almeida', 'carlaalmeida@hotmail.com', '6798'),
('Maria Alves', 'mariaalves@gmail.com', '1234'),
('Carlos Santos', 'carlosantos@gmail.com', '3629'),
('Marcos Souza', 'marcossouza@gmail.com', '9356'),
('Sofia Benjamin', 'sofiabenjamin@hotmail.com', '5670'),
('Felipe Oliveira', 'felipeoliveira@gmail.com', '7893'),
('Pedro Santos', 'pedrosantos@hotmail.com', '0137'),
('Ana Oliveira', 'anaoliveira@gmail.com', '1874'),
('Beatriz Lima', 'beatriz.lima@hotmail.com', '1459');

# Destinos
insert into destinofacil.destinos (destino, preco, transporte, promocao_id) values 
('Rio de Janeiro', 844.00, 'Aereo', 2),
('Gramado', 824.00, 'Aereo', 2),
('Beberibe', 570.00, 'Aereo', 4),
('Foz do Iguaçu', 911.00, 'Aereo', 5),
('Maragogi', 749.00, 'Aereo', 4),
('Bonito', 634.00, 'Aereo', 4),
('Capitolio', 610.00, 'Aereo', 4),
('Holambra', 846.00, 'Aereo', 2),
('Nova Iorque', '2000.00', 'Aereo', 6),
('Paris', '2100.00', 'Aereo', 6),
('Seoul', '2210.00', 'Aereo', 7),
('Orlando', '1998.00', 'Aereo', 7),
('Roma', '2350.00', 'Aereo', 7),
('Cairo', '2564.00', 'Aereo', 8),
('Londres', '2800.00', 'Aereo', 8),
('Toquio', '2766.00', 'Aereo', 8);

# Promoções
insert into destinofacil.promocoes (desconto, validade_promocao, pacote) values 
('0.25', '2023-09-19 15:00:00', 'Nacional'),
('0.20', '2023-12-21 12:30:00', 'Nacional'),
('0.30', '2024-02-25 17:00:00', 'Nacional'),
('0.25', '2024-01-02 19:30:00', 'Internacional'),
('0.20', '2023-05-20 09:20:00', 'Internacional'),
('0.30', '2023-07-11 11:25:00', 'Internacional');

# Compras
insert into destinofacil.compra (data_hora_viagem, forma_pagamento, cliente_id, destino_id) values
('2023-12-31 08:00:00', 'Debito', 6, 21),
('2023-10-06 12:00:00', 'Credito', 7, 14),
('2024-01-10 07:30:00', 'Debito', 10, 16),
('2024-01-20 18:00:00', 'Debito', 12, 19),
('2023-12-29 17:20:00', 'Credito', 8, 22),
('2024-02-10 13:40:00', 'Credito', 13, 27),
('2023-06-27 06:20:00', 'Debito', 16, 26),
('2024-04-27 21:00:00', 'Credito', 15, 22),
('2023-11-08 12:30:00', 'Debito', 14, 20),
('2024-03-15 15:20:00', 'Credito', 6, 25),
('2023-09-16 11:00:00', 'Debito', 7, 23);



