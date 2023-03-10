
Setting environment for using XAMPP for Windows.
programadores.carioc@NBAC839Z00 c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.27-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| aula3              |
| consultorio        |
| hospital           |
| information_schema |
| lojainfo           |
| lojasenac          |
| mydb               |
| mysql              |
| performance_schema |
| phpmyadmin         |
| proj_idividual     |
| proj_individual    |
| sakila             |
| sistema_resilia    |
| sistema_resiliadb  |
| test               |
+--------------------+
16 rows in set (0.001 sec)

MariaDB [(none)]> create database senacmadu;
Query OK, 1 row affected (0.004 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| aula3              |
| consultorio        |
| hospital           |
| information_schema |
| lojainfo           |
| lojasenac          |
| mydb               |
| mysql              |
| performance_schema |
| phpmyadmin         |
| proj_idividual     |
| proj_individual    |
| sakila             |
| senacmadu          |
| sistema_resilia    |
| sistema_resiliadb  |
| test               |
+--------------------+
17 rows in set (0.001 sec)

MariaDB [(none)]> use senacmadu;
Database changed
MariaDB [senacmadu]> create table cursos(
    -> matricula int primary key,
    -> materias varchar(200),
    -> vagas int,
    -> professores int);
Query OK, 0 rows affected (0.017 sec)

MariaDB [senacmadu]> describe curos;
ERROR 1146 (42S02): Table 'senacmadu.curos' doesn't exist
MariaDB [senacmadu]> describe cursos;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| matricula   | int(11)      | NO   | PRI | NULL    |       |
| materias    | varchar(200) | YES  |     | NULL    |       |
| vagas       | int(11)      | YES  |     | NULL    |       |
| professores | int(11)      | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
4 rows in set (0.019 sec)

MariaDB [senacmadu]> alter table cursos
    -> modify professores varchar(200);
Query OK, 0 rows affected (0.041 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [senacmadu]> describe cursos;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| matricula   | int(11)      | NO   | PRI | NULL    |       |
| materias    | varchar(200) | YES  |     | NULL    |       |
| vagas       | int(11)      | YES  |     | NULL    |       |
| professores | varchar(200) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
4 rows in set (0.006 sec)

MariaDB [senacmadu]> alter table cursos
    -> add alunos varchar(200);
Query OK, 0 rows affected (0.006 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [senacmadu]> describe cursos;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| matricula   | int(11)      | NO   | PRI | NULL    |       |
| materias    | varchar(200) | YES  |     | NULL    |       |
| vagas       | int(11)      | YES  |     | NULL    |       |
| professores | varchar(200) | YES  |     | NULL    |       |
| alunos      | varchar(200) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.006 sec)

MariaDB [senacmadu]> insert into cursos (matricula,materias,vagas,professores,alunos) values (1,"java e python",8,"Sheyla e Franco","Ainda n??o temos alunos matriculados");
Query OK, 1 row affected, 1 warning (0.004 sec)

MariaDB [senacmadu]> select * from cursos;
+-----------+---------------+-------+-----------------+-------------------------------------+
| matricula | materias      | vagas | professores     | alunos                              |
+-----------+---------------+-------+-----------------+-------------------------------------+
|         1 | java e python |     8 | Sheyla e Franco | Ainda n?o temos alunos matriculados |
+-----------+---------------+-------+-----------------+-------------------------------------+
1 row in set (0.000 sec)

MariaDB [senacmadu]> alter table cursos drop alunos;
Query OK, 0 rows affected (0.012 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [senacmadu]> describe cursos;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| matricula   | int(11)      | NO   | PRI | NULL    |       |
| materias    | varchar(200) | YES  |     | NULL    |       |
| vagas       | int(11)      | YES  |     | NULL    |       |
| professores | varchar(200) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
4 rows in set (0.006 sec)

MariaDB [senacmadu]> select * from cursos;
+-----------+---------------+-------+-----------------+
| matricula | materias      | vagas | professores     |
+-----------+---------------+-------+-----------------+
|         1 | java e python |     8 | Sheyla e Franco |
+-----------+---------------+-------+-----------------+
1 row in set (0.000 sec)

MariaDB [senacmadu]> insert into cursos (matricula,materias,vagas,professores) values (2,"html e css",5,"Samuel e Valter")
    -> ;
Query OK, 1 row affected (0.018 sec)

MariaDB [senacmadu]> select * from cursos;
+-----------+---------------+-------+-----------------+
| matricula | materias      | vagas | professores     |
+-----------+---------------+-------+-----------------+
|         1 | java e python |     8 | Sheyla e Franco |
|         2 | html e css    |     5 | Samuel e Valter |
+-----------+---------------+-------+-----------------+
2 rows in set (0.000 sec)

MariaDB [senacmadu]> create table turma(
    -> id int primary key,
    -> sala int,
    -> alunos int,
    -> equipamentos varchar(200));
Query OK, 0 rows affected (0.028 sec)

MariaDB [senacmadu]> insert into turma (id,sala,alunos,equipamentos) values (3,407,20,"Projetor, Cadeiras, Mesas e Notebooks");
Query OK, 1 row affected (0.019 sec)

MariaDB [senacmadu]> create table turma;
ERROR 1050 (42S01): Table 'turma' already exists
MariaDB [senacmadu]> select * from turma;
+----+------+--------+---------------------------------------+
| id | sala | alunos | equipamentos                          |
+----+------+--------+---------------------------------------+
|  3 |  407 |     20 | Projetor, Cadeiras, Mesas e Notebooks |
+----+------+--------+---------------------------------------+
1 row in set (0.000 sec)

MariaDB [senacmadu]> create table alunos(
    -> cpf varchar(15),
    -> nome varchar(200),
    -> idade int,
    -> sexo int);
Query OK, 0 rows affected (0.028 sec)

MariaDB [senacmadu]> alter table alunos
    -> modify cpf varchar(15) primary key;
Query OK, 0 rows affected (0.032 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [senacmadu]> describe alunos;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| cpf   | varchar(15)  | NO   | PRI | NULL    |       |
| nome  | varchar(200) | YES  |     | NULL    |       |
| idade | int(11)      | YES  |     | NULL    |       |
| sexo  | int(11)      | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
4 rows in set (0.004 sec)

MariaDB [senacmadu]> insert into alunos (cpf,nome,idade,sexo) values ("000.000.000-00","Bezerra da Silva",25,masc);
ERROR 1054 (42S22): Unknown column 'masc' in 'field list'
MariaDB [senacmadu]> alter table alunos
    -> modify sexo varchar(20);
Query OK, 0 rows affected (0.038 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [senacmadu]>  insert into alunos (cpf,nome,idade,sexo) values ("000.000.000-00","Bezerra da Silva",25,"masculino");
Query OK, 1 row affected (0.006 sec)

MariaDB [senacmadu]> select * from alunos;
+----------------+------------------+-------+-----------+
| cpf            | nome             | idade | sexo      |
+----------------+------------------+-------+-----------+
| 000.000.000-00 | Bezerra da Silva |    25 | masculino |
+----------------+------------------+-------+-----------+
1 row in set (0.000 sec)

MariaDB [senacmadu]> show tables;
+---------------------+
| Tables_in_senacmadu |
+---------------------+
| alunos              |
| cursos              |
| turma               |
+---------------------+
3 rows in set (0.001 sec)

MariaDB [senacmadu]>


Existem outras entidades al??m dessas tr??s?

Sim!


??? Quais s??o os principais campos e tipos?

Cursos - Matricula  

Turma - ID

Alunos - CPF


??? Como essas entidades est??o relacionadas?

Cursos (n,1)-------------------(n,1) Turma (1,n) ----------------(1,n) Alunos