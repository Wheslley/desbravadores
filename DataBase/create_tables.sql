create database desbravadores;
use desbravadores;

create table permissoes(
	permissoes_id int not null auto_increment,
    descricao varchar(100) not null,
    primary key (permissoes_id)
);

create table pessoa(
	pessoa_id int not null auto_increment,
    nome varchar(200) not null,
    idade int not null,
    rg varchar(9),
    cpf varchar(11),
    primary key (pessoa_id)
);

create table usuario(
	usuario_id integer not null auto_increment,
	usuario varchar(100) not null,
    senha varchar(50) not null,
    pessoa_id int not null,
    permissoes_id int not null,
    primary key (usuario_id),
    foreign key (pessoa_id) references pessoa (pessoa_id),
    foreign key (permissoes_id) references permissoes (permissoes_id)
);

create table classes(
	classe_id int not null auto_increment,
    descricao varchar(100) not null,
    idade_permitida int not null,
    primary key (classe_id)
);

create table especialidades(
	especialidade_id int not null auto_increment,
    descricao varchar(100) not null,
    dificuldade varchar(50) not null,
    primary key (especialidade_id)
);

create table cep(
	cep_id int not null auto_increment,
	cidade varchar(100) not null,
    estado varchar(80) not null,
    pais varchar(50) not null,
    primary key (cep_id)
);

create table cargo(
	cargo_id int not null auto_increment,
    descricao varchar(100) not null,
    primary key (cargo_id)
);

create table clube(
	clube_id int not null auto_increment,
    descricao varchar(100) not null,
    regiao int not null,
    cep_id int not null,
    primary key (clube_id),
    foreign key (cep_id) references cep (cep_id)
);

create table pessoaPossuiClasse(
	ppclasse_id int not null auto_increment,
    pessoa_id int not null,
    classe_id int not null,
    primary key (ppclasse_id),
    foreign key (pessoa_id) references pessoa (pessoa_id),
    foreign key (classe_id) references classes (classe_id)
);

create table pessoaPossuiEspecialidade(
	ppespecialidade_id int not null auto_increment,
    pessoa_id int not null,
    especialidade_id int not null,
    primary key (ppespecialidade_id),
    foreign key (pessoa_id) references pessoa (pessoa_id),
    foreign key (especialidade_id) references especialidades (especialidade_id)
);

create table clubePossuiPessoa(
	cppessoa_id int not null auto_increment,
    clube_id int not null,
    pessoa_id int not null,
    primary key (cppessoa_id),
    foreign key (clube_id) references clube (clube_id),
    foreign key (pessoa_id) references pessoa (pessoa_id)    
);

create table pessoaPossuiCep(
	ppcep_id int not null auto_increment,
    pessoa_id int not null,
    cep_id int not null,
    primary key (ppcep_id),
    foreign key (pessoa_id) references pessoa (pessoa_id),
    foreign key (cep_id) references cep (cep_id)
);

create table cargoCepPessoa(
	ccpessoa_id int not null auto_increment,
    cargo_id int not null,
    cep_id int not null,
    pessoa_id int not null,
    primary key(ccpessoa_id),
    foreign key (cargo_id) references cargo (cargo_id),
    foreign key (cep_id) references cep (cep_id),
    foreign key (pessoa_id) references pessoa (pessoa_id)    
);

