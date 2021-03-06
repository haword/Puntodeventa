inherited frmDatosUserScripts: TfrmDatosUserScripts
  Left = 337
  Top = 105
  Caption = 'Procesos de Usuario'
  ClientHeight = 420
  ClientWidth = 755
  ExplicitWidth = 763
  ExplicitHeight = 454
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvEnterAsTab1: TJvEnterAsTab
    EnterAsTab = False
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 755
    Height = 387
    ExplicitWidth = 755
    ExplicitHeight = 387
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
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
            Height = 279
            ExplicitWidth = 550
            ExplicitHeight = 279
            inherited tvDatos: TcxGridDBTableView
              object tvDatosProcesoId: TcxGridDBColumn
                Caption = 'Proceso'
                DataBinding.FieldName = 'ProcesoId'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBMaskEdit1: TcxDBMaskEdit [0]
            Left = 84
            Top = 36
            DataBinding.DataField = 'ProcesoId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit1: TcxDBTextEdit [1]
            Left = 84
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object SyntaxMemo: TAdvMemo [2]
            Left = 24
            Top = 123
            Width = 350
            Height = 250
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'MS Sans Serif'
            AutoCompletion.Font.Style = []
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BorderStyle = bsNone
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.DigitCount = 4
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
            TabOrder = 2
            TabSize = 4
            TabStop = True
            TrimTrailingSpaces = False
            UndoLimit = 100
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '1.7.0.0'
            WordWrap = wwNone
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Proceso'
                Control = cxDBMaskEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'C'#243'digo del Script'
              LayoutDirection = ldHorizontal
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Control = SyntaxMemo
              end
            end
          end
        end
      end
    end
    object cxbEjecutar: TcxButton [1]
      Left = 668
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Ejecutar'
      TabOrder = 1
      OnClick = Ejecutar1Click
      Glyph.Data = {
        DE030000424DDE03000000000000DE0200002800000010000000100000000100
        08000000000000010000120B0000120B0000AA000000AA00000000000000FFFF
        FF00FF00FF00FFFEFE0067343200663332006634320068343100683532006935
        31006B3630006D372F0072392D0071392E00733A2C007D3F2900804026007E40
        27007C3F2800844224008242250081412500964E2100984C1900A7541500A351
        1600A3531700C85B0000C85C0000B35A0E00B1590F00AF580F00AE581000AF5A
        1200A9551200A8551300A5531300A8551400AC591600B3611B00B2611F00A95B
        1E00C9610000CA600100C9600500C5630700C4620700B75B0800B65B0900CB67
        0F00B45C0D00B35A0D00B15A0E00B0590E00CD6B1100B9611000B35D1100CE6E
        1700CE6D1800C26E2200D5853B00C2793800D98D4A00FBEBDC00FBF2EA00D66B
        0000D66C0000D56B0000D46B0000D36A0000D2690000D1690000D0690000CE67
        0000CE680000CD670000CB630000CB640000CB650000CA620000CB660100CA64
        0100D26B0200CD660200CC680200CB660200CA660200CB670300CD680400CF69
        0500C2610500C5640600CD6B0800D3710C00BF630B00D2741400D1731400D175
        1800D2761900D1761900CF721900C36C1A00D9822A00D9832C00DA852F00DF89
        3100E1903F00E1934300DC914800DA914900DD954D00E9A05600E8A05600E8A2
        5A00E4A25E00F1AD6900EBAB6900DE9F6300F0AF6D00E6A76900F0B17100E6AB
        6F00ECB17500DEA56E00E2A87100F6BB7F00E7B68400EABF9300ECC29700EAC1
        9700EAC09800F9D1A800F3CCA500F8D1A900F0CBA600EDCCAA00FAD8B700FAD9
        B700F2D9C000F5DFC900F6E2CF00FAE9D800FBEFE300FDF2E700D1731100D87C
        1C00D87D1E00D9802400DA832900DC8B3600E1913E00E19B5100E6A35D00E7AE
        7200F9BE8100F8C18600ECBA8600FED6AB00F5CEA500F8DBBC00FBDFC200FDE4
        CA00FBE3CA00F8E6D300F5E4D200FEEFDF00FEF2E500FCEEDE00FCF3E800FCF6
        EF000202020202060B15150B0402020202020202020C101F5A56552E1E130702
        0202020212254452584C4B49484218090202021420454F3A813C1C4E50504323
        0502021746545136A4403E1B4E5050411502225E5D6090628B01A97C2B2A5047
        1D093561936794688C01010182312A4A5B0938956B6A966BA3010101018A644D
        530A37727A706F718D0101010187394E530E34779E7873763F0101037E2C2A4A
        2D08326EA0839A7DA701A879594D50471E09026585A59D9B8F8E98925F574E41
        1102022F6CA1A6889F746966635C43190D020202336D89A5A2849C999791240F
        0202020202303B757F86807B3D1612020202020202020221272829261A020202
        0202}
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxbEjecutar
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 755
    ExplicitWidth = 755
  end
  inherited dsDatos: TDataSource
    DataSet = qrUserScripts
    Left = 244
    Top = 299
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 72
    Top = 160
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38498.627896284720000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38498.627896284720000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 504
    Top = 332
  end
  inherited cxGridStyles: TcxStyleRepository
    Top = 228
  end
  inherited strView: TJvStrHolder
    Left = 220
    Top = 120
  end
  inherited strTableNames: TJvStrHolder
    Top = 204
  end
  object fsScript: TfsScript
    SyntaxType = 'PascalScript'
    Left = 300
    Top = 279
  end
  object fsPascal1: TfsPascal
    Left = 348
    Top = 291
  end
  object fsClassesRTTI1: TfsClassesRTTI
    Left = 427
    Top = 285
  end
  object fsGraphicsRTTI1: TfsGraphicsRTTI
    Left = 527
    Top = 277
  end
  object fsFormsRTTI1: TfsFormsRTTI
    Left = 491
    Top = 165
  end
  object fsExtCtrlsRTTI1: TfsExtCtrlsRTTI
    Left = 244
    Top = 239
  end
  object fsDialogsRTTI1: TfsDialogsRTTI
    Left = 184
    Top = 223
  end
  object fsADORTTI1: TfsADORTTI
    Left = 340
    Top = 175
  end
  object pmScript: TPopupMenu
    OnPopup = pmScriptPopup
    Left = 460
    Top = 219
    object Compilar1: TMenuItem
      Caption = 'Compilar'
      OnClick = Compilar1Click
    end
    object Ejecutar1: TMenuItem
      Caption = 'Ejecutar'
      OnClick = Ejecutar1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miImport: TMenuItem
      Caption = 'Importar...'
      OnClick = miImportClick
    end
    object miExport: TMenuItem
      Caption = 'Exportar...'
      OnClick = miExportClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copiar1: TMenuItem
      Action = EditCopy1
    end
    object Cortar1: TMenuItem
      Action = EditCut1
    end
    object SeleccionarTodo1: TMenuItem
      Action = EditSelectAll1
    end
  end
  object SaveDlg: TSaveDialog
    Filter = '*.psc|Pyme Script'
    Title = 'Grabar Script'
    Left = 652
    Top = 76
  end
  object OpenDlg: TOpenDialog
    Filter = '*.psc|Pyme Script'
    Title = 'Abrir Script'
    Left = 652
    Top = 140
  end
  object AdvPascalMemoStyler1: TAdvPascalMemoStyler
    BlockStart = 'begin'
    BlockEnd = 'end'
    LineComment = '//'
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'begin'
          'break'
          'cdecl'
          'class'
          'class'
          'const'
          'constructor'
          'continue'
          'default'
          'destructor'
          'do'
          'else'
          'end'
          'except'
          'finalise'
          'finally'
          'for'
          'function'
          'if'
          'implementation'
          'inherited'
          'initialise'
          'interface'
          'nil'
          'not'
          'override'
          'pascal'
          'private'
          'procedure'
          'program'
          'program'
          'property'
          'protected'
          'public'
          'published'
          'raise'
          'repeat'
          'stdcall'
          'stored'
          'string'
          'then'
          'to'
          'try'
          'type'
          'unit'
          'until'
          'uses'
          'var'
          'virtual'
          'while'
          'with')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'Pascal Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    AutoCompletion.Strings = (
      'ShowMessage'
      'MessageDlg')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintCharWriteDelimiter = ','
    HintParameter.Parameters.Strings = (
      'ShowMessage(const Msg: string);'
      
        'MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMs' +
        'gDlgButtons; HelpCtx: Longint): Integer);')
    HexIdentifier = '$'
    Description = 'Pascal'
    Filter = 'Pascal Files (*.pas,*.dpr,*.dpk,*.inc)|*.pas;*.dpr;*.dpk;*.inc'
    DefaultExtension = '.pas'
    StylerName = 'Pascal'
    Extensions = 'pas;dpr;dpk;inc'
    Left = 672
    Top = 224
  end
  object qrUserScripts: TABSQuery
    CurrentVersion = '6.02 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = True
    BeforePost = qrUserScriptsBeforePost
    AfterScroll = qrUserScriptsAfterScroll
    OnNewRecord = qrUserScriptsNewRecord
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      '  FROM SysProcesos')
    Left = 576
    Top = 88
    object qrUserScriptsProcesoId: TStringField
      FieldName = 'ProcesoId'
      Size = 10
    end
    object qrUserScriptsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object qrUserScriptsScript: TMemoField
      FieldName = 'Script'
      BlobType = ftMemo
    end
  end
end
