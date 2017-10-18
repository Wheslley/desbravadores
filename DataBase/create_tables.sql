use desbravadores;

create table permissoes(
	id int not null auto_increment,
    descricao varchar(100) not null,
    primary key (id)
);

create table pessoa(
	id int not null auto_increment,
    nome varchar(200) not null,
    idade int not null,
    rg varchar(9),
    cpf varchar(11),
    primary key (id)
);

create table usuarios(
	usuario varchar(100) not null,
    senha varchar(50) not null,
    id_pessoa int not null,
    id_permissao int not null,
    primary key (usuario),
    foreign key (id_pessoa) references pessoa (id),
    foreign key (id_permissao) references permissoes (id)
);

