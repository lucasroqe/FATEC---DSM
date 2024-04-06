CREATE TABLE Cliente (
  idCliente INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  PRIMARY KEY(idCliente)
);

CREATE TABLE Fornecedor (
  idFornecedor INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Telefone CHAR(11) NULL,
  Mail VARCHAR(20) NULL,
  PRIMARY KEY(idFornecedor)
);

CREATE TABLE Fornecedor_has_Produto (
  Fornecedor_idFornecedor INTEGER NOT NULL,
  Produto_idProduto INTEGER NOT NULL,
  PRIMARY KEY(Fornecedor_idFornecedor, Produto_idProduto),
  INDEX Fornecedor_has_Produto_FKIndex1(Fornecedor_idFornecedor),
  INDEX Fornecedor_has_Produto_FKIndex2(Produto_idProduto)
);

CREATE TABLE Produto (
  idProduto INTEGER NOT NULL,
  Nome VARCHAR(55) NULL,
  Valor de Custo FLOAT NULL,
  Valor de venda FLOAT NULL,
  Quantidade INTEGER NULL,
  PRIMARY KEY(idProduto)
);

CREATE TABLE Produto_has_Venda (
  Produto_idProduto INTEGER NOT NULL,
  Venda_idVenda INTEGER NOT NULL,
  PRIMARY KEY(Produto_idProduto, Venda_idVenda),
  INDEX Produto_has_Venda_FKIndex1(Produto_idProduto),
  INDEX Produto_has_Venda_FKIndex2(Venda_idVenda)
);

CREATE TABLE Venda (
  idVenda INTEGER NOT NULL,
  Cliente_idCliente INTEGER NOT NULL,
  Data/Horario TIMESTAMP NULL,
  PRIMARY KEY(idVenda),
  INDEX Venda_FKIndex1(Cliente_idCliente)
);


