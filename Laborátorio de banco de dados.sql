drop database escola_idiomas;
create database escola_idiomas;

use escola_idiomas;
/*Criando as tabelas no banco de dados relacional e insirindo registros em todas as tabelas*/
       create table aluno(
    ra bigint auto_increment primary key,
    nome varchar(100),
    data_nasc date,
    cpf varchar(100),
    curso varchar(100),
    situacao varchar(100)
);

create table professor(
    id bigint auto_increment primary key,
    nome varchar(100),
    idioma varchar(100)
);

create table administracao(
    ra bigint auto_increment primary key,
    situacao varchar(100),
    prog_aula varchar(100),
    freq_aluno varchar(100),
    hr_prof varchar(100),
    financeiro varchar(100)
);

create table portal_aluno(
    id_aluno bigint auto_increment primary key,
    curso_aluno varchar(100),
    pagamento varchar(100),
    extras varchar(100)
);

create table portal_professor(
    id bigint auto_increment primary key,
    nota varchar(100),
    tarefa varchar(100),
    feedback varchar(100),
    materia varchar(100)
);

insert into portal_aluno (curso_aluno, pagamento, extras)
values ('alemão', 'processando', null);

insert into portal_professor (nota, tarefa, feedback,materia)
values ('dó', 'pendente', null,'alemão');
/*Criando uma view com os dados de uma consulta de um INNER JOIN de duas tabelas*/

CREATE VIEW aluno_professor_view AS
SELECT pa.id_aluno,pp.id, pa.curso_aluno, pa.pagamento, pa.extras, pp.materia, pp.nota,pp.tarefa,pp.feedback
FROM portal_aluno pa
INNER JOIN portal_professor pp ON pa.id_aluno = pp.id;

select id_aluno,
id_aluno,id,curso_aluno, pagamento, extras,nota,materia,tarefa,feedback
from aluno_professor_view
order by id_aluno;


/*Criando um Índice de uma tabela selecionada,ok */
CREATE INDEX idx_idAluno ON  portal_aluno (id_aluno);

/*Utilizando o operador BETWEEN selecionando uma tabela que contenha dados do tipo DATA e filtre os registros do dia 01/05/2023 ate 30/05/2023*/
select * from pedido where dataPedido between '2000-01-01' and '2023-05-01';

