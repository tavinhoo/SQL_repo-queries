create database ecommerce;

drop database ecommerce;

create table products(
	id integer,
	name text,
	description text,
	category text,
	price numeric(10, 2),
	in_stock boolean
);

drop table products;

-- definindo chave primaria pós criação do banco
alter table products
add constraint products_pk primary key(id);

-- removendo chave primaria pós criação do banco
alter table products
drop constraint products_pk primary key(id);

-- Inserindo registros
insert into products(id, name, description, category, price, in_stock) values
(1, 'Computador', 'Computador Gamer 8 núcleos', 'Informática', 2600.00, true),
(2, 'Celular', 'Celular Dualchip', 'Eletrônico', 1250.00, true),
(3, 'Ventilador', 'Ventilador 4 velocidades', 'Eletrodoméstico', 180.90, false),
(4, 'Televisor', 'Televisor Smart 42 pol.', 'Eletroeletrônico', 1750.60, true),
(5, 'Mouse', 'Mouse sem fio', 'Informática', 38.00, true),
(6, 'Bicicleta', 'Bicicleta MTB aro 29', 'Esporte', 1360.00, true);

-- atualizando registros
UPDATE products SET name = 'Smartphone', description = 'Smartphone Galaxy SE 22', price = 2450.00, in_stock = true
WHERE id = 2;

UPDATE products SET description = 'Computador Gamer'
WHERE id = 1;

-- deletando registros
DELETE FROM products 
WHERE id = 6;

-- consultar registros
SELECT * FROM products;

-- criando tabela clientes

create table customers(

    id integer primary key,
    name text not null, 
    email text not null unique,
    cpf text not null unique,
    address text not null,
    city text,
    state text,
    birthday date
);

drop table customers;

INSERT INTO customers(id, name, email, cpf, address, city, state, birthday) 
VALUES 
(1, 'João Silva', 'joao@example.com', '123.456.789-00', 'Rua Principal, 123', 'São Paulo', 'SP', '1990-05-15'),
(2, 'Maria Oliveira', 'maria@example.com', '987.654.321-00', 'Avenida Central, 456', 'Rio de Janeiro', 'RJ', '1985-10-20'),
(3, 'Carlos Souza', 'carlos@example.com', '456.789.123-00', 'Praça da Liberdade, 789', 'Belo Horizonte', 'MG', '1978-03-25');

SELECT * FROM customers;

delete from customers;

insert into customers (id, name, email, cpf, address, city, state, birthday) values (1, 'Ana Silva', 'anasilva@codandosimples.com', '12345678911', 'Rua Bahia, 10', 'Curitiba', 'PR', '1990-10-25');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (2, 'Roberto Nunes', 'ronunes@codandosimples.com', '32165498722', 'Rua Amazonas, 280', 'Campinas', 'SP', '1992-8-6');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (3, 'Paula Oliveira', 'paula123@codandosimples.com', '98765432188', 'Rua Castro Alves, 50', 'Valinhos', 'SP', '1989-10-15');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (4, 'Carlos Santos', 'carlos@codandosimples.com', '18865498732', 'Rua Santa Rita, 147', 'Barbacena', 'MG', '1985-5-20');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (5, 'Roberta Marques', 'romarques@codandosimples.com', '45691198732', 'Rua Boa Vista, 56', 'Ipatinga', 'MG', '1983-11-4');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (6, 'Júnior Soares', 'jusoares@codandosimples.com', '33372298755', 'Rua das Flores, 144', 'Londrina', 'PR', '1993-11-25');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (7, 'Guilherme Campos', 'campos123@codandosimples.com', '52861645016', 'Rua Pernambuco, 33', 'Cianorte', 'PR', '1990-5-22');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (8, 'Larissa Mello', 'lamello@codandosimples.com', '37045719035', 'Rua 10, 66', 'Niterói', 'RJ', '1991-10-8');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (9, 'Lucas da Silva', 'lusilva@codandosimples.com', '33219536093', 'Rua Santos Dumont, 1740', 'Parati', 'RJ', '1983-8-15');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (10, 'Mariana Freitas', 'mafreitas@codandosimples.com', '42171284013', 'Rua Tiradentes, 12', 'Joinville', 'SC', '1990-10-21');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (11, 'Vanessa Soares', 'van11@codandosimples.com', '43444622031', 'Rua das Orquídeas, 77', 'Blumenau', 'SC', '1979-11-28');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (12, 'Luiza Ferreira', 'luizafer@codandosimples.com', '49714415063', 'Rua Treze, 1100', 'Florianópolis', 'SC', '1977-6-15');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (13, 'Marcos Souza', 'marco@codandosimples.com', '11971259063', 'Rua Portes, 345', 'Coxim', 'MS', '1976-7-23');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (14, 'Sebastião Araújo', 'bastiao@codandosimples.com', '49691363003', 'Avenida Brasil, 67', 'Dourados', 'MS', '1975-4-17');
insert into customers (id, name, email, cpf, address, city, state, birthday) values (15, 'Francisco da Silva', 'chico@codandosimples.com', '60117796034', 'Avenida da Saudade, 788', 'Bataguassu', 'MS', '1974-8-5');

