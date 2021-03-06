unit DialogConsultaDoctores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxintl, cxLabel;

type
  TfrmDialogConsultaDoctores = class(TfrmDialogConsulta)
    dbDatosDoctorId: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    qrDoctores: TADOQuery;
    cxLabel1: TcxLabel;
    dbDatosFAX: TcxGridDBColumn;
    dbDatosTELEFONO2: TcxGridDBColumn;
    qrDoctoresDOCTORID: TStringField;
    qrDoctoresNOMBRE: TStringField;
    qrDoctoresCONTACTO: TStringField;
    qrDoctoresTELEFONO: TStringField;
    qrDoctoresFAX: TStringField;
    qrDoctoresCODIGOAXAPTA: TStringField;
    qrDoctoresEMAIL: TStringField;
    qrDoctoresCELULAR: TStringField;
    qrDoctoresDIRECCION: TStringField;
    qrDoctoresCIUDADID: TStringField;
    qrDoctoresRESULTADODOCTOR: TIntegerField;
    qrDoctoresESPECIALIDADID: TStringField;
    qrDoctoresPUBLICARINTERNET: TIntegerField;
    qrDoctoresCODIGORESULTADO: TStringField;
    qrDoctoresUSUARIOINTERNET: TStringField;
    qrDoctoresCLAVEINTERNET: TStringField;
    qrDoctoresCOMISION: TBCDField;
    qrDoctoresDIRECCIONCONSULTA2: TStringField;
    qrDoctoresDIRECCIONCONSULTA1: TStringField;
    qrDoctoresESPECIALIDAD: TStringField;
    qrDoctoresCODIGOWEB: TStringField;
    qrDoctoresDATAAREAID: TStringField;
    qrDoctoresRECID: TLargeintField;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaDoctores: TfrmDialogConsultaDoctores;
  adentrogrid, _buscar : Boolean;

implementation

uses DataModule, PuntoVenta, Main;

{$R *.dfm}



procedure TfrmDialogConsultaDoctores.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTDoctor WHERE IsNull(DoctorID,'+#39+#39+')<>'+#39+#39;

 If (edbuscar.Text <> '') then
  begin
    case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND DoctorId LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Nombre LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND Especialidad LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND Telefono LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' AND Celular LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
    end;
 end;

 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;

 qrDoctores.Close;
 qrDoctores.SQL.Text := sqlString + ' Order By Nombre ';
 qrDoctores.Open;
end;


procedure TfrmDialogConsultaDoctores.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := True;
  _buscar := False;
end;


procedure TfrmDialogConsultaDoctores.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := False;
  _buscar := True;
end;


procedure TfrmDialogConsultaDoctores.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;


procedure TfrmDialogConsultaDoctores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 13) and (AdentroGrid) then
    begin
      Close;
      ModalResult := mrOk;
    end;

  if (key = 13) and (_buscar) then
    begin
      If (AdentroGrid) then
        Begin
          Close;
          ModalResult := mrOk;
        end
      Else
        BuscarData;
    end;

  if (key = 27) then
    begin
      Close;
    end;

  if (key = vk_f9) then
    begin
      Close;

      if (qrDoctores.RecordCount >0) then
        ModalResult := mrOk;
    end;
end;


