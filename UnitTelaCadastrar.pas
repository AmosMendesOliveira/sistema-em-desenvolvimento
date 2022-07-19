unit UnitTelaCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TtelaCadastrar = class(TForm)
    pageCadastrar: TPageControl;
    dadosPessoais: TTabSheet;
    dadosEndereco: TTabSheet;
    dadosDeContato: TTabSheet;
    renda_e_referencia: TTabSheet;
    txtNome: TDBEdit;
    Label1: TLabel;
    txtCPF_CNPJ: TDBEdit;
    rbCPF: TRadioButton;
    rbCNPJ: TRadioButton;
    Panel1: TPanel;
    navegadorTelaCadastro: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaCadastrar: TtelaCadastrar;

implementation

{$R *.dfm}

uses DM_TelaCadastro;

end.
