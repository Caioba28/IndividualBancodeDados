# IndividualBancodeDados

 affected (0.028 sec)

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


Existem outras entidades além dessas três?

Sim!


⇨ Quais são os principais campos e tipos?

Cursos - Matricula  

Turma - ID

Alunos - CPF


⇨ Como essas entidades estão relacionadas?

Cursos (n,1)-------------------(n,1) Turma (1,n) ----------------(1,n) Alunos
