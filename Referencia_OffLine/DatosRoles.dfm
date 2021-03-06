inherited frmDatosRoles: TfrmDatosRoles
  Left = 471
  Top = 202
  Caption = 'Roles de Usuario'
  ClientHeight = 450
  ClientWidth = 703
  ExplicitWidth = 719
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 703
    Height = 417
    ExplicitWidth = 623
    ExplicitHeight = 409
    inherited pcDatos: TcxPageControl
      Width = 518
      Height = 299
      ExplicitWidth = 518
      ExplicitHeight = 299
      ClientRectBottom = 299
      ClientRectRight = 518
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 518
        ExplicitHeight = 275
        inherited lcGrid: TdxLayoutControl
          Width = 518
          Height = 275
          ExplicitWidth = 518
          ExplicitHeight = 275
          inherited dgDatos: TcxGrid
            Width = 574
            Height = 229
            ExplicitWidth = 574
            ExplicitHeight = 229
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'RolID'
              object tvDatosRolID: TcxGridDBColumn
                Caption = 'Rol'
                DataBinding.FieldName = 'RolID'
                Width = 51
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 273
              end
              object tvDatosAdministrador: TcxGridDBColumn
                DataBinding.FieldName = 'Administrador'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 155
              end
              object tvDatosDesarrollador: TcxGridDBColumn
                DataBinding.FieldName = 'Desarrollador'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 518
        ExplicitHeight = 275
        inherited lcDatos: TdxLayoutControl
          Width = 518
          Height = 275
          ExplicitWidth = 518
          ExplicitHeight = 275
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 155
            Top = 36
            DataBinding.DataField = 'RolID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 74
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 155
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [2]
            Left = 155
            Top = 122
            DataBinding.DataField = 'Administrador'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 25
          end
          object cxDBCheckBox2: TcxDBCheckBox [3]
            Left = 155
            Top = 149
            DataBinding.DataField = 'Desarrollador'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 25
          end
          object cxDBCheckBox3: TcxDBCheckBox [4]
            Left = 155
            Top = 176
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Desarrollador'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 25
          end
          object cxDBCheckBox4: TcxDBCheckBox [5]
            Left = 276
            Top = 122
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Crea_Entrada'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 25
          end
          object cxDBCheckBox5: TcxDBCheckBox [6]
            Left = 276
            Top = 149
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Crea_Cotizacion'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 25
          end
          object cxDBCheckBox6: TcxDBCheckBox [7]
            Left = 276
            Top = 176
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Aplica_Pagos'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 25
          end
          object cxDBCheckBox7: TcxDBCheckBox [8]
            Left = 124
            Top = 228
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Pago_Efectivo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 25
          end
          object cxDBCheckBox8: TcxDBCheckBox [9]
            Left = 124
            Top = 255
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Pago_TC'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 25
          end
          object cxDBCheckBox9: TcxDBCheckBox [10]
            Left = 124
            Top = 282
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Pago_TC'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 25
          end
          object cxDBCheckBox10: TcxDBCheckBox [11]
            Left = 124
            Top = 309
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Pago_CK'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 25
          end
          object cxDBCheckBox11: TcxDBCheckBox [12]
            Left = 244
            Top = 228
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Seguro'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 25
          end
          object cxDBCheckBox12: TcxDBCheckBox [13]
            Left = 244
            Top = 255
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_PlanSocial'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 25
          end
          object cxDBCheckBox13: TcxDBCheckBox [14]
            Left = 244
            Top = 282
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Privado'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            Width = 25
          end
          object cxDBCheckBox14: TcxDBCheckBox [15]
            Left = 244
            Top = 309
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_VIP'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 26
            Width = 25
          end
          object cxDBCheckBox15: TcxDBCheckBox [16]
            Left = 244
            Top = 336
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Funcionario'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 27
            Width = 25
          end
          object cxDBCheckBox16: TcxDBCheckBox [17]
            Left = 338
            Top = 228
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_CAP'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 25
          end
          object cxDBCheckBox17: TcxDBCheckBox [18]
            Left = 338
            Top = 255
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Laboratorio'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 25
          end
          object cxDBCheckBox18: TcxDBCheckBox [19]
            Left = 338
            Top = 282
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Clinica'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 25
          end
          object cxDBCheckBox19: TcxDBCheckBox [20]
            Left = 338
            Top = 309
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_PlanCia'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 28
            Width = 25
          end
          object cxDBCheckBox20: TcxDBCheckBox [21]
            Left = 451
            Top = 228
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Proyectos'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 19
            Width = 25
          end
          object cxDBCheckBox21: TcxDBCheckBox [22]
            Left = 451
            Top = 255
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Accionistas'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 25
          end
          object cxDBCheckBox22: TcxDBCheckBox [23]
            Left = 451
            Top = 282
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_OtrasCXC'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 25
            Width = 25
          end
          object cxDBCheckBox23: TcxDBCheckBox [24]
            Left = 451
            Top = 309
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Cliente_Exterior'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 29
            Width = 25
          end
          object cxDBCheckBox24: TcxDBCheckBox [25]
            Left = 124
            Top = 336
            AutoSize = False
            DataBinding.DataField = 'Pago_US'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Height = 21
            Width = 25
          end
          object cxDBCheckBox25: TcxDBCheckBox [26]
            Left = 411
            Top = 122
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Nota_Credito'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 25
          end
          object cxDBCheckBox26: TcxDBCheckBox [27]
            Left = 411
            Top = 149
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Act_Laboratorio'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 25
          end
          object cxDBCheckBox27: TcxDBCheckBox [28]
            Left = 411
            Top = 176
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Control_Tiempo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 25
          end
          object cxDBCheckBox28: TcxDBCheckBox [29]
            Left = 544
            Top = 122
            Caption = 'Visualizar Pantalla'
            DataBinding.DataField = 'Control_Tiempo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 25
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Rol'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Opciones'
              object lcDatosGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Administrador'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem6: TdxLayoutItem
                  Caption = 'Crea Entradas'
                  Control = cxDBCheckBox4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem27: TdxLayoutItem
                  Caption = 'Crea Nota de Cr'#233'dito'
                  Control = cxDBCheckBox25
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem30: TdxLayoutItem
                  Caption = 'Imp. Pac. Indicaci'#243'n'
                  Control = cxDBCheckBox28
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Herramientas de Desarrollo'
                  Control = cxDBCheckBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem7: TdxLayoutItem
                  Caption = 'Crea Cotizaciones'
                  Control = cxDBCheckBox5
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem28: TdxLayoutItem
                  Caption = 'Act. Laboratorio'
                  Control = cxDBCheckBox26
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosGroup14: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Visualiza Pantalla Fact-NC'
                    Control = cxDBCheckBox3
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem8: TdxLayoutItem
                    Caption = 'Aplica Pagos'
                    Control = cxDBCheckBox6
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem29: TdxLayoutItem
                    Caption = 'Control Tiempo'
                    Control = cxDBCheckBox27
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosGroup9: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGroup6: TdxLayoutGroup
                    Caption = 'Tipos de Pagos'
                    object lcDatosItem10: TdxLayoutItem
                      Caption = 'Efectivo'
                      Control = cxDBCheckBox7
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem9: TdxLayoutItem
                      Caption = 'Tarjeta de Cr'#233'dito'
                      Control = cxDBCheckBox8
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem11: TdxLayoutItem
                      Caption = 'Tarjeta de D'#233'bito'
                      Control = cxDBCheckBox9
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem12: TdxLayoutItem
                      Caption = 'Cheque'
                      Control = cxDBCheckBox10
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem26: TdxLayoutItem
                      Caption = 'Cash'
                      Control = cxDBCheckBox24
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcDatosGroup8: TdxLayoutGroup
                    Caption = 'Tipos de Cliente'
                    object lcDatosGroup10: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object lcDatosItem13: TdxLayoutItem
                        Caption = 'Seguro'
                        Control = cxDBCheckBox11
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem17: TdxLayoutItem
                        Caption = 'CAP'
                        Control = cxDBCheckBox16
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem21: TdxLayoutItem
                        Caption = 'Proyectos'
                        Control = cxDBCheckBox20
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosGroup11: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object lcDatosItem14: TdxLayoutItem
                        Caption = 'Plan Social'
                        Control = cxDBCheckBox12
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem18: TdxLayoutItem
                        Caption = 'Laboratorios'
                        Control = cxDBCheckBox17
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem22: TdxLayoutItem
                        Caption = 'Accionistas'
                        Control = cxDBCheckBox21
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosGroup12: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object lcDatosItem15: TdxLayoutItem
                        Caption = 'Ambulatorio'
                        Control = cxDBCheckBox13
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem19: TdxLayoutItem
                        Caption = 'Clinica A.'
                        Control = cxDBCheckBox18
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem23: TdxLayoutItem
                        Caption = 'Otras CXC'
                        Control = cxDBCheckBox22
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object lcDatosGroup13: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object lcDatosGroup7: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object lcDatosItem16: TdxLayoutItem
                          Caption = 'VIP Cortesia'
                          Control = cxDBCheckBox14
                          ControlOptions.ShowBorder = False
                        end
                        object lcDatosItem25: TdxLayoutItem
                          Caption = 'Funcionarios'
                          Control = cxDBCheckBox15
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object lcDatosItem20: TdxLayoutItem
                        Caption = 'Plan Cia'
                        Control = cxDBCheckBox19
                        ControlOptions.ShowBorder = False
                      end
                      object lcDatosItem24: TdxLayoutItem
                        Caption = 'Pruebas del Ext.'
                        Control = cxDBCheckBox23
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 616
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Permisos'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 703
    ExplicitWidth = 623
  end
  inherited formStorage: TJvFormStorage
    Left = 560
    Top = 190
  end
  inherited dsDatos: TDataSource
    DataSet = qrRoles
    Left = 540
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 300
    Top = 0
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38064.592049016200000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38498.627694027780000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 208
    Top = 65532
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 592
    Top = 60
  end
  inherited SaveDialog: TSaveDialog
    Left = 553
    Top = 160
  end
  inherited qryHelper: TADOQuery
    Left = 580
  end
  inherited alEdit: TActionList
    Left = 540
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 552
    Top = 124
  end
  inherited qrDefaultView: TADOQuery
    Left = 596
    Top = 227
  end
  inherited strView: TJvStrHolder
    Left = 580
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 592
    Top = 260
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 240
    Top = 65532
  end
  inherited qrUserFields: TABSQuery
    Left = 560
    Top = 260
  end
  inherited qrVistas: TABSQuery
    Left = 591
    Top = 191
  end
  inherited cxIntl1: TcxIntl
    Left = 528
    Top = 128
  end
  object qrRoles: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrRolesBeforePost
    AfterPost = qrRolesAfterPost
    BeforeDelete = qrRolesBeforeDelete
    AfterDelete = qrRolesAfterDelete
    OnNewRecord = qrRolesNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from SysRoles')
    Left = 560
    Top = 223
    object qrRolesRolID: TSmallintField
      FieldName = 'RolID'
      Origin = 'SysRoles.RolID'
      Required = True
    end
    object qrRolesDescripcion: TStringField
      FieldName = 'Descripcion'
      Origin = 'SysRoles.Descripcion'
      FixedChar = True
    end
    object qrRolesAdministrador: TBooleanField
      FieldName = 'Administrador'
      Origin = 'SysRoles.Administrador'
      Required = True
    end
    object qrRolesDesarrollador: TBooleanField
      FieldName = 'Desarrollador'
    end
    object qrRolesVisualizar_Pantalla: TBooleanField
      FieldName = 'Visualizar_Pantalla'
    end
    object qrRolesCrea_Entrada: TBooleanField
      FieldName = 'Crea_Entrada'
    end
    object qrRolesCrea_Cotizacion: TBooleanField
      FieldName = 'Crea_Cotizacion'
    end
    object qrRolesAplica_Pagos: TBooleanField
      FieldName = 'Aplica_Pagos'
    end
    object qrRolesPago_Efectivo: TBooleanField
      FieldName = 'Pago_Efectivo'
    end
    object qrRolesPago_TC: TBooleanField
      FieldName = 'Pago_TC'
    end
    object qrRolesPago_TD: TBooleanField
      FieldName = 'Pago_TD'
    end
    object qrRolesPago_CK: TBooleanField
      FieldName = 'Pago_CK'
    end
    object qrRolesCliente_Seguro: TBooleanField
      FieldName = 'Cliente_Seguro'
    end
    object qrRolesCliente_PlanSocial: TBooleanField
      FieldName = 'Cliente_PlanSocial'
    end
    object qrRolesCliente_Privado: TBooleanField
      FieldName = 'Cliente_Privado'
    end
    object qrRolesCliente_VIP: TBooleanField
      FieldName = 'Cliente_VIP'
    end
    object qrRolesCliente_Funcionario: TBooleanField
      FieldName = 'Cliente_Funcionario'
    end
    object qrRolesCliente_CAP: TBooleanField
      FieldName = 'Cliente_CAP'
    end
    object qrRolesCliente_Laboratorio: TBooleanField
      FieldName = 'Cliente_Laboratorio'
    end
    object qrRolesCliente_Clinica: TBooleanField
      FieldName = 'Cliente_Clinica'
    end
    object qrRolesCliente_Proyectos: TBooleanField
      FieldName = 'Cliente_Proyectos'
    end
    object qrRolesCliente_Accionistas: TBooleanField
      FieldName = 'Cliente_Accionistas'
    end
    object qrRolesCliente_OtrasCXC: TBooleanField
      FieldName = 'Cliente_OtrasCXC'
    end
    object qrRolesCliente_Exterior: TBooleanField
      FieldName = 'Cliente_Exterior'
    end
    object qrRolesCliente_PlanCia: TBooleanField
      FieldName = 'Cliente_PlanCia'
    end
    object qrRolesNota_Credito: TBooleanField
      FieldName = 'Nota_Credito'
    end
    object qrRolesPago_US: TBooleanField
      FieldName = 'Pago_US'
    end
    object qrRolesAct_Laboratorio: TBooleanField
      FieldName = 'Act_Laboratorio'
    end
    object qrRolesControl_Tiempo: TBooleanField
      FieldName = 'Control_Tiempo'
    end
    object qrRolesImp_Paciente_Indicacion: TBooleanField
      FieldName = 'Imp_Paciente_Indicacion'
    end
  end
  object sqlInsertaPermisos: TADOQuery
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'pRol'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO'
      '   SysPermisos( RolId, OpcionID, Nivel )'
      'SELECT :pRol, ObjectID, -1'
      '  FROM SysMenu ')
    Left = 588
    Top = 123
  end
  object sqlDeletePermisos: TADOQuery
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'pRol'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM SysPermisos'
      ' WHERE RolId = :pRol ')
    Left = 592
    Top = 159
  end
end
