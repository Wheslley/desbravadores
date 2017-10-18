
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
 
 /*select * from pessoa;*/

/*usuarios*/
insert into usuarios values ('wheslleyny@gmail.com','senha123', 1, 1);

/*select * from usuarios;

select u.usuario as usuario
     , p.descricao as permissao
  from usuarios u
     , permissoes p
 where u.id_permissao = p.id;*/
  
 commit;