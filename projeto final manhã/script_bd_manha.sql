--DDL (Data Definition Language) CREAT, DROP, ALTER
DROP DATABASE projetodiario1;
CREATE DATABASE projetodiario1;
USE projetodiario1;

create table aluno(
	id int primary key auto_increment,
	ra char(8) NOT NULL UNIQUE 
);

TRUNCATE TABLE aluno;

INSERT INTO aluno(ra) VALUES ('12666878');
INSERT INTO aluno(ra) VALUES ('12259978');
INSERT INTO aluno(ra) VALUES ('12343328');
INSERT INTO aluno(ra) VALUES ('12366578');

-- DQL
SELECT * FROM aluno;
SELECT ra FROM aluno;

CREATE TABLE diariobordo(
	id INT PRIMARY KEY AUTO_INCREMENT,
    texto TEXT NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);

SHOW TABLES;

ALTER TABLE diariobordo ADD CONSTRAINT fk_diario_bordo_2
FOREIGN KEY (fk_aluno_id)
REFERENCES aluno(id)
ON DELETE CASCADE;

select * from diariobordo;
select * from aluno;
insert diariobordo(texto,datahora,fk_aluno_id) values('aula legal','2024-8-01 09:16:00',1);

SELECT * FROM
    diariobordo
    JOIN
    aluno
    ON diariobordo.fk_aluno_id = aluno.id;
    
    SELECT
         d.texto,
         d.datahora,
         a.ra
	FROM
        diariobordo d
	JOIN 
        aluno a
        ON d.fk_aluno_id = aluno.id;


-- Exercício
-- Modelo conceitual - crie uma nota entidade chamada avaliação.
                                                         -- id pk
                                                         -- nota1 int
                                                         -- nota2 int 
                                                         -- nota3 int 
                                                         -- nota4 int
                                                         -- fk_aluno_id
                                                         
                                                         

-- id pf, nota2 int, nota3 int, nota4 int, if_aluno_id

CREATE TABLE  avaliacao(
     id int primary key auto_increment,
     nota1 int not null,
     nota2 int not null,
     nota3 int not null,
     nota4 int not null,
     fk_aluno_id int not null
     );
SHOW TABLES;
      
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES (9,8,7,10,1);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES (7,9,7,8,2);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES (8,8,7,9,3);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES (10,8,7,10,4);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES (6,7,7,9,5);

select * from aluno;


SELECT * FROM
    aluno a
    JOIN
    avaliacao av
    ON av.fk_aluno_id = a.id;
    
    
ALTER TABLE aluno ADD COLUMN nome VARCHAR(80);
ALTER TABLE aluno ADD COLUMN tempoestudo INT NOT NULL;
ALTER TABLE aluno ADD COLUMN rendafamiliar DECIMAL(10, 2);
describe aluno;
SELECT * FROM aluno;

-- Assuming you want to insert the same values for 50 studentsfor i in range(1, 51):

INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES
('66666878', 'Aluno 1', 10, 3000.00),
('66259978', 'Aluno 2', 12, 3500.00),
('66343328', 'Aluno 3', 15, 4000.00),
('66366578', 'Aluno 4', 8, 2500.00),
('66666879', 'Aluno 5', 10, 3200.00),
('66259979', 'Aluno 6', 12, 3700.00),
('66343329', 'Aluno 7', 15, 4200.00),
('66366579', 'Aluno 8', 8, 2600.00),
('66666880', 'Aluno 9', 10, 3400.00),
('66259980', 'Aluno 10', 12, 3600.00),
('66343330', 'Aluno 11', 15, 4100.00),
('66366580', 'Aluno 12', 8, 2700.00),
('66666881', 'Aluno 13', 10, 3300.00),
('66259981', 'Aluno 14', 12, 3800.00),
('66343331', 'Aluno 15', 15, 4300.00),
('66366581', 'Aluno 16', 8, 2800.00),
('66666882', 'Aluno 17', 10, 3500.00),
('66259982', 'Aluno 18', 12, 3900.00),
('66343332', 'Aluno 19', 15, 4400.00),
('66366582', 'Aluno 20', 8, 2900.00),
('66666883', 'Aluno 21', 10, 3600.00),
('66259983', 'Aluno 22', 12, 4000.00),
('66343333', 'Aluno 23', 15, 4500.00),
('66366583', 'Aluno 24', 8, 3000.00),
('66666884', 'Aluno 25', 10, 3700.00),
('66259984', 'Aluno 26', 12, 4100.00),
('66343334', 'Aluno 27', 15, 4600.00),
('66366584', 'Aluno 28', 8, 3100.00),
('66666885', 'Aluno 29', 10, 3800.00),
('66259985', 'Aluno 30', 12, 4200.00),
('66343335', 'Aluno 31', 15, 4700.00),
('66366585', 'Aluno 32', 8, 3200.00),
('66666886', 'Aluno 33', 10, 3900.00),
('66259986', 'Aluno 34', 12, 4300.00),
('66343336', 'Aluno 35', 15, 4800.00),
('66366586', 'Aluno 36', 8, 3300.00),
('66666887', 'Aluno 37', 10, 4000.00),
('66259987', 'Aluno 38', 12, 4400.00),
('66343337', 'Aluno 39', 15, 4900.00),
('66366587', 'Aluno 40', 8, 3400.00),
('66666888', 'Aluno 41', 10, 4100.00),
('66259988', 'Aluno 42', 12, 4500.00),
('66343338', 'Aluno 43', 15, 5000.00),
('66366588', 'Aluno 44', 8, 3500.00),
('66666889', 'Aluno 45', 10, 4200.00),
('66259989', 'Aluno 46', 12, 4600.00),
('66343339', 'Aluno 47', 15, 5100.00),
('66366589', 'Aluno 48', 8, 3600.00),
('66666890', 'Aluno 49', 10, 4300.00),
('66259990', 'Aluno 50', 12, 4700.00);


select * from aluno;




