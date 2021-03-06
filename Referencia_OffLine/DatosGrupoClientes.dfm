inherited frmDatosGrupoClientes: TfrmDatosGrupoClientes
  Caption = 'Tipos de Clientes'
  ClientHeight = 365
  ClientWidth = 571
  ExplicitWidth = 579
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 571
    Height = 332
    ExplicitWidth = 571
    ExplicitHeight = 332
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsMain
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'GrupoCliente'
              object tvDatosGrupoCliente: TcxGridDBColumn
                Caption = 'Tipo de Cliente'
                DataBinding.FieldName = 'GrupoCliente'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 102
            Top = 36
            DataBinding.DataField = 'GRUPOCLIENTE'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 102
            Top = 90
            DataBinding.DataField = 'DESCRIPCION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 400
          end
          object cxDBMemo1: TcxDBMemo [2]
            Left = 102
            Top = 117
            DataBinding.DataField = 'COMENTARIO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Height = 89
            Width = 400
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
            Left = 102
            Top = 63
            DataBinding.DataField = 'SINPRFILTERGROUP'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Grupo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo de Calculo'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Comentario'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 571
    ExplicitWidth = 571
  end
  inherited dsDatos: TDataSource
    DataSet = qrGrupoClientes
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.944684236110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.944684421290000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 380
  end
  inherited pmCustom: TPopupMenu
    Left = 464
  end
  inherited qrDefaultView: TADOQuery
    Left = 440
  end
  inherited strView: TJvStrHolder
    Left = 436
    Top = 108
  end
  object qrGrupoClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTGrupoCliente'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 136
    Top = 2
    object qrGrupoClientesGRUPOCLIENTE: TStringField
      DisplayLabel = 'GRUPO'
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrGrupoClientesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qrGrupoClientesCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftMemo
    end
    object qrGrupoClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrGrupoClientesSINPRFILTERGROUP: TIntegerField
      DisplayLabel = 'Tipo de Proceso'
      FieldName = 'SINPRFILTERGROUP'
    end
    object qrGrupoClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrGrupoClientesRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
