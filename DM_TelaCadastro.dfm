object TelaCadastroDM: TTelaCadastroDM
  OldCreateOrder = False
  Height = 381
  Width = 616
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Public\Documents\Embarcadero\Studio\FireDAC\libmariadb.' +
      'dll'
    Left = 56
    Top = 24
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=sistema_cadastro_estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 104
  end
  object tbCadastrar: TFDTable
    Active = True
    IndexFieldNames = 'id_cliente'
    Connection = conexao
    TableName = 'sistema_cadastro_estoque.cadastro_cliente_fornecedor'
    Left = 56
    Top = 176
  end
  object dsCadastrar: TDataSource
    DataSet = tbCadastrar
    Left = 56
    Top = 248
  end
end
