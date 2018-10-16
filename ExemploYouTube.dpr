program ExemploYouTube;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmMenuPrincipal},
  uDtmPrincipal in 'datamodule\uDtmPrincipal.pas' {DtmPrincipal: TDataModule},
  Enter in 'terceiros\Enter.pas',
  uRelCadCategorias in 'relatorios\uRelCadCategorias.pas' {frmRelCadCategorias},
  uRelCadProdutos in 'relatorios\uRelCadProdutos.pas' {frmRelCadProdutos},
  uRelCadProdutosComGrupoCategoria in 'relatorios\uRelCadProdutosComGrupoCategoria.pas' {frmRelCadProdutosComGrupoCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
