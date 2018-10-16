unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmPrincipal, Enter,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Winapi.ShellAPI, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    RELATRIOS1: TMenuItem;
    CLIENTE2: TMenuItem;
    PRODUTO2: TMenuItem;
    N3: TMenuItem;
    VENDAPORDIA1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    mmoLinha: TMemo;
    Script_Banco_De_Dados: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAR1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure CLIENTE2Click(Sender: TObject);
    procedure PRODUTO2Click(Sender: TObject);
    procedure VENDAPORDIA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter:TMREnter;
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uRelCadCategorias, uRelCadProdutos, uRelCadProdutosComGrupoCategoria;

procedure TfrmMenuPrincipal.CLIENTE2Click(Sender: TObject);
begin
  frmRelCadCategorias:=TfrmRelCadCategorias.Create(Self);
  frmRelCadCategorias.Relatorio.PreviewModal;
  frmRelCadCategorias.Release;
end;

procedure TfrmMenuPrincipal.FECHAR1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(DtmPrincipal) then
     FreeAndNil(DtmPrincipal);
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin

  DtmPrincipal:=TDtmPrincipal.Create(self);     //Instancia o DataModule
  with DtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=False;    //Habilita o Cursor em cada transação no banco de dados
    LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll';  //Seta a DLL para conexao do SQL
    Protocol:='mssql';  //Protocolo do banco de dados
    HostName:='.\SERVERCURSO'; //Instancia do SQLServer
    Port:=1433;          //Porta do SQL Server
    User := 'sa';  //Usuario do Banco de Dados
    Password:='mudar@123';  //Senha do Usuário do banco
    Database:='dbRelatorio';  //Nome do Banco de Dados
    Connected:=True;  //Faz a Conexão do Banco
  end;

  TeclaEnter:=TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:=True;
  TeclaEnter.FocusColor:=clInfoBk;

end;

procedure TfrmMenuPrincipal.Image1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://www.udemy.com/desenvolver-sistema-com-delphi-e-sql-server-na-pratica/',nil,nil,SW_SHOW);
end;

procedure TfrmMenuPrincipal.PRODUTO2Click(Sender: TObject);
begin
  frmRelCadProdutos:=TfrmRelCadProdutos.Create(Self);
  frmRelCadProdutos.Relatorio.PreviewModal;
  frmRelCadProdutos.Release;
end;

procedure TfrmMenuPrincipal.VENDAPORDIA1Click(Sender: TObject);
begin
  frmRelCadProdutosComGrupoCategoria:=TfrmRelCadProdutosComGrupoCategoria.Create(Self);
  frmRelCadProdutosComGrupoCategoria.Relatorio.PreviewModal;
  frmRelCadProdutosComGrupoCategoria.Release;
end;

end.
