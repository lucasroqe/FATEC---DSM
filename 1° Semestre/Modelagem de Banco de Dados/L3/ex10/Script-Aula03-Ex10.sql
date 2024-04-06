CREATE TABLE Ocupa (
  Veiculo_Placa INTEGER NOT NULL,
  Vaga_Nome CHAR(2) NOT NULL,
  Inicio TIMESTAMP NULL,
  Fim TIMESTAMP NULL,
  Valor FLOAT NULL,
  PRIMARY KEY(Veiculo_Placa, Vaga_Nome),
  INDEX Veiculo_has_Vaga_FKIndex1(Veiculo_Placa),
  INDEX Veiculo_has_Vaga_FKIndex2(Vaga_Nome)
);

CREATE TABLE Vaga (
  Nome CHAR(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Nome)
);

CREATE TABLE Veiculo (
  Placa INTEGER NOT NULL,
  Marca VARCHAR NULL,
  Modelo VARCHAR NULL,
  PRIMARY KEY(Placa)
);


