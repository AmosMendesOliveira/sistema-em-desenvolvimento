object telaCadastrar: TtelaCadastrar
  Left = 0
  Top = 0
  Caption = 'Tela de Cadastro'
  ClientHeight = 394
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pageCadastrar: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 842
    Height = 331
    ActivePage = dadosPessoais
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 3
    ExplicitHeight = 388
    object dadosPessoais: TTabSheet
      Caption = 'Dados Pessoais'
      object Label1: TLabel
        Left = 40
        Top = 27
        Width = 91
        Height = 15
        Caption = 'Nome Completo'
      end
      object txtNome: TDBEdit
        Left = 40
        Top = 48
        Width = 321
        Height = 23
        DataField = 'nome'
        DataSource = TelaCadastroDM.dsCadastrar
        TabOrder = 0
      end
      object txtCPF_CNPJ: TDBEdit
        Left = 464
        Top = 48
        Width = 225
        Height = 23
        DataField = 'cpf_cnpj'
        DataSource = TelaCadastroDM.dsCadastrar
        TabOrder = 1
      end
      object rbCPF: TRadioButton
        Left = 464
        Top = 25
        Width = 113
        Height = 17
        Caption = 'CPF'
        TabOrder = 2
      end
      object rbCNPJ: TRadioButton
        Left = 520
        Top = 25
        Width = 113
        Height = 17
        Caption = 'CNPJ'
        TabOrder = 3
      end
    end
    object dadosEndereco: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
    end
    object dadosDeContato: TTabSheet
      Caption = 'Contato'
      ImageIndex = 2
    end
    object renda_e_referencia: TTabSheet
      Caption = 'Renda / Refer'#234'ncia Comercial'
      ImageIndex = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 57
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitTop = -3
    object navegadorTelaCadastro: TDBNavigator
      AlignWithMargins = True
      Left = 429
      Top = 16
      Width = 410
      Height = 33
      DataSource = TelaCadastroDM.dsCadastrar
      TabOrder = 0
    end
  end
end
