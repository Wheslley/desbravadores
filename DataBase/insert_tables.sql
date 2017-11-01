use desbravadores;

/*permissoes*/
insert into permissoes (descricao) values ('ADMINISTRADOR');
insert into permissoes (descricao) values ('DESBRAVADOR');
insert into permissoes (descricao) values ('DIRETORIA');
insert into permissoes (descricao) values ('DIRETOR');
insert into permissoes (descricao) values ('SECRETARIA');
insert into permissoes (descricao) values ('DISTRITAL');
insert into permissoes (descricao) values ('REGIONAL');
insert into permissoes (descricao) values ('COORDENADOR');

/*select * from permissoes;*/

/*pessoa*/
 insert into pessoa (nome, idade, rg, cpf) values ('Wheslley Nycolas da Silva',25,'479504593','41114890871');
 insert into pessoa (nome, idade, rg, cpf) values ('Whislley Willian da Silva',24,'','');
 select * from pessoa;

/*usuarios*/
insert into usuario values (1, 1, 1, 'senha123', 'wheslley');
select * from usuario;
commit;
drop table usuario;

/*select * from usuarios;

select u.usuario as usuario
     , p.descricao as permissao
  from usuarios u
     , permissoes p
 where u.id_permissao = p.id;*/


--


insert into classes (descricao, idade_permitida) values ('AMIGO',10);
insert into classes (descricao, idade_permitida) values ('AMIGO DA NATUREZA',10);
insert into classes (descricao, idade_permitida) values ('COMPANHEIRO',11);
insert into classes (descricao, idade_permitida) values ('COMPANHEIRO DE EXCURSIONISMO',11);
insert into classes (descricao, idade_permitida) values ('PESQUISADOR',12);
insert into classes (descricao, idade_permitida) values ('PESQUISADOR DE CAMPOS E BOSQUES',12);
insert into classes (descricao, idade_permitida) values ('PIONEIRO',13);
insert into classes (descricao, idade_permitida) values ('PIONEIRO DE NOVAS FRONTEIRAS',13);
insert into classes (descricao, idade_permitida) values ('EXCURCIONISTA',14);
insert into classes (descricao, idade_permitida) values ('EXCURCIONISTA DA MATA',14);
insert into classes (descricao, idade_permitida) values ('GUIA',15);
insert into classes (descricao, idade_permitida) values ('GUIA DE EXPLORAÇÃO',15);
insert into classes (descricao, idade_permitida) values ('LÍDER',16);
insert into classes (descricao, idade_permitida) values ('LÍDER MASTER',18);
insert into classes (descricao, idade_permitida) values ('LÍDER MASTER AVANÇADO',20);

/*select * from classes;*/

insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,1);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,3);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,5);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,7);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,9);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,11);
insert into pessoa_possui_classes (id_pessoa, id_classe) values (1,13);

/*select * from pessoa_possui_classes;*/

/*select p.nome
     , c.nome
     , c.idade
  from pessoa_possui_classes ppc
     , pessoa p
	 , classes c
where ppc.id_pessoa = p.id
  and ppc.id_classe = c.id;*/

insert into especialidades (nome, dificuldade) values ('Acampamento I','Fácil');
insert into especialidades (nome, dificuldade) values ('Acampamento III','Fácil');
insert into especialidades (nome, dificuldade) values ('Acampamento III','Médio');
insert into especialidades (nome, dificuldade) values ('Acampamento IV','Médio');

/*select * from especialidades;*/

insert into pessoa_possui_especialidade (id_pessoa, id_especialidade, data_especialidade) values (1,1,now());
insert into pessoa_possui_especialidade (id_pessoa, id_especialidade, data_especialidade) values (1,2,now());
insert into pessoa_possui_especialidade (id_pessoa, id_especialidade, data_especialidade) values (1,3,now());
insert into pessoa_possui_especialidade (id_pessoa, id_especialidade, data_especialidade) values (1,4,now());

/*select * from pessoa_possui_especialidade;*/

/*select p.nome
     , e.nome
     , e.dificuldade
     , DATE_FORMAT(ppe.data_especialidade,'%d/%m/%Y') as data_especialidade
  from pessoa_possui_especialidade ppe
	 , pessoa p
	 , especialidades e
where ppe.id_pessoa = p.id
  and ppe.id_especialidade = e.id;*/

insert into clube (nome, data_fundacao) values ('Everest', now());
update clube set regiao = 3 where id = 1;
update clube set id_cep = 1 where id = 1;

/*select * from clube;*/

/*select c.nome
     , c.regiao
     , ce.cidade
     , ce.estado
     , ce.pais
  from clube c
     , cep ce
where c.id_cep = ce.id;*/


insert into clube_possui_pessoa (id_clube, id_pessoa) values (1,1);

/*select * from clube_possui_pessoa;*/

/*select c.nome
     , p.nome
  from clube_possui_pessoa cpp
     , clube c
     , pessoa p
where cpp.id_clube = c.id
  and cpp.id_pessoa = p.id;*/
  
insert into cep (cidade, estado, pais) values ('SÃO CARLOS','SÃO PAULO','BRASIL');

/*select * from cep;*/

insert into pessoa_possui_cep (id_pessoa, id_cep) values (1,1);

/*select * from pessoa_possui_cep;*/

/*select p.nome
     , c.cidade
     , c.estado
     , c.pais
  from pessoa_possui_cep ppc
     , pessoa p
     , cep c
where ppc.id_pessoa = p.id
  and ppc.id_cep = c.id;*/
  
insert into tipo_cargo (nome) values ('DIRETOR');
insert into tipo_cargo (nome) values ('DIRETORA');
insert into tipo_cargo (nome) values ('DIRETOR ASSOCIADO');
insert into tipo_cargo (nome) values ('DIRETOR ASSOCIADA');
insert into tipo_cargo (nome) values ('SECRETÁRIA');
insert into tipo_cargo (nome) values ('SECRETÁRIO');
insert into tipo_cargo (nome) values ('CAPELÃO');
insert into tipo_cargo (nome) values ('INSTRUTOR DE ORDEM UNIDA');
insert into tipo_cargo (nome) values ('INSTRUTORA DE ORDEM UNIDA');
insert into tipo_cargo (nome) values ('INSTRUTOR DE ESPECIALIDADE');
insert into tipo_cargo (nome) values ('INSTRUTORA DE ESPECIALIDADE');
insert into tipo_cargo (nome) values ('CONSELHEIRO');
insert into tipo_cargo (nome) values ('CONSELHEIRA');
insert into tipo_cargo (nome) values ('INSTRUTOR');
insert into tipo_cargo (nome) values ('INSTRUTORA');

insert into tipo_cargo (nome) values ('DISTRITAL');
insert into tipo_cargo (nome) values ('REGIONAL');
insert into tipo_cargo (nome) values ('COORDENADOR');

/*select * from tipo_cargo;*/

insert into tcargo_cep_pessoa (id_cargo, id_cep, id_pessoa) values (16,1,1);

/*select * from tcargo_cep_pessoa;*/

/*select p.nome
     , tc.nome
     , c.cidade
     , c.estado
     , c.pais
  from tcargo_cep_pessoa tcp
  , tipo_cargo tc
  , cep c
  , pessoa p
where tcp.id_cargo = tc.id
  and tcp.id_cep = c.id
  and tcp.id_pessoa = p.id;*/

commit;