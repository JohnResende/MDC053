Resposta da atividade 1-5
////////////////////////////
CREATE TABLE `ALUNO` (
    `id_ALUNO`              INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_ALUNO`            VARCHAR(100) NOT NULL,
    `email_ALUNO`           VARCHAR(100) DEFAULT NULL,
    `fone_contato`          CHAR(14)     DEFAULT NULL,
    PRIMARY KEY (`id_ALUNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `CURSO` (
    `id_CURSO`              INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_CURSO`            VARCHAR(100) NOT NULL,
    `carga_horaria`         SMALLINT(6)  DEFAULT NULL,
    PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `professor` (
    `id_professor`          INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_professor`        VARCHAR(100) NOT NULL,
    `titulacao_professor`   CHAR(3)      DEFAULT NULL,
    PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `turma` (
    `id_TURMA`              INT(11)      NOT NULL AUTO_INCREMENT,
    `id_CURSO`              INT(11)      NOT NULL,
    `id_professor`          INT(11)      NOT NULL,
    `id_ALUNO`              INT(11)      NOT NULL,
    `data_matricula`        DATE         NOT NULL,
    PRIMARY KEY (`id_TURMA`),
    KEY `id_curso` (`id_CURSO`),
    KEY `id_professor` (`id_professor`),
    KEY `id_aluno` (`id_aluno`),
    CONSTRAINT `turma_FK` FOREIGN KEY (`id_ALUNO`) REFERENCES `aluno` (`id_ALUNO`),
    CONSTRAINT `turma_FK_1` FOREIGN KEY (`id_CURSO`) REFERENCES `curso` (`id_CURSO`),
    CONSTRAINT `turma_FK_2` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
