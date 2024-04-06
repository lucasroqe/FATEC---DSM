CREATE TABLE Contato (
  C�digo INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(C�digo)
);

CREATE TABLE Endere�o (
  C�digo INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(C�digo)
);

CREATE TABLE Mail (
  idMail INTEGER NOT NULL,
  Contato_C�digo INTEGER NOT NULL,
  Email VARCHAR(22) NULL,
  PRIMARY KEY(idMail),
  INDEX Mail_FKIndex1(Contato_C�digo)
);

CREATE TABLE Possui (
  Contato_C�digo INTEGER NOT NULL,
  Endere�o_C�digo INTEGER NOT NULL,
  Hor�rio TIMESTAMP NULL,
  PRIMARY KEY(Contato_C�digo, Endere�o_C�digo),
  INDEX Contato_has_Endere�o_FKIndex1(Contato_C�digo),
  INDEX Contato_has_Endere�o_FKIndex2(Endere�o_C�digo)
);

CREATE TABLE Telefone (
  idTelefone INTEGER NOT NULL,
  Contato_C�digo INTEGER NOT NULL,
  N�mero CHAR(11) NULL,
  PRIMARY KEY(idTelefone),
  INDEX Telefone_FKIndex1(Contato_C�digo)
);


