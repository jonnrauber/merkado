CREATE DATABASE merkado;

\c merkado

CREATE TABLE usuario(
	user_app varchar(30) NOT NULL primary key,
	senha varchar(30) NOT NULL,
	nome varchar(30) NOT NULL,
	telefone varchar(30),
	email varchar(30)
);

CREATE TABLE req_cadastro(
	req_cadastro_id SERIAL NOT NULL primary key,
	razao_social varchar(80) NOT NULL,
	cnpj varchar(14) NOT NULL,
	telefone varchar(15) NOT NULL,
	email varchar(50) NOT NULL,
	tipo varchar(10) NOT NULL,
	mensagem varchar(255) NOT NULL
);

CREATE TABLE cliente(
	cnpj varchar(14) NOT NULL primary key,
	ie integer,
	razao_social varchar(80) NOT NULL,
	nome_fantasia varchar (80) NOT NULL,
	rua varchar(30) NOT NULL,
	numero varchar(10) NOT NULL,
	bairro varchar (30) NOT NULL,
	cidade varchar (30) NOT NULL,
	uf varchar(2) NOT NULL,
	cep varchar(9) NOT NULL,
	complemento varchar(30),
	email varchar(50) NOT NULL,
	fone varchar(20) NOT NULL,
	senha varchar(8) NOT NULL,
	tipo varchar(10) NOT NULL
);

CREATE TABLE produto(
	idp integer NOT NULL primary key,
	nome varchar(30) NOT NULL,
	fornecedor varchar(14) NOT NULL,
	constraint fk_produto_cliente foreign key(fornecedor) references cliente(cnpj)

);

CREATE TABLE precos(
	id_prod integer NOT NULL,
	cnpj_mercado varchar(14) NOT NULL,
	preco numeric NOT NULL,
	constraint pk_precos primary key(id_prod, cnpj_mercado),
	constraint fk_precos_cliente foreign key(cnpj_mercado) references cliente(cnpj),
	constraint fk_precos_produto foreign key(id_prod) references produto(idp)
);

CREATE TABLE favoritos_usuario(
	id_prod integer NOT NULL,
	user_app varchar(30) NOT NULL,
	constraint pk_favoritos_usuario primary key(id_prod, user_app),
	constraint fk_favoritos_usuario_usuario foreign key(user_app) references usuario(user_app),
	constraint fk_favoritos_usuario_produto foreign key(id_prod) references produto(idp)
);

INSERT INTO cliente (cnpj, razao_social, nome_fantasia, rua, numero, bairro, cidade, uf, cep, email, fone, senha, tipo)
	VALUES ('administrador1', 'administrador', 'eu ate administro', 'rua dos adm', '1', 'administrado', 'cidade do adm', 'sc', '12345678', 'adm@adm.adm.ad', '1234567890', 'admin', 'fornecedor');