procedure TfrmDialogConsultaDoctores.FormShow(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  DM.qrParametro.close;
  DM.qrParametro.open;

//  BuscarData;
  edbuscarpor.ItemIndex := 1;
  edbuscar.SetFocus;
end;



procedure TfrmDialogConsultaDoctores.Run;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  if Factura_st='I' then
  Begin
      If (frmMain.Exis_Vta = True) then
        Begin
          frmMain.frmTmp.qrEntradaPacienteDoctorID.Value := qrDoctoresDOCTORID.Value;
          frmMain.frmTmp.qrEntradaPacienteNombreDoctor.Value := qrDoctoresNombre.Value;
          frmMain.frmTmp.qrEntradaPacienteResultadoDoctor.Value := qrDoctoresResultadoDoctor.Value;
          frmMain.frmTmp.qrEntradaPacientePublicarInternetDoctor.Value := qrDoctoresPublicarInternet.Value;

         if (qrDoctoresDOCTORID.AsInteger = 1) then
           Begin
             frmMain.frmTmp.qrEntradaPacienteNombreDoctor.Value := '';
             frmMain.frmTmp.EdNombreDoctor.Properties.ReadOnly := False;
           end
         else
           frmMain.frmTmp.EdNombreDoctor.Properties.ReadOnly := True;
        end;
  End
  else
  If Factura_st='M' then
  Begin
      If (frmMain.Exis_Vta = True) then
        Begin
          frmMain.frmTmpMod.qrEntradaPacienteDoctorID.Value := qrDoctoresDOCTORID.Value;
          frmMain.frmTmpMod.qrEntradaPacienteNombreDoctor.Value := qrDoctoresNombre.Value;
          frmMain.frmTmpMod.qrEntradaPacienteResultadoDoctor.Value := qrDoctoresResultadoDoctor.Value;
          frmMain.frmTmpMod.qrEntradaPacientePublicarInternetDoctor.Value := qrDoctoresPublicarInternet.Value;

         if (qrDoctoresDOCTORID.AsInteger = 1) then
           Begin
             frmMain.frmTmpMod.qrEntradaPacienteNombreDoctor.Value := '';
             frmMain.frmTmpMod.EdNombreDoctor.Properties.ReadOnly := False;
           end
         else
           frmMain.frmTmpMod.EdNombreDoctor.Properties.ReadOnly := True;
        end;
  end
  else
  If Factura_st='F' then
  Begin
      If (frmMain.Exis_Vta = True) then
        Begin
          frmMain.frmTmpND.qrEntradaPacienteDoctorID.Value := qrDoctoresDOCTORID.Value;
          frmMain.frmTmpND.qrEntradaPacienteNombreDoctor.Value := qrDoctoresNombre.Value;
          frmMain.frmTmpND.qrEntradaPacienteResultadoDoctor.Value := qrDoctoresResultadoDoctor.Value;
          frmMain.frmTmpND.qrEntradaPacientePublicarInternetDoctor.Value := qrDoctoresPublicarInternet.Value;

         if (qrDoctoresDOCTORID.AsInteger = 1) then
           Begin
             frmMain.frmTmpND.qrEntradaPacienteNombreDoctor.Value := '';
             frmMain.frmTmpND.EdNombreDoctor.Properties.ReadOnly := False;
           end
         else
           frmMain.frmTmpND.EdNombreDoctor.Properties.ReadOnly := True;
        end;
  end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Exis_Cli = True) And (frmMain.Tran_fer <> True) then
    Begin
      frmMain.frmClinica.qrEntradaPacienteDoctorID.Value := qrDoctoresDOCTORID.Value;
      frmMain.frmClinica.qrEntradaPacienteNombreDoctor.Value := qrDoctoresNombre.Value;
      frmMain.frmClinica.qrEntradaPacienteResultadoDoctor.Value := qrDoctoresResultadoDoctor.Value;
      frmMain.frmClinica.qrEntradaPacientePublicarInternetDoctor.Value := qrDoctoresPublicarInternet.Value;

     if (qrDoctoresDOCTORID.AsInteger = 1) then
       Begin
         frmMain.frmClinica.qrEntradaPacienteNombreDoctor.Value := '';
         frmMain.frmClinica.EdNombreDoctor.Properties.ReadOnly := False;
       end
     else
       frmMain.frmClinica.EdNombreDoctor.Properties.ReadOnly := True;
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Exis_Lab = True) then
    Begin
      frmMain.frmLab.qrEntradaPacienteDoctorID.Value := qrDoctoresDOCTORID.Value;
      frmMain.frmLab.qrEntradaPacienteNombreDoctor.Value := qrDoctoresNombre.Value;
      frmMain.frmLab.qrEntradaPacienteResultadoDoctor.Value := qrDoctoresResultadoDoctor.Value;
      frmMain.frmLab.qrEntradaPacientePublicarInternetDoctor.Value := qrDoctoresPublicarInternet.Value;

     if (qrDoctoresDOCTORID.AsInteger = 1) then
       Begin
         frmMain.frmLab.qrEntradaPacienteNombreDoctor.Value := '';
         frmMain.frmLab.EdNombreDoctor.Properties.ReadOnly := False;
       end
     else
       frmMain.frmLab.EdNombreDoctor.Properties.ReadOnly := True;
    end;

 end;
end;


END.


