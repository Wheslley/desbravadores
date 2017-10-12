create database desbravadores;
use desbravadores;

create table teste (nome varchar(100) not null);
insert into teste
	select 'Jady' as nome from dual union all
    select 'Wheslley' as nome from dual union all
    select 'Whislley' as nome from dual;
select * from teste;
drop table teste;