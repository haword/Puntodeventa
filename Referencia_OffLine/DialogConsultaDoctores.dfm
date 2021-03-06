inherited frmDialogConsultaDoctores: TfrmDialogConsultaDoctores
  Caption = 'Consulta de Doctores'
  ClientHeight = 542
  ClientWidth = 943
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 959
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 943
    Height = 542
    ExplicitWidth = 943
    ExplicitHeight = 542
    inherited edbuscarpor: TcxComboBox
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'Doctor'
        'Nombre'
        'Especialidad'
        'Telefono'
        'Celular')
      ExplicitWidth = 150
      Width = 150
    end
    inherited edbuscar: TcxTextEdit
      Left = 273
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      ExplicitLeft = 273
      ExplicitWidth = 250
      Width = 250
    end
    inherited cgDatos: TcxGrid
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'DOCTORID'
        object dbDatosDoctorId: TcxGridDBColumn
          Caption = 'Codigo del Doctor'
          DataBinding.FieldName = 'DOCTORID'
          Width = 110
        end
        object dbDatosNombre: TcxGridDBColumn
          Caption = 'Nombre del Doctor'
          DataBinding.FieldName = 'NOMBRE'
          Width = 325
        end
        object dbDatosTelefono: TcxGridDBColumn
          Caption = 'Telefono 1'
          DataBinding.FieldName = 'TELEFONO'
          Width = 110
        end
        object dbDatosTELEFONO2: TcxGridDBColumn
          Caption = 'Celular'
          DataBinding.FieldName = 'CELULAR'
          Width = 110
        end
        object dbDatosFAX: TcxGridDBColumn
          Caption = 'Fax No.'
          DataBinding.FieldName = 'FAX'
          Width = 110
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 682
      Top = 496
      Width = 250
      Height = 35
      Caption = 'Esc = &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 682
      ExplicitTop = 496
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    inherited btaceptar: TcxButton
      Left = 426
      Top = 496
      Width = 250
      Height = 35
      Caption = 'F9 = &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 426
      ExplicitTop = 496
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        inherited dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Criterio'
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 658
    Top = 32
    AutoSize = False
    Caption = 'Enter = Buscar Doctor'
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.LabelEffect = cxleCool
    Properties.LabelStyle = cxlsRaised
    Properties.ShadowedColor = clGray
    Style.Color = 16311249
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    Height = 28
    Width = 260
  end
  inherited dsDatos: TDataSource
    DataSet = qrDoctores
    Left = 236
    Top = 410
  end
  inherited cxIntl1: TcxIntl
    Left = 304
    Top = 400
  end
  object qrDoctores: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTDoctor'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 184
    Top = 410
    object qrDoctoresDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDoctoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDoctoresCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrDoctoresTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrDoctoresFAX: TStringField
      FieldName = 'FAX'
    end
    object qrDoctoresCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrDoctoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDoctoresCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrDoctoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrDoctoresCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDoctoresRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDoctoresESPECIALIDADID: TStringField
      FieldName = 'ESPECIALIDADID'
      Size = 10
    end
    object qrDoctoresPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDoctoresCODIGORESULTADO: TStringField
      FieldName = 'CODIGORESULTADO'
      Size = 10
    end
    object qrDoctoresUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrDoctoresCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrDoctoresCOMISION: TBCDField
      FieldName = 'COMISION'
      Precision = 28
      Size = 12
    end
    object qrDoctoresDIRECCIONCONSULTA2: TStringField
      FieldName = 'DIRECCIONCONSULTA2'
      Size = 255
    end
    object qrDoctoresDIRECCIONCONSULTA1: TStringField
      FieldName = 'DIRECCIONCONSULTA1'
      Size = 255
    end
    object qrDoctoresESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Size = 80
    end
    object qrDoctoresCODIGOWEB: TStringField
      FieldName = 'CODIGOWEB'
      Size = 10
    end
    object qrDoctoresDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDoctoresRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
