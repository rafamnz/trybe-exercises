DROP SCHEMA IF EXISTS normalization;
CREATE SCHEMA normalization;
USE normalization;

DROP TABLE IF EXISTS funcionarios;
CREATE TABLE funcionarios(
	funcionario_id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    email VARCHAR(100),
    contato VARCHAR(100),
    data_cadastro VARCHAR(100)
) ENGINE=InnoDB;

INSERT INTO funcionarios(funcionario_id, nome, sobrenome, email, contato, data_cadastro)
VALUES
(12, 'Joseph', 'Rodrigues', 'jo@gmail.com', '(35)998552-1445', '05/05/2020 08:50:25'),
(13, 'André', 'Freeman', 'andre1990@gmail.com', '(47)99522-4996', '2020-02-05 00:00:00'),
(14, 'Cíntia', 'Duval', 'cindy@outlook.com', '(33)99855-4669', '2020-05-05 10:55:35'),
(15, 'Fernanda', 'Mendes', 'fernandamendes@yahoo.com', '(33)99200-1556', '2020-05-05 11:45:40');

DROP TABLE IF EXISTS setores;
CREATE TABLE setores(
	setor_id INT NOT NULL PRIMARY KEY,
    setor VARCHAR(100)
) ENGINE=InnoDB;

INSERT INTO setores(setor_id, setor)
VALUES
(1, 'Administração'),
(2, 'Vendas'),
(3, 'Operacional'),
(4, 'Estratégico'),
(5, 'Marketing');

DROP TABLE IF EXISTS setor_funcionario;
CREATE TABLE setor_funcionario(
	setor_id INT NOT NULL,
    funcionario_id INT NOT NULL,
	FOREIGN KEY (setor_id) REFERENCES setores(setor_id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(funcionario_id)
) ENGINE=InnoDB;

INSERT INTO setor_funcionario(funcionario_id, setor_id)
VALUES
(12, 1),
(12, 2),
(13, 3),
(14, 4),
(14, 2),
(15, 5);
