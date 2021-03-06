unit DatosCodigosCup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxintl;

type
  TfrmDatosCodigosCup = class(TfrmDatosModule)
    qrCodigosCup: TADOQuery;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdPrueba: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    CbEstatus: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    EdClienteId: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    btClientes: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdCodigoCup: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    EdNombreAseguradora: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    EdDescripcionCup: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    tvDatosCodigoCupID: TcxGridDBColumn;
    tvDatosNombreCliente: TcxGridDBColumn;
    qrCodigosCupPRUEBAID: TStringField;
    qrCodigosCupDESCRIPCION: TStringField;
    qrCodigosCupNOMBRECLIENTE: TStringField;
    qrCodigosCupCLIENTEID: TStringField;
    qrCodigosCupCODIGOCUPID: TStringField;
    qrCodigosCupDESCRIPCIONCUP: TStringField;
    qrCodigosCupESTATUS: TIntegerField;
    qrCodigosCupREFRECID: TIntegerField;
    qrCodigosCupDATAAREAID: TStringField;
    qrCodigosCupRECID: TLargeintField;
    qrCodigosCupCODIGOAXAPTA: TStringField;
    tvDatosColumn1: TcxGridDBColumn;
    procedure btClientesClick(Sender: TObject);
    procedure qrCodigosCupNewRecord(DataSet: TDataSet);
    procedure qrCodigosCupBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    pruebaId : String;

    procedure BuscarData(prueba: string);
    { Public declarations }
  end;

var
  frmDatosCodigosCup: TfrmDatosCodigosCup;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosCodigosCup.btClientesClick(Sender: TObject);
begin
  inherited;
  if (qrCodigosCup.State = dsInsert) or (qrCodigosCup.State = dsEdit) then
    Begin
      frmMain.LanzaVentana(-8008);
    end
  else
//    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;

procedure TfrmDatosCodigosCup.FormCreate(Sender: TObject);
begin
  inherited;
    DM.qrClientes.Close;
    DM.qrClientes.Open;
end;

procedure TfrmDatosCodigosCup.qrCodigosCupBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrCodigosCup.State = dsInsert) or (qrCodigosCup.State = dsEdit) then
   qrCodigosCupPruebaID.Value := pruebaId;
end;

procedure TfrmDatosCodigosCup.qrCodigosCupNewRecord(DataSet: TDataSet);
Var RecId: Int64;
Var
  qfind : TADOQuery;
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;
  RecId := DM.qrParametroSecuencia.Value;
  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;
  qrCodigosCupRECID.Value := RecId;
  qrCodigosCupREFRECID.Value := RecId;
  qrCodigosCupDATAAREAID.Value := DM.CurEmpresa;
  btClientes.Click;
  qrCodigosCupPruebaID.Value := pruebaId;
  qrCodigosCupEstatus.Value := 1;
  qfind := DM.find('Select * from PTPrueba where PruebaID = :pru', qrCodigosCupPruebaID.Value);
  qrCodigosCupDescripcion.Value := qfind.FieldByName('Descripcion').AsString;
  qrCodigosCupDescripcionCup.Value := qfind.FieldByName('Descripcion').AsString;

  AutoKeyField := 'PruebaID';
  AutoKeyField := 'ClienteID';
  AutoKeyField := 'CodigoCupID';
  AutoKeyField := 'DescripcionCup';
  AutoKeyField := 'NombreCliente';

  FreeAndNil(qfind);
end;


procedure TfrmDatosCodigosCup.BuscarData(prueba: string);
begin
 qrCodigosCup.Close;
 qrCodigosCup.Parameters[0].Value := prueba;
 qrCodigosCup.Open;

 pruebaId := prueba;
end;


end.

