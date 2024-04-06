CREATE TABLE Acesso (
  idAcesso INTEGER NOT NULL,
  Computador_idComputador INTEGER NOT NULL,
  URL VARCHAR(50) NULL,
  Data/Hora TIMESTAMP NULL,
  PRIMARY KEY(idAcesso),
  INDEX Acesso_FKIndex1(Computador_idComputador)
);

CREATE TABLE Computador (
  idComputador INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(idComputador)
);

CREATE TABLE Computador_has_Usuario (
  Computador_idComputador INTEGER NOT NULL,
  Usuario_idUsuario INTEGER NOT NULL,
  Inicio TIMESTAMP NULL,
  FIM TIMESTAMP NULL,
  PRIMARY KEY(Computador_idComputador, Usuario_idUsuario),
  INDEX Computador_has_Usuario_FKIndex1(Computador_idComputador),
  INDEX Computador_has_Usuario_FKIndex2(Usuario_idUsuario)
);

CREATE TABLE Usuario (
  idUsuario INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Mail CHAR(50) NULL,
  Senha VARCHAR(55) NULL,
  PRIMARY KEY(idUsuario)
);


