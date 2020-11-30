Resposta da atividade 2-5
////////////////////////

CREATE TABLE `PESSOA` (
    `ID`          INT(11)      NOT NULL,
    `NOME`        VARCHAR(100) NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fisica` (
    `ID`          INT(11)      NOT NULL,
    `SEXO`        CHAR(1)      DEFAULT NULL,
    `CPF`         CHAR(11)     NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `ID` (`ID`)     USING BTREE,
    CONSTRAINT `fisica_FK` FOREIGN KEY (`ID`) REFERENCES `PESSOA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `juridica` (
    `ID`          INT(11)      NOT NULL,
    `SEXO`        CHAR(1)      DEFAULT NULL,
    `CNPJ`        CHAR(14)     NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `ID` (`ID`)     USING BTREE,
    CONSTRAINT `juridica_FK` FOREIGN KEY (`ID`) REFERENCES `PESSOA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `endereco` (
    `ID`         INT(11)      NOT NULL,
    `LOGRADOURO` VARCHAR(100) DEFAULT NULL,
    `NUMERO`     INT(11)      DEFAULT 0,
    `CEP`        CHAR(0)      NOT NULL,
    `CIDADE`     VARCHAR(30)  DEFAULT NULL,
    `UF`         CHAR(2)      NOT NULL,
    UNIQUE KEY `ID` (`ID`)    USING BTREE,
    CONSTRAINT `endereco_FK` FOREIGN KEY (`ID`) REFERENCES `PESSOA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
