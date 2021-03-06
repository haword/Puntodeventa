unit DialogConsultaPruebasCap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxintl;

type
  TfrmDialogConsultaPruebasCap = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosPrecioDolares: TcxGridDBColumn;
    qrPruebas: TADOQuery;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasTIPOMUESTRA: TStringField;
    qrPruebasRECID: TLargeintField;
    procedure edbuscarExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPruebasCap: TfrmDialogConsultaPruebasCap;
  adentrogrid : Boolean;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDialogConsultaPruebasCap.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  frmMain.frmCap.qrEntradaPacienteDetalle.Insert;
  frmMain.frmCap.qrEntradaPacienteDetalleRefRecid.Value := frmMain.frmTmp.qrEntradaPacienteRECID.Value;
  frmMain.frmCap.qrEntradaPacienteDetalleSecuencia.Value := frmMain.frmTmp.MaxSecuenciaLinea;
  frmMain.frmCap.qrEntradaPacienteDetalleRECID.Value := frmMain.frmTmp.GetSecuenciaId;
  frmMain.frmCap.qrEntradaPacienteDetalleMuestraNo.Value := frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value;
  frmMain.frmCap.qrEntradaPacienteDetalleDATAAREAID.Value := frmMain.frmTmp.qrEntradaPacienteDATAAREAID.Value;
  frmMain.frmCap.qrEntradaPacienteDetallePruebaID.Value := qrPruebasPruebaID.Value;
  frmMain.frmCap.qrEntradaPacienteDetalle.Post;
 end;
end;

procedure TfrmDialogConsultaPruebasCap.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTPrueba WHERE IsNull(PruebaID,'+#39+#39+')<>'+#39+#39;

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND PruebaID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Descripcion LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
 sqlString := sqlString + ' ORDER BY PruebaID ';

 qrPruebas.Close;
 qrPruebas.SQL.Text := sqlString;
 qrPruebas.Open;
end;

procedure TfrmDialogConsultaPruebasCap.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebasCap.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebasCap.edbuscarExit(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCap.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCap.FormCreate(Sender: TObject);
begin
  inherited;
  qrPruebas.Close;
  qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCap.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (AdentroGrid) then
  begin
   Close;
   ModalResult := mrOk;
  end;

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogConsultaPruebasCap.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

end.
