object DtmPrincipal: TDtmPrincipal
  OldCreateOrder = False
  Height = 225
  Width = 432
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    SQLHourGlass = True
    HostName = 'VIRTUAL-PC\SERVERCURSO'
    Port = 0
    Database = 'vendas'
    User = 'sa'
    Password = 'mudar@123'
    Protocol = 'mssql'
    LibraryLocation = 'C:\cursoDelphi\ntwdblib.dll'
    Left = 48
    Top = 24
  end
  object QryScriptItensVendas: TZQuery
    SQL.Strings = (
      'Create table vendas ('
      '  vendaId int identity(1,1) not null,'
      '  clienteId int not null,'
      '  dataVenda datetime default getdate(),'
      ''
      ''
      '  PRIMARY KEY (vendaId),'
      '  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      '    REFERENCES clientes(clienteId)'
      ')'
      ''
      ''
      'Create table vendasItens ('
      '  vendaId int not null,'
      '  produtoId int not null,'
      '  dataVenda datetime default getdate(),'
      '  valorUnitario decimal (18,5) default 0.00000,'
      '  quantidade decimal (18,5) default 0.00000,'
      '  totalProduto decimal (18,5) default 0.00000,'
      '  PRIMARY KEY (vendaId,produtoId),'
      '  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      '    REFERENCES produtos(produtoId)'
      ')')
    Params = <>
    Left = 256
    Top = 72
  end
  object QryScriptCategorias: TZQuery
    SQL.Strings = (
      'Create table vendas ('
      '  vendaId int identity(1,1) not null,'
      '  clienteId int not null,'
      '  dataVenda datetime default getdate(),'
      ''
      ''
      '  PRIMARY KEY (vendaId),'
      '  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      '    REFERENCES clientes(clienteId)'
      ')'
      ''
      ''
      'Create table vendasItens ('
      '  vendaId int not null,'
      '  produtoId int not null,'
      '  dataVenda datetime default getdate(),'
      '  valorUnitario decimal (18,5) default 0.00000,'
      '  quantidade decimal (18,5) default 0.00000,'
      '  totalProduto decimal (18,5) default 0.00000,'
      '  PRIMARY KEY (vendaId,produtoId),'
      '  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      '    REFERENCES produtos(produtoId)'
      ')')
    Params = <>
    Left = 160
    Top = 16
  end
  object QryScriptClientes: TZQuery
    SQL.Strings = (
      'Create table vendas ('
      '  vendaId int identity(1,1) not null,'
      '  clienteId int not null,'
      '  dataVenda datetime default getdate(),'
      ''
      ''
      '  PRIMARY KEY (vendaId),'
      '  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      '    REFERENCES clientes(clienteId)'
      ')'
      ''
      ''
      'Create table vendasItens ('
      '  vendaId int not null,'
      '  produtoId int not null,'
      '  dataVenda datetime default getdate(),'
      '  valorUnitario decimal (18,5) default 0.00000,'
      '  quantidade decimal (18,5) default 0.00000,'
      '  totalProduto decimal (18,5) default 0.00000,'
      '  PRIMARY KEY (vendaId,produtoId),'
      '  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      '    REFERENCES produtos(produtoId)'
      ')')
    Params = <>
    Left = 264
    Top = 16
  end
  object QryScriptProdutos: TZQuery
    SQL.Strings = (
      'Create table vendas ('
      '  vendaId int identity(1,1) not null,'
      '  clienteId int not null,'
      '  dataVenda datetime default getdate(),'
      ''
      ''
      '  PRIMARY KEY (vendaId),'
      '  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      '    REFERENCES clientes(clienteId)'
      ')'
      ''
      ''
      'Create table vendasItens ('
      '  vendaId int not null,'
      '  produtoId int not null,'
      '  dataVenda datetime default getdate(),'
      '  valorUnitario decimal (18,5) default 0.00000,'
      '  quantidade decimal (18,5) default 0.00000,'
      '  totalProduto decimal (18,5) default 0.00000,'
      '  PRIMARY KEY (vendaId,produtoId),'
      '  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      '    REFERENCES produtos(produtoId)'
      ')')
    Params = <>
    Left = 368
    Top = 16
  end
  object QryScriptVendas: TZQuery
    SQL.Strings = (
      'Create table vendas ('
      '  vendaId int identity(1,1) not null,'
      '  clienteId int not null,'
      '  dataVenda datetime default getdate(),'
      ''
      ''
      '  PRIMARY KEY (vendaId),'
      '  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      '    REFERENCES clientes(clienteId)'
      ')'
      ''
      ''
      'Create table vendasItens ('
      '  vendaId int not null,'
      '  produtoId int not null,'
      '  dataVenda datetime default getdate(),'
      '  valorUnitario decimal (18,5) default 0.00000,'
      '  quantidade decimal (18,5) default 0.00000,'
      '  totalProduto decimal (18,5) default 0.00000,'
      '  PRIMARY KEY (vendaId,produtoId),'
      '  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      '    REFERENCES produtos(produtoId)'
      ')')
    Params = <>
    Left = 152
    Top = 72
  end
end
