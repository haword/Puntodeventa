object frmProcesosPorLote: TfrmProcesosPorLote
  Left = 0
  Top = 0
  Caption = 'Formulario de Actualizaciones por Lotes'
  ClientHeight = 143
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 455
    Height = 143
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object rgTipoCorte: TcxRadioGroup
      Left = 11
      Top = 11
      Caption = 'Tipo de Corte'
      ItemIndex = 0
      Properties.DefaultValue = 'S'
      Properties.Items = <
        item
          Caption = 'Sucursal'
          Value = 'S'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 0
      Transparent = True
      Height = 39
      Width = 402
    end
    object edfechacorte: TcxDateEdit
      Left = 89
      Top = 56
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 148
    end
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 90
      Width = 200
      Height = 25
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 3
    end
    object btcancelarcuadre: TcxButton
      Left = 229
      Top = 90
      Width = 200
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 4
    end
    object LcSucursales: TcxLookupComboBox
      Left = 289
      Top = 56
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'NOMBRE'
      Properties.ListColumns = <
        item
          Caption = 'Sucursal'
          FieldName = 'Nombre'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsSucursal
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 148
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object GroupParametros: TdxLayoutGroup
        Caption = 'Parametros Cuadre'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = rgTipoCorte
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl3Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Fecha de Corte'
            Control = edfechacorte
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Item1: TdxLayoutItem
            AutoAligns = []
            Caption = 'Sucursal'
            Control = LcSucursales
            ControlOptions.ShowBorder = False
          end
        end
      end
      object GroupSaldo: TdxLayoutGroup
        Caption = 'Saldo Final en Caja'
        ShowCaption = False
        ShowBorder = False
        object botonescuadre: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'botonescuadre'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          object dxLayoutControl3Item31: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btaceptarcuadre
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Item10: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btcancelarcuadre
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ent'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPaciente'
      'WHERE EntradaId = :ent'
      'AND DataAreaId = '#39'ldr'#39)
    Left = 176
    Top = 18
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      DisplayWidth = 28
      FieldName = 'BRUTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      DisplayWidth = 28
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      DisplayWidth = 28
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      DisplayWidth = 28
      FieldName = 'NETO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      DisplayWidth = 28
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      DisplayWidth = 28
      FieldName = 'COBERTURAPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      DisplayWidth = 28
      FieldName = 'COBERTURASEGURO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      DisplayWidth = 28
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField
      DisplayWidth = 28
      FieldName = 'COBERTURAMONTOPRECONFIRMADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      DisplayWidth = 28
      FieldName = 'DESCUENTOPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      DisplayWidth = 28
      FieldName = 'DESCUENTOVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      DisplayWidth = 28
      FieldName = 'DESCUENTOBONO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      DisplayWidth = 28
      FieldName = 'GASTOSVARIOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 80
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField
      FieldName = 'COBERTURAPRECONFIRMADA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteNCFTYPEID: TStringField
      FieldName = 'NCFTYPEID'
      Size = 10
    end
    object qrEntradaPacienteNCFID: TStringField
      FieldName = 'NCFID'
      Size = 19
    end
    object qrEntradaPacienteNCFNAME: TStringField
      FieldName = 'NCFNAME'
      Size = 80
    end
    object qrEntradaPacienteTotalPendiente: TBCDField
      DisplayWidth = 28
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
      Calculated = True
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHADEALTA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHAENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHAREGISTRO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHAPROMETIDA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      DisplayWidth = 23
      FieldName = 'FECHAASEGURADORA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qrEntradaPacienteCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object qrEntradaPacienteNUMEROINTERNET: TIntegerField
      FieldName = 'NUMEROINTERNET'
    end
    object qrEntradaPacienteRESULTADOCLIENTE: TIntegerField
      FieldName = 'RESULTADOCLIENTE'
    end
    object qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField
      FieldName = 'PUBLICARINTERNETCLIENTE'
    end
    object qrEntradaPacienteTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      Size = 10
    end
    object qrEntradaPacienteGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrEntradaPacienteFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 216
    Top = 18
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteDetalle'
      'WHERE refrecid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY recid')
    Left = 342
    Top = 18
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteDetallePASARAXAPTA: TIntegerField
      FieldName = 'PASARAXAPTA'
    end
    object qrEntradaPacienteDetalleCOMBO: TIntegerField
      FieldName = 'COMBO'
    end
    object qrEntradaPacienteDetalleADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleREPREALIZADA: TIntegerField
      FieldName = 'REPREALIZADA'
    end
    object qrEntradaPacienteDetalleREPMUESTRANO: TStringField
      FieldName = 'REPMUESTRANO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField
      FieldName = 'TIENEACUERDOPRECIO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField
      FieldName = 'TIENEACUERDODESCUENTO'
    end
    object qrEntradaPacienteDetalleCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteDetalleCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDetalleEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField
      FieldName = 'LDRDEPARTAMENTOID'
      Size = 10
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetallePRECIOCOMBO: TBCDField
      FieldName = 'PRECIOCOMBO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteDetalleREFRECID_POS: TIntegerField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteDetalleENTRADAID_POS: TStringField
      FieldName = 'ENTRADAID_POS'
    end
    object qrEntradaPacienteDetalleMUESTRANO_POS: TStringField
      FieldName = 'MUESTRANO_POS'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPacienteDetalle
    Left = 380
    Top = 18
  end
end
