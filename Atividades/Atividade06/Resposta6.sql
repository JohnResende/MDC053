Resposta da atividade 6
////////////////////////////////////////////

/**
  R: 1 
 
  Comando executado: INSERT INTO TURMA(ID_TURMA, NUM_Periodo, ID_Professor) VALUES(3, 20201, 3);
  Resultado obtido: Affected rows: 1
 */
INSERT INTO turma(ID_TURMA, NUM_Periodo, ID_Professor) VALUES(3, 20201, 3);


/**
  R: 2
 
  Comando executado: INSERT INTO TURMA(ID_TURMA, NUM_periodo, ID_DISCIPLINA) VALUES(3, 20202, 1);
  Resultado obtido: 1062 - Duplicate of field '3' for the key 'PRIMARY'
 */
INSERT INTO TURMA(ID_TURMA, NUM_Periodo, ID_DISCIPLINA) VALUES(3, 20202, 1);

/**
  R: 3
 
  Comando executado: UPDATE DISCIPLINA SET ID_DISCIPLINA = 3 WHERE NOME_DISCIPLINA = 'BANCO DE DADOS I';
  Resultado obtido: Affected rows: 1
 */
UPDATE DISCIPLINA SET ID_DISCIPLINA = 3 WHERE NOME_DISCIPLINA = 'BANCO DE DADOS I';

/**
  R: 4
 
  Comando executado: UPDATE historico SET NUM_faltas = 0 WHERE ID_ALUNO = 1 AND ID_TURMA = 1;
  Resultado obtido: Affected rows: 1
 */
UPDATE historico SET NUM_faltas = 0 WHERE ID_ALUNO = 1 AND ID_TURMA = 1;

/**
  R: 5
 
  Comando executado: DELETE FROM ALUNO WHERE NOME_ALUNO ='PEDRO';
  Resultado obtido: Affected rows: 1
 */
DELETE FROM ALUNO WHERE NOME_ALUNO = 'PEDRO';

/** 
  R: 6
 
  Comando executado: DELETE FROM disciplina WHERE NOME_DISCIPLINA = 'BANCO DE DADOS II';
  Resultado obtido: Affected rows: 1
 */
DELETE FROM DISCIPLINA WHERE NOME_DISCIPLINA = 'BANCO DE DADOS II';
