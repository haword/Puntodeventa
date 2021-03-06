unit DialogImpCobro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB,pptypes;

type
  TfrmDialogImpCobro = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosTurnoID: TStringField;
    qrCobrosEntradaID: TStringField;
    qrCobrosSucursalID: TStringField;
    mon: TDateTimeField;
    qrCobrosHora: TStringField;
    qrCobrosPacienteID: TStringField;
    qrCobrosPacientePrincipalID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosTotalCobrado: TBCDField;
    qrCobrosTotalFactura: TBCDField;
    qrCobrosTotalPagado: TBCDField;
    qrCobrosPendienteFactura: TBCDField;
    qrCobrosPendienteCobro: TBCDField;
    qrCobrosReciboNo: TStringField;
    qrCobrosClienteID: TStringField;
    qrCobrosAplicado: TBooleanField;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosUsuarioID: TcxGridDBColumn;
    dbDatosTotalCobrado: TcxGridDBColumn;
    dbDatosTotalFactura: TcxGridDBColumn;
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosPendienteFactura: TcxGridDBColumn;
    dbDatosPendienteCobro: TcxGridDBColumn;
    dbDatosReciboNo: TcxGridDBColumn;
    qrCobrosMonedaID: TStringField;
    dbDatosColumn1: TcxGridDBColumn;
    qrCobrosTipoDoc: TStringField;
    qrCobrosConcepto: TStringField;
    qrCobrosCUADREGLOBAL: TStringField;
    qrCobrosCUADREUSUARIO: TStringField;
    qrCobrosSecuencia: TAutoIncField;
    qrCobrosSINPRFILTER: TIntegerField;
    qrCobrosRecId: TLargeintField;
    qrCobrosrefRecid: TLargeintField;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(recid : Int64);
  end;

var
  frmDialogImpCobro: TfrmDialogImpCobro;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, PuntoVenta, Main;

{$R *.dfm}

procedure TfrmDialogImpCobro.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogImpCobro.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogImpCobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogImpCobro.Run(RecId : Int64);
begin
  inherited;
  qrCobros.close;
  qrCobros.parameters[0].value := RecId;
  qrCobros.open;
  showmodal;
  If ModalResult = mrOk then
  Begin
    If qrCobros.RecordCount > 0 then
    begin
              DM.qrCobroDetalle.Close;
              DM.qrCobroDetalle.Parameters[0].Value := qrCobrosCobroid.Value;
              DM.qrCobroDetalle.Open;
              With DM.qryCobroTicket, sql do
              begin
                  Close;
                  Clear;
                  Add('select Distinct e.NombrePaciente ,e.ClienteNombre, c.ReciboNo , c.EntradaId ,e.Muestrano as Muestrano,'+
                       ' c.Fecha, c.Hora , c.UsuarioID , c.MonedaId ,'+
                       ' (Select Empresa from PtParametro) as TituloEmpresa,'+
                       ' s.Nombre,s.Telefono,isnull(d.Descripcion,'+#39+#39+') as Descripcion, c.PendienteFactura, c.TotalCobrado,'+
                       ' c.PendienteCobro,c.TotalFactura,c.TotalPagado,'+
                       ' e.CoberturaSeguro,e.FactExterior,'+
                       '                             (e.Neto-GastosVarios) as TotalPruebaUsa,e.GastosVarios as TotalEnvioUsa,isnull(d.Comentario ,'+#39+#39+') as Comentario, c.Concepto, '+
                       '  (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                       '  Convert(Varchar(10),Getdate()+180,120) as Fecha_Autoriza, c.CobroId as Cobroid, c.Refrecid as Refrecid, '+
                       ' (Select RNC from PtParametro) as RNC, d.Secuencia, (Select NotaExterior from PtParametro) as SubTituloEmpresa, e.Origen, cd.Devuelta '+
                       '  from ptcobro c Inner Join ptentradapaciente e '+
                       '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d '+
                       '   on d.refrecid = e.recid '+
                       '   Inner Join ptsucursal s  '+
                       '   on e.SucursalID=s.SucursalID Inner Join ptCobroDetalle cd on c.cobroid=cd.cobroid '+
                       '   Where c.refrecid='+inttostr(qrCobrosrefRecid.Value)+
                       '   and c.cobroid='+#39+qrCobrosCobroid.Value+#39+
                       '   and c.TipoDoc='+#39+'RI'+#39+
                       '   and e.Dataareaid='+#39+'ldr'+#39+
                       '   Order by d.Secuencia ');
                  Open;
                  If Not IsEmpty then
                  begin
                    If Ruta_Recibo <> EmptyStr then
                    Begin
                        If Fieldbyname('FactExterior').value > 0 then
                        Begin
                              If Not (dm.CurRolVisualScr)then    //NAVIS
                              begin
                                  If (dm.CurRol =11) then    //ELVIRA
                                    dm.ImpresionRwPrint_Recibo_Dolar
                                  else
                                  begin
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                  end;
                              end
                              else
                              begin
                                DM.ppImpReciboExterior.PrinterSetup.Copies := 2;
                                DM.ppImpReciboExterior.DeviceType := dtScreen;
                                DM.ppImpReciboExterior.Print;
                              end;
                        End
                        Else
                        begin
                            With DM.ppImpReciboTicket do
                            begin
                              If Not (dm.CurRolVisualScr)then    //NAVIS
                              begin
                                dm.ImpresionRwPrint_Recibo_Pesos
                              end
                              else
                              begin
                                ShowPrintDialog := False;
                                DeviceType := dtPrinter;
                                PrinterSetup.PrinterName := Ruta_Recibo;
                                Print;
                              end;
                            end;
                        end;
                    End
                    Else
                    Begin
                        If Fieldbyname('FactExterior').value > 0 then
                        Begin
                              If Not(dm.CurRolVisualScr)  then
                              begin
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                              end
                              else
                              begin
                                DM.ppImpReciboExterior.PrinterSetup.Copies := 1;
                                DM.ppImpReciboExterior.DeviceType := dtScreen;
                                DM.ppImpReciboExterior.Print;
                              end;
                        End
                        Else
                        begin
                              If Not(dm.CurRolVisualScr)  then
                              begin
                                dm.ImpresionRwPrint_Recibo_Pesos;
                              end
                              else
                              begin
                                DM.ppImpReciboTicket.DeviceType := dtScreen;
                                DM.ppImpReciboTicket.Print;
                              end;
                        end;
                    End;
                  end;
              end;
    end;
  end;
end;
end.
