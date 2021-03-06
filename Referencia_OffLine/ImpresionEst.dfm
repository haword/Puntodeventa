object frmImpresionEst: TfrmImpresionEst
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impresion de Reportes Estad'#237'sticos'
  ClientHeight = 420
  ClientWidth = 469
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
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
    Width = 469
    Height = 420
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 365
      Width = 200
      Height = 22
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 8
    end
    object btcancelarcuadre: TcxButton
      Left = 240
      Top = 365
      Width = 200
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 9
    end
    object FechaIni: TcxDateEdit
      Left = 88
      Top = 154
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 121
    end
    object FechaFin: TcxDateEdit
      Left = 319
      Top = 154
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 121
    end
    object RgImpresion: TcxRadioGroup
      Left = 11
      Top = 306
      HelpType = htKeyword
      Caption = 'Impresi'#243'n'
      ItemIndex = 0
      Properties.Columns = 2
      Properties.DefaultValue = 'V'
      Properties.Items = <
        item
          Caption = 'Vista Preliminar'
          Value = 'V'
        end
        item
          Caption = 'Printer'
          Value = 'P'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Shadow = False
      Style.TextColor = clWindowText
      TabOrder = 7
      Transparent = True
      Height = 40
      Width = 441
    end
    object CbOrdenar: TcxComboBox
      Left = 88
      Top = 272
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'NUM. FACTURA'
        'NUM. LABORATORIO'
        'MONTO FACTURADO'
        'MONTO PAGADO')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Text = 'NUM. LABORATORIO'
      Width = 127
    end
    object cboReporte: TcxComboBox
      Left = 88
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'ENTRADAS POR LR2000'
        'VENTAS MENSUALES'
        'PRODUCTIVIDAD OFICIAL DE SERVICIOS')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 299
    end
    object cbExtSucursal: TcxExtLookupComboBox
      Left = 88
      Top = 95
      RepositoryItem = DM.elcSucursal
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 299
    end
    object HoraIni: TcxMaskEdit
      Left = 88
      Top = 213
      Properties.EditMask = '##:##:##'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Text = '  :  :  '
      Width = 121
    end
    object HoraFin: TcxMaskEdit
      Left = 274
      Top = 213
      Properties.EditMask = '##:##:##'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Text = '  :  :  '
      Width = 121
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl3Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object GrupoParametros: TdxLayoutGroup
          Caption = 'Parametros Cuadre'
          ShowCaption = False
          ShowBorder = False
          object GrupoLaboratorio: TdxLayoutGroup
            Caption = 'Filtrar Tipo de Reporte'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item3: TdxLayoutItem
              Caption = 'Reporte'
              Control = cboReporte
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoSucursales: TdxLayoutGroup
            Caption = 'Filtrar Sucursales'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item42: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Sucursal '
              Control = cbExtSucursal
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoToma: TdxLayoutGroup
            Caption = 'Filtrar por Rango de Fecha '
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Fecha Inicial'
              Control = FechaIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item33: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Fecha Final'
              Control = FechaFin
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl3Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object GrupoHora: TdxLayoutGroup
              Caption = 'Filtrar por Rango de Hora'
              LayoutDirection = ldHorizontal
              object dxLayoutControl3Item4: TdxLayoutItem
                Caption = 'Hora Desde'
                Control = HoraIni
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item5: TdxLayoutItem
                Caption = 'Hora Hasta'
                Control = HoraFin
                ControlOptions.ShowBorder = False
              end
            end
            object GrupoOrdenar: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Ordernar El Listado por :'
              object dxLayoutControl3Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ordenar por'
                Control = CbOrdenar
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              Caption = 'cxRadioGroup1'
              ShowCaption = False
              Control = RgImpresion
              ControlOptions.ShowBorder = False
            end
          end
        end
        object GroupSaldo: TdxLayoutGroup
          Caption = 'Saldo Final en Caja'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
        end
      end
      object botonescuadre: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
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
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = btcancelarcuadre
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ppListadoPacientesLR2000: TppReport
    AutoStop = False
    DataPipeline = ppReporteLR2000
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteLR2000'
    object ppHeaderBand16: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppDBText215: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel237: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 8730
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable23: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 219340
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable24: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 203994
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable25: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        mmHeight = 11906
        mmLeft = 265
        mmTop = 26723
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label173'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 34396
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Laboratorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 34660
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombre del Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 78317
        mmTop = 34660
        mmWidth = 57415
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Facturado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 143669
        mmTop = 34661
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Neto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 186690
        mmTop = 34660
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 14023
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 19315
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 23283
        mmTop = 8731
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sucursal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 34660
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 163798
        mmTop = 34660
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Pagado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 200025
        mmTop = 34661
        mmWidth = 20828
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '% Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 225854
        mmTop = 34661
        mmWidth = 21632
        BandType = 0
      end
    end
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText219: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 794
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText218: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Muestrano'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 54769
        mmTop = 794
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombrePaciente'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 76994
        mmTop = 794
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText226: TppDBText
        UserName = 'LbNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bruto'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 143404
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText228: TppDBText
        UserName = 'LbPagado'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descuento'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 794
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Sucursal'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 795
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'LbPagado1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Neto'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 183886
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 202936
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GrupoDescuentoTotal'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 228600
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel257: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 2910
        mmWidth = 40746
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EntradaID'
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 3175
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bruto'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 143669
        mmTop = 2910
        mmWidth = 16933
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descuento'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 2910
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Neto'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 184415
        mmTop = 2911
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 203730
        mmTop = 2910
        mmWidth = 15346
        BandType = 7
      end
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano,' +
        ' e.Pacienteid,e.NombrePaciente ,e.userid as UsuarioID, '
      '    (Select Empresa from PtParametro) as TituloEmpresa,'
      '    s.Nombre,isnull(d.Descripcion,'#39#39') as Descripcion,'
      
        '   e.Neto,e.Tasa,e.Subtotal,e.GastosVarios as TotalEnvio,e.Total' +
        'Pagado,'
      '    isnull(d.Comentario ,'#39#39') as Analisis'
      
        '  from ptentradapaciente e Left outer join ptentradapacientedeta' +
        'lle d '
      '  on d.refrecid = e.recid '
      '  Inner Join ptsucursal s  '
      '  on e.SucursalID=s.SucursalID '
      '  Where e.factexterior='#39'1'#39'  '
      '  and e.fecha between '#39'20091001'#39' and '#39'20091031'#39
      '  and e.Dataareaid='#39'ldr'#39
      'and isnull(d.Comentario ,'#39#39')<> '#39#39)
    Left = 40
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 75
  end
  object JvReporte: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Sucursal'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Fecha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EntradaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Muestrano'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NombrePaciente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Descuento'
        DataType = ftCurrency
      end
      item
        Name = 'TotalPagado'
        DataType = ftCurrency
      end
      item
        Name = 'GrupoDescuentoTotal'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Neto'
        DataType = ftCurrency
      end
      item
        Name = 'Bruto'
        DataType = ftCurrency
      end
      item
        Name = 'Oficial'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Asegurado'
        DataType = ftInteger
      end
      item
        Name = 'No_Asegurado'
        DataType = ftInteger
      end
      item
        Name = 'Total'
        DataType = ftInteger
      end>
    Left = 160
    object JvReporteSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 70
    end
    object JvReporteFecha: TStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object JvReporteEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object JvReporteMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvReporteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object JvReporteDescuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object JvReporteTotalPagado: TCurrencyField
      FieldName = 'TotalPagado'
    end
    object JvReporteGrupoDescuentoTotal: TStringField
      FieldName = 'GrupoDescuentoTotal'
    end
    object JvReporteNeto: TCurrencyField
      FieldName = 'Neto'
    end
    object JvReporteBruto: TCurrencyField
      FieldName = 'Bruto'
    end
    object JvReporteOficial: TStringField
      FieldName = 'Oficial'
      Size = 80
    end
    object JvReporteAsegurado: TIntegerField
      FieldName = 'Asegurado'
    end
    object JvReporteNo_Asegurado: TIntegerField
      FieldName = 'No_Asegurado'
    end
    object JvReporteTotal: TIntegerField
      FieldName = 'Total'
    end
  end
  object dsReporteJ: TDataSource
    DataSet = JvReporte
    Left = 208
  end
  object ppReporteLR2000: TppDBPipeline
    DataSource = dsReporteJ
    UserName = 'ppReporteLR2000'
    Left = 115
    object ppReporteLR2000ppField1: TppField
      FieldAlias = 'Sucursal'
      FieldName = 'Sucursal'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppReporteLR2000ppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppReporteLR2000ppField3: TppField
      FieldAlias = 'EntradaID'
      FieldName = 'EntradaID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppReporteLR2000ppField4: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppReporteLR2000ppField5: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object ppReporteLR2000ppField6: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppReporteLR2000ppField7: TppField
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object ppReporteLR2000ppField8: TppField
      FieldAlias = 'GrupoDescuentoTotal'
      FieldName = 'GrupoDescuentoTotal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppReporteLR2000ppField9: TppField
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object ppReporteLR2000ppField10: TppField
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object ppReporteLR2000ppField11: TppField
      FieldAlias = 'Oficial'
      FieldName = 'Oficial'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
    object ppReporteLR2000ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Asegurado'
      FieldName = 'Asegurado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppReporteLR2000ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'No_Asegurado'
      FieldName = 'No_Asegurado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppReporteLR2000ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
  end
  object ppListadoProductividad: TppReport
    AutoStop = False
    DataPipeline = ppReporteLR2000
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1
    Top = 58
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteLR2000'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 8730
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 168540
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 183621
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 183621
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 168275
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 168540
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 183621
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        mmHeight = 11906
        mmLeft = 265
        mmTop = 26723
        mmWidth = 200819
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Asegurado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 34660
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No Asegurado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 142346
        mmTop = 34660
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 34660
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Oficial de Servicio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 34660
        mmWidth = 90488
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 23019
        mmTop = 8467
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 13758
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 85990
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5291
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Asegurado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3429
        mmLeft = 120386
        mmTop = 794
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'LbNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Total'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 180711
        mmTop = 794
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Oficial'
        DataPipeline = ppReporteLR2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 794
        mmWidth = 89959
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'No_Asegurado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 149225
        mmTop = 794
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resumen General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 35719
        mmTop = 2910
        mmWidth = 27051
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EntradaID'
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 76994
        mmTop = 3175
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Asegurado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 120650
        mmTop = 3175
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'No_Asegurado'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 149225
        mmTop = 3175
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Total'
        DataPipeline = ppReporteLR2000
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteLR2000'
        mmHeight = 3440
        mmLeft = 180711
        mmTop = 3175
        mmWidth = 14288
        BandType = 7
      end
    end
  end
end
