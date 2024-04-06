CREATE TABLE Equipamento (
  idEquipamento INTEGER NOT NULL,
  Nome VARCHAR(50) NULL,
  PRIMARY KEY(idEquipamento)
);

CREATE TABLE Localizado (
  Sala_idSala INTEGER NOT NULL,
  Patrimonio_idPatrimonio INTEGER NOT NULL,
  Inicio TIMESTAMP NULL,
  Fim TIMESTAMP NULL,
  PRIMARY KEY(Sala_idSala, Patrimonio_idPatrimonio),
  INDEX Sala_has_Patrimonio_FKIndex1(Sala_idSala),
  INDEX Sala_has_Patrimonio_FKIndex2(Patrimonio_idPatrimonio)
);

CREATE TABLE Patrimonio (
  idPatrimonio INTEGER NOT NULL,
  Equipamento_idEquipamento INTEGER NOT NULL,
  Numero VARCHAR(50) NULL,
  PRIMARY KEY(idPatrimonio),
  INDEX Patrimonio_FKIndex1(Equipamento_idEquipamento)
);

CREATE TABLE Predio (
  idPredio INTEGER NOT NULL,
  Nome VARCHAR(50) NULL,
  PRIMARY KEY(idPredio)
);

CREATE TABLE Sala (
  idSala INTEGER NOT NULL,
  Predio_idPredio INTEGER NOT NULL,
  Nome VARCHAR(50) NULL,
  PRIMARY KEY(idSala),
  INDEX Sala_FKIndex1(Predio_idPredio)
);


