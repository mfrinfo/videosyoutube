unit uDtmPrincipal;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Vcl.forms,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDtmPrincipal = class(TDataModule)
    ConexaoDB: TZConnection;
    QryScriptItensVendas: TZQuery;
    QryScriptCategorias: TZQuery;
    QryScriptClientes: TZQuery;
    QryScriptProdutos: TZQuery;
    QryScriptVendas: TZQuery;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmPrincipal: TDtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
