unit DatosCombosPruebas;

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
  cxImageComboBox, cxintl;

type
  TfrmDatosCombosPruebas = class(TfrmDatosModule)
    qrPruebas: TADOQuery;
    qrPruebasPruebaID: TStringField;
    qrPruebasAlias: TStringField;
    qrPruebasDescripcion: TStringField;
    qrPruebasEstatus: TIntegerField;
    qrPruebasGrupoPruebaID: TStringField;
    qrPruebasDepartamento: TStringField;
    qrPruebasPrecio: TBCDField;
    qrPruebasCodigoAxapta: TStringField;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosPrecio: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdPrueba: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    EdPrecioRd: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    CbEstatus: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    qrPruebasPrecioDolares: TBCDField;
    EdPrecioUs: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    qrPruebasCosto: TBCDField;
    EdCosto: TcxDBCurrencyEdit;
    lcDatosItem8: TdxLayoutItem;
    qrPruebasExterior: TBooleanField;
    qrPruebasComboID: TStringField;
    qrPruebasPermiteCambioPrecio: TBooleanField;
    tvDatosComboID: TcxGridDBColumn;
    tvDatosPrecioDolares: TcxGridDBColumn;
    tvDatosCosto: TcxGridDBColumn;
    EdComboId: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    BtPruebas: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrPruebasLinea: TIntegerField;
    qrPruebasSexo: TIntegerField;
    CbSexo: TcxDBImageComboBox;
    lcDatosItem5: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    edAlias: TcxDBTextEdit;
    procedure qrPruebasAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtPruebasClick(Sender: TObject);
    procedure qrPruebasNewRecord(DataSet: TDataSet);
    procedure qrPruebasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    comboId : String;

    procedure BuscarData(combo: string);
    procedure ActuCombo;
    { Public declarations }
  end;

var
  frmDatosCombosPruebas: TfrmDatosCombosPruebas;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosCombosPruebas.BtPruebasClick(Sender: TObject);
begin
  inherited;
  if (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
    frmMain.LanzaVentana(-8003)
  else
    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;

procedure TfrmDatosCombosPruebas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ActuCombo;
end;

procedure TfrmDatosCombosPruebas.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

  EdPrueba.Properties.ReadOnly := True;
  EdComboID.Properties.ReadOnly := True;
  EdDescripcion.Properties.ReadOnly := True;
  EdCosto.Properties.ReadOnly := True;
  EdPrecioRd.Properties.ReadOnly := True;
  EdPrecioUs.Properties.ReadOnly := True;
  CbEstatus.Properties.ReadOnly := True;
end;

procedure TfrmDatosCombosPruebas.qrPruebasAfterPost(DataSet: TDataSet);
begin
  inherited;
  ActuCombo;
end;

procedure TfrmDatosCombosPruebas.qrPruebasBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
   qrPruebasComboID.Value := comboId;
end;

procedure TfrmDatosCombosPruebas.qrPruebasNewRecord(DataSet: TDataSet);
begin
  inherited;
  BtPruebas.Click;
  qrPruebasComboID.Value := comboId;
end;


procedure TfrmDatosCombosPruebas.BuscarData(combo: string);
begin
 qrPruebas.Close;
 qrPruebas.Parameters[0].Value := combo;
 qrPruebas.Open;

 comboId := combo;
end;


procedure TfrmDatosCombosPruebas.ActuCombo;
Var
  qtest, qdata, qactu: TADOQuery;
begin
 qtest := DM.Find('SELECT COUNT(PruebaId) AS Pruebas FROM PTCombosPruebas WHERE ComboId = :com', comboId);

 qdata := DM.Find('SELECT SUM(Costo) AS Costo, SUM(Precio) AS Precio, SUM(PrecioDolares) AS PrecioDolares '+
                  'FROM PTCombosPruebas WHERE ComboId = :com', comboId);

 qactu := DM.NewQuery;
 qactu.Close;
 qactu.SQL.Text := 'UPDATE PTPrueba SET '+
                   'Pruebas = '+IntToStr(qtest.FieldByName('Pruebas').AsInteger)+
                   ',Costo = '+CurrToStr(qdata.FieldByName('Costo').AsFloat)+
                   ',Precio = '+CurrToStr(qdata.FieldByName('Precio').AsFloat)+
                   ',PrecioDolares = '+CurrToStr(qdata.FieldByName('PrecioDolares').AsFloat)+
                   ' WHERE PruebaId ='+#39+comboId+#39+
                   ' AND Tipo ='+#39+'C'+#39;
 qactu.ExecSQL;
 FreeAndNil(qactu);
 FreeAndNil(qtest);
 FreeAndNil(qdata);
end;


end.

