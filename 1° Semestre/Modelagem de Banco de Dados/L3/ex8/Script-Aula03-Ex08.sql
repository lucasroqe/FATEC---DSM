CREATE TABLE Guiche (
  idGuiche INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Praca_idPraca INTEGER NOT NULL,
  PRIMARY KEY(idGuiche),
  INDEX Guiche_FKIndex1(Praca_idPraca)
);

CREATE TABLE Guiche_has_Tabela (
  Guiche_idGuiche INTEGER UNSIGNED NOT NULL,
  Tabela_idTabela INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Guiche_idGuiche, Tabela_idTabela),
  INDEX Guiche_has_Tabela_FKIndex1(Guiche_idGuiche),
  INDEX Guiche_has_Tabela_FKIndex2(Tabela_idTabela)
);

CREATE TABLE Praca (
  idPraca INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Sentido ENUM NULL,
  PRIMARY KEY(idPraca)
);

CREATE TABLE Tabela (
  idTabela INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Praca_idPraca INTEGER NOT NULL,
  Tipo VARCHAR(20) NULL,
  Valor FLOAT NULL,
  PRIMARY KEY(idTabela),
  INDEX Tabela_FKIndex1(Praca_idPraca)
);


