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

create table usuario(
	id integer not null,
	usuario varchar(100) not null,
    senha varchar(50) not null,
    id_pessoa int not null,
    id_permissao int not null,
    primary key (id),
    foreign key (id_pessoa) references pessoa (id),
    foreign key (id_permissao) references permissoes (id)
);


--


create table classes(
	id int not null auto_increment,
    nome varchar(100) not null,
    idade int not null,
    primary key (id)
);

create table pessoa_possui_classes(
	id int not null auto_increment,
    id_pessoa int not null,
    id_classe int not null,
    primary key (id),
    foreign key (id_pessoa) references pessoa (id),
    foreign key (id_classe) references classes (id)
);

create table especialidades(
	id int not null auto_increment,
    nome varchar(100) not null,
    dificuldade varchar(50) not null,
    primary key (id)
);

create table pessoa_possui_especialidade(
	id int not null auto_increment,
    id_pessoa int not null,
    id_especialidade int not null,
    data_especialidade date,
    primary key (id),
    foreign key (id_pessoa) references pessoa (id),
    foreign key (id_especialidade) references especialidades (id)
);

create table clube(
	id int not null auto_increment,
    nome varchar(100) not null,
    data_fundacao date not null,
    primary key (id)
);

ALTER TABLE clube ADD regiao int;
ALTER TABLE clube ADD id_cep int;
ALTER TABLE clube ADD FOREIGN KEY (id_cep) REFERENCES cep (id);

create table clube_possui_pessoa(
	id int not null auto_increment,
    id_clube int not null,
    id_pessoa int not null,
    primary key (id),
    foreign key (id_clube) references clube (id),
    foreign key (id_pessoa) references pessoa (id)    
);

create table cep(
	id int not null auto_increment,
	cidade varchar(100) not null,
    estado varchar(80) not null,
    pais varchar(50) not null,
    primary key (id)
);

create table pessoa_possui_cep(
	id int not null auto_increment,
    id_pessoa int not null,
    id_cep int not null,
    primary key (id),
    foreign key (id_pessoa) references pessoa (id),
    foreign key (id_cep) references cep (id)
);

create table tipo_cargo(
	id int not null auto_increment,
    nome varchar(100) not null,
    primary key (id)
);

create table tcargo_cep_pessoa(
	id int not null auto_increment,
    id_cargo int not null,
    id_cep int not null,
    id_pessoa int not null,
    primary key(id),
    foreign key (id_cargo) references tipo_cargo (id),
    foreign key (id_cep) references cep (id),
    foreign key (id_pessoa) references pessoa (id)    
);