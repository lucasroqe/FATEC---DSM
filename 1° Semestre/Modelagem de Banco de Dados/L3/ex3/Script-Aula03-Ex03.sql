CREATE TABLE Cliente (
  CPF CHAR(11) NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(CPF)
);

CREATE TABLE Convidado (
  Evento_idEvento INTEGER NOT NULL,
  Pessoa_CPF CHAR(11) NOT NULL,
  Participou BOOL NULL,
  PRIMARY KEY(Evento_idEvento, Pessoa_CPF),
  INDEX Evento_has_Pessoa_FKIndex1(Evento_idEvento),
  INDEX Evento_has_Pessoa_FKIndex2(Pessoa_CPF)
);

CREATE TABLE Evento (
  idEvento INTEGER NOT NULL,
  Cliente_CPF CHAR(11) NOT NULL,
  Dat DATE NULL,
  Inicio TIMESTAMP NULL,
  Fim TIMESTAMP NULL,
  PRIMARY KEY(idEvento),
  INDEX Evento_FKIndex1(Cliente_CPF)
);

CREATE TABLE Mail (
  idMail INTEGER NOT NULL,
  Cliente_CPF CHAR(11) NOT NULL,
  Email VARCHAR(22) NULL,
  PRIMARY KEY(idMail),
  INDEX Mail_FKIndex1(Cliente_CPF)
);

CREATE TABLE Pessoa (
  CPF CHAR(11) NOT NULL,
  Nome VARCHAR(55) NULL,
  Telefone INTEGER NULL,
  Mail VARCHAR NULL,
  PRIMARY KEY(CPF)
);

CREATE TABLE Telefone (
  idTelefone INTEGER NOT NULL,
  Cliente_CPF CHAR(11) NOT NULL,
  Numero CHAR(11) NULL,
  PRIMARY KEY(idTelefone),
  INDEX Telefone_FKIndex1(Cliente_CPF)
);


