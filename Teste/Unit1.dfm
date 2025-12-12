object Form1: TForm1
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 152
    Top = 96
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 136
    Top = 208
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 224
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'c:\map'
    IndexFiles.Strings = (
      'Ind_nome.ndx'
      'Ind_tele.ndx')
    IndexName = 'IND_NOME.NDX'
    TableName = 'data1.dbf'
    Left = 152
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 96
    Top = 8
  end
end
