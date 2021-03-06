unit DatosRoles;

interface     

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxGridLnk, JvComponent,
  JvFormPlacement, dxLayoutControl, {dxCore,}  cxMRUEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxCheckBox,
  cxDBEdit, cxImageComboBox, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ADODB, dxPScxCommon, JvStringHolder, Menus, StdActns,
  ActnList, JvSpeedButton, RzLabel, RzBckgnd, ExtCtrls, JvExControls,
  JvEnterTab, ABSMain, JvComponentBase, cxintl;

type
  TfrmDatosRoles = class(TfrmDatosModule)
    qrRoles: TADOQuery;
    qrRolesRolID: TSmallintField;
    qrRolesDescripcion: TStringField;
    qrRolesAdministrador: TBooleanField;
    tvDatosRolID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosAdministrador: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    sqlInsertaPermisos: TADOQuery;
    sqlDeletePermisos: TADOQuery;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem4: TdxLayoutItem;
    qrRolesDesarrollador: TBooleanField;
    tvDatosDesarrollador: TcxGridDBColumn;
    lcDatosItem5: TdxLayoutItem;
    lcDatosItem6: TdxLayoutItem;
    lcDatosItem7: TdxLayoutItem;
    lcDatosItem8: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosGroup5: TdxLayoutGroup;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    lcDatosGroup6: TdxLayoutGroup;
    lcDatosGroup8: TdxLayoutGroup;
    lcDatosGroup9: TdxLayoutGroup;
    lcDatosItem9: TdxLayoutItem;
    lcDatosItem10: TdxLayoutItem;
    lcDatosItem11: TdxLayoutItem;
    lcDatosItem12: TdxLayoutItem;
    lcDatosItem13: TdxLayoutItem;
    lcDatosItem14: TdxLayoutItem;
    lcDatosItem15: TdxLayoutItem;
    lcDatosItem16: TdxLayoutItem;
    lcDatosItem17: TdxLayoutItem;
    lcDatosGroup10: TdxLayoutGroup;
    lcDatosItem18: TdxLayoutItem;
    lcDatosGroup11: TdxLayoutGroup;
    lcDatosItem19: TdxLayoutItem;
    lcDatosGroup12: TdxLayoutGroup;
    lcDatosItem20: TdxLayoutItem;
    lcDatosGroup13: TdxLayoutGroup;
    lcDatosItem21: TdxLayoutItem;
    lcDatosItem22: TdxLayoutItem;
    lcDatosItem23: TdxLayoutItem;
    lcDatosItem24: TdxLayoutItem;
    lcDatosGroup14: TdxLayoutGroup;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    lcDatosItem25: TdxLayoutItem;
    lcDatosGroup7: TdxLayoutGroup;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    qrRolesVisualizar_Pantalla: TBooleanField;
    qrRolesCrea_Entrada: TBooleanField;
    qrRolesCrea_Cotizacion: TBooleanField;
    qrRolesAplica_Pagos: TBooleanField;
    qrRolesPago_Efectivo: TBooleanField;
    qrRolesPago_TC: TBooleanField;
    qrRolesPago_TD: TBooleanField;
    qrRolesPago_CK: TBooleanField;
    qrRolesCliente_Seguro: TBooleanField;
    qrRolesCliente_PlanSocial: TBooleanField;
    qrRolesCliente_Privado: TBooleanField;
    qrRolesCliente_VIP: TBooleanField;
    qrRolesCliente_Funcionario: TBooleanField;
    qrRolesCliente_CAP: TBooleanField;
    qrRolesCliente_Laboratorio: TBooleanField;
    qrRolesCliente_Clinica: TBooleanField;
    qrRolesCliente_Proyectos: TBooleanField;
    qrRolesCliente_Accionistas: TBooleanField;
    qrRolesCliente_OtrasCXC: TBooleanField;
    qrRolesCliente_Exterior: TBooleanField;
    qrRolesCliente_PlanCia: TBooleanField;
    lcDatosItem26: TdxLayoutItem;
    cxDBCheckBox24: TcxDBCheckBox;
    qrRolesNota_Credito: TBooleanField;
    qrRolesPago_US: TBooleanField;
    qrRolesAct_Laboratorio: TBooleanField;
    qrRolesControl_Tiempo: TBooleanField;
    qrRolesImp_Paciente_Indicacion: TBooleanField;
    lcDatosItem27: TdxLayoutItem;
    lcDatosItem28: TdxLayoutItem;
    lcDatosItem29: TdxLayoutItem;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    lcDatosItem30: TdxLayoutItem;
    cxDBCheckBox28: TcxDBCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure qrRolesBeforePost(DataSet: TDataSet);
    procedure qrRolesAfterPost(DataSet: TDataSet);
    procedure qrRolesBeforeDelete(DataSet: TDataSet);
    procedure qrRolesAfterDelete(DataSet: TDataSet);
    procedure qrRolesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    bUpdateRol : Boolean;
  public
    { Public declarations }
  end;

var
  frmDatosRoles: TfrmDatosRoles;

implementation

uses DataModule, OpcionesPermisos, Main;

{$R *.dfm}

procedure TfrmDatosRoles.cxButton1Click(Sender: TObject);
var
  frm : TCustomForm;
begin
  inherited;
  try
    LockWindowUpdate(frmMain.Handle);
    frm := TfrmOpcionesPermisos.Create(Self);
    TfrmOpcionesPermisos(frm).ShowRol( qrRolesRolID.Value );
    frmMain.ShowForm(frm);
  finally
    LockWindowUpdate(0);
    RedrawWindow(frmMain.Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

procedure TfrmDatosRoles.qrRolesBeforePost(DataSet: TDataSet);
begin
  inherited;
  bUpdateRol := ( DataSet.State = dsInsert );
end;

procedure TfrmDatosRoles.qrRolesAfterPost(DataSet: TDataSet);
begin
  inherited;
  (*
  if bUpdateRol then begin
    //sqlInsertaPermisos.UnPrepare;
    sqlInsertaPermisos.SQL.Text := 'INSERT INTO SysPermisos( RolId, OpcionID, Nivel ) ' +
                                   'SELECT ' + IntToStr(qrRolesRolID.Value) + ', OpcionID, -1 ' +
                                   '  FROM SysMenu';
    sqlInsertaPermisos.ExecSQL;
  end;
  *)
end;

procedure TfrmDatosRoles.qrRolesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //sqlDeletePermisos.UnPrepare;
  sqlDeletePermisos.Parameters.ParamByName('pRol').Value := qrRolesRolID.Value;
end;

procedure TfrmDatosRoles.qrRolesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  sqlDeletePermisos.ExecSQL;
end;

procedure TfrmDatosRoles.qrRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrRolesAdministrador.Value := False;
end;

end.
