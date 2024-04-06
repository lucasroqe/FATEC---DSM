CREATE TABLE Contato (
  Código INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(Código)
);

CREATE TABLE Endereço (
  Código INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(Código)
);

CREATE TABLE Mail (
  idMail INTEGER NOT NULL,
  Contato_Código INTEGER NOT NULL,
  Email VARCHAR(22) NULL,
  PRIMARY KEY(idMail),
  INDEX Mail_FKIndex1(Contato_Código)
);

CREATE TABLE Possui (
  Contato_Código INTEGER NOT NULL,
  Endereço_Código INTEGER NOT NULL,
  Horário TIMESTAMP NULL,
  PRIMARY KEY(Contato_Código, Endereço_Código),
  INDEX Contato_has_Endereço_FKIndex1(Contato_Código),
  INDEX Contato_has_Endereço_FKIndex2(Endereço_Código)
);

CREATE TABLE Telefone (
  idTelefone INTEGER NOT NULL,
  Contato_Código INTEGER NOT NULL,
  Número CHAR(11) NULL,
  PRIMARY KEY(idTelefone),
  INDEX Telefone_FKIndex1(Contato_Código)
);


