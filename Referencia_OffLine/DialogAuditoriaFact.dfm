inherited frmDialogAuditoriaFact: TfrmDialogAuditoriaFact
  Caption = 'Auditoria Factura'
  ClientHeight = 339
  ClientWidth = 637
  ExplicitWidth = 643
  ExplicitHeight = 367
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 637
    Height = 339
    ExplicitWidth = 637
    ExplicitHeight = 339
    inherited btCancelar: TcxButton
      Top = 303
      TabOrder = 5
      ExplicitTop = 303
    end
    inherited btAceptar: TcxButton
      Top = 303
      Enabled = False
      TabOrder = 4
      ExplicitTop = 303
    end
    object edFactura: TcxTextEdit [2]
      Left = 81
      Top = 36
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edComentario: TcxMemo [3]
      Left = 81
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edComentarioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Height = 169
      Width = 533
    end
    object edPaciente: TcxTextEdit [4]
      Left = 255
      Top = 36
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 353
    end
    object chkError: TcxCheckBox [5]
      Left = 23
      Top = 238
      Caption = 'Error cometido por Oficial de Servicio.'
      ParentColor = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clBtnFace
      Style.HotTrack = False
      TabOrder = 3
      Width = 208
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Digite datos Factura a Modificar'
        object lcDialogGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Lab. No.'
            Control = edFactura
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem3: TdxLayoutItem
            Caption = 'Paciente'
            Control = edPaciente
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogItem1: TdxLayoutItem
          Caption = 'Comentario'
          Control = edComentario
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Error cometido por oficial de servicio'
          ShowCaption = False
          Control = chkError
          ControlOptions.ShowBorder = False
        end
      end
    end
    object lcDialogItem5: TdxLayoutItem
      Caption = 'New Item'
    end
  end
  inherited cxIntl1: TcxIntl
    Left = 315
    Top = 1
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 240
  end
end
