inherited frmDialogConsultaPaciente: TfrmDialogConsultaPaciente
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Pacientes'
  ClientHeight = 542
  ClientWidth = 943
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitTop = -160
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
      Properties.Items.Strings = (
        'Cedula'
        'Telefono'
        'Nombre'
        'N'#250'mero Tarjeta'
        'Paciente'
        ''
        '')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edbuscarExit
      OnKeyUp = edbuscarKeyUp
    end
    inherited cgDatos: TcxGrid
      Width = 623
      Height = 333
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 623
      ExplicitHeight = 333
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'CLIENTEID'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosPacienteID
          end>
        OptionsView.Footer = True
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Paciente Id'
          DataBinding.FieldName = 'CLIENTEID'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object dbDatosNombre: TcxGridDBColumn
          Caption = 'Nombre del Paciente'
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 342
        end
        object dbDatosTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          HeaderAlignmentHorz = taCenter
          Width = 192
        end
        object dbDatosIdentificacion: TcxGridDBColumn
          Caption = 'Cedula'
          DataBinding.FieldName = 'IDENTIFICACION'
          HeaderAlignmentHorz = taCenter
          Width = 172
        end
        object dbDatosTelefono: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'TELEFONO'
          HeaderAlignmentHorz = taCenter
          Width = 118
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
      TabOrder = 5
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
      TabOrder = 4
      ExplicitLeft = 426
      ExplicitTop = 496
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    object BtNuevo: TcxButton [5]
      Left = 20
      Top = 496
      Width = 400
      Height = 35
      Caption = 'F1 = Agregar un Nuevo &Paciente'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BtNuevoClick
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem [0]
          ShowCaption = False
          Control = BtNuevo
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 571
    Top = 31
    AutoSize = False
    Caption = 'Enter = Buscar Paciente'
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
    Left = 324
    Top = 407
  end
  inherited cxIntl1: TcxIntl
    Left = 544
    Top = 240
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ClienteID,Nombre,g.Descripcion Tipo,Telefono,Estatus,Segu' +
        'ro,CiudadID,Direccion,Telefono2,Fax,Email,Sexo,FechaNacimiento,'
      
        'EnvioResultado,CobrarDiferencia,PublicarInternet,c.Identificacio' +
        'n FROM PtCliente c Inner Join PtGrupoCliente g On'
      'c.GrupoCliente=g.GrupoCliente'
      'WHERE Origen = 0'
      'AND c.DataAreaId = '#39'ldr'#39' AND g.DataAreaId = '#39'ldr'#39' ')
    Left = 272
    Top = 407
    object qrPacientesClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesTipo: TStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object qrPacientesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrPacientesEstatus: TIntegerField
      FieldName = 'Estatus'
    end
    object qrPacientesSeguro: TStringField
      FieldName = 'Seguro'
      Size = 10
    end
    object qrPacientesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPacientesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrPacientesTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrPacientesFax: TStringField
      FieldName = 'Fax'
    end
    object qrPacientesEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrPacientesSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrPacientesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrPacientesEnvioResultado: TIntegerField
      FieldName = 'EnvioResultado'
    end
    object qrPacientesCobrarDiferencia: TIntegerField
      FieldName = 'CobrarDiferencia'
    end
    object qrPacientesPublicarInternet: TIntegerField
      FieldName = 'PublicarInternet'
    end
    object qrPacientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
  end
end
