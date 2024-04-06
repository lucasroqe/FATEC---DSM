CREATE TABLE Atividade (
  idAtividade INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(idAtividade)
);

CREATE TABLE Atividade_has_Propriedade (
  Atividade_idAtividade INTEGER NOT NULL,
  Propriedade_idPropriedade INTEGER NOT NULL,
  PRIMARY KEY(Atividade_idAtividade, Propriedade_idPropriedade),
  INDEX Atividade_has_Propriedade_FKIndex1(Atividade_idAtividade),
  INDEX Atividade_has_Propriedade_FKIndex2(Propriedade_idPropriedade)
);

CREATE TABLE Possui (
  Proprietario_idProprietario INTEGER NOT NULL,
  Propriedade_idPropriedade INTEGER NOT NULL,
  PRIMARY KEY(Proprietario_idProprietario, Propriedade_idPropriedade),
  INDEX Proprietario_has_Propriedade_FKIndex1(Proprietario_idProprietario),
  INDEX Proprietario_has_Propriedade_FKIndex2(Propriedade_idPropriedade)
);

CREATE TABLE Propriedade (
  idPropriedade INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Area VARCHAR(55) NULL,
  PRIMARY KEY(idPropriedade)
);

CREATE TABLE Proprietario (
  idProprietario INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Telefone CHAR(11) NULL,
  PRIMARY KEY(idProprietario)
);


