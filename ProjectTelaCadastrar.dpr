program ProjectTelaCadastrar;

uses
  Vcl.Forms,
  UnitTelaCadastrar in 'UnitTelaCadastrar.pas' {Form1},
  DM_TelaCadastro in 'DM_TelaCadastro.pas' {TelaCadastroDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTelaCadastroDM, TelaCadastroDM);
  Application.Run;
end.
