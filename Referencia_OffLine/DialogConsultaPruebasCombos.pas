unit DialogConsultaPruebasCombos;

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
  TfrmDialogConsultaPruebasCombos = class(TfrmDialogConsulta)
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
    function  Buscar_Linea: Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPruebasCombos: TfrmDialogConsultaPruebasCombos;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDialogConsultaPruebasCombos.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
   If (qrPruebasTipo.Value = 'C') Then
    Raise exception.CreateFmt('Esta Prueba Es Un Combo. NO Puede Estar Incluida Dentro de Otro Combo.', [])
   Else
    Begin
     frmMain.frmCombo.qrPruebasPruebaID.Value := qrPruebasPruebaID.Value;
     frmMain.frmCombo.qrPruebasAlias.Value := qrPruebasAlias.Value;
     frmMain.frmCombo.qrPruebasDescripcion.Value := qrPruebasDescripcion.Value;
     frmMain.frmCombo.qrPruebasEstatus.Value := qrPruebasEstatus.Value;
     frmMain.frmCombo.qrPruebasGrupoPruebaID.Value := qrPruebasGrupoPruebaID.Value;
     frmMain.frmCombo.qrPruebasDepartamento.Value := qrPruebasDepartamento.Value;
     frmMain.frmCombo.qrPruebasPrecio.Value := qrPruebasPrecio.Value;

     If (qrPruebasPermiteCambioPrecio.Value = 1) Then
       frmMain.frmCombo.qrPruebasPermiteCambioPrecio.Value := True
     Else
       frmMain.frmCombo.qrPruebasPermiteCambioPrecio.Value := False;

     frmMain.frmCombo.qrPruebasCodigoAxapta.Value := qrPruebasCodigoAxapta.Value;
     frmMain.frmCombo.qrPruebasPrecioDolares.Value := qrPruebasPrecioDolares.Value;
     frmMain.frmCombo.qrPruebasCosto.Value := qrPruebasCosto.Value;

     If (qrPruebasExterior.Value = 1) Then
       frmMain.frmCombo.qrPruebasExterior.Value := True
     Else
       frmMain.frmCombo.qrPruebasExterior.Value := False;

     frmMain.frmCombo.qrPruebasLinea.Value := Buscar_Linea();
     frmMain.frmCombo.qrPruebasSexo.Value := 2;     
    End;
  end;
end;

procedure TfrmDialogConsultaPruebasCombos.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebasCombos.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebasCombos.edbuscarExit(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCombos.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCombos.FormCreate(Sender: TObject);
begin
  inherited;
  qrPruebas.Close;
  qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaPruebasCombos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPruebasCombos.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaPruebasCombos.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTPrueba WHERE Tipo NOT LIKE ' + #39 + '%C%' + #39;

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


function TfrmDialogConsultaPruebasCombos.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(linea) FROM PTCombosPruebas ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;

end.
