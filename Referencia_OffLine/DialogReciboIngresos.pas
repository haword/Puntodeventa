unit DialogReciboIngresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, ADODB, dxmdaset;

type
  TfrmDialogReciboIngreso = class(TForm)
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
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPagado: TcxGridDBColumn;
    dbDatosMoneda: TcxGridDBColumn;
    LcPendiente: TdxLayoutGroup;
    LcDevuelta: TdxLayoutGroup;
    EdCobrado: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    mdPago: TdxMemData;
    mdPagoFormaDePago: TStringField;
    mdPagoOrden: TSmallintField;
    mdPagoPagado: TCurrencyField;
    mdPagoFormaPagoID: TStringField;
    mdPagorefrecid: TLargeintField;
    mdPagoMoneda: TStringField;
    EdCliente: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdNombre: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure EdClienteExit(Sender: TObject);
    procedure EdClienteDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    cobrado         : Double;
    moneda          : String;
    cobroid         : String;
    clienteid       : String;
    qfindCltParams  : TADOQuery;

    procedure Run;
    procedure ActCobro;
    procedure CrearCobro;
    procedure CancelarCobro;
    procedure Buscar_Cliente;
    function GetReciboNo : String;
    Function Buscar_Valor : Double;

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                tipoaplica: string; documentoaplica: string; fecha : TDateTime;
                                valor: Double; moneda :string; paciente: string; filter: Integer);
  end;

var
  frmDialogReciboIngreso: TfrmDialogReciboIngreso;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, PuntoVenta, Main;

{$R *.dfm}


procedure TfrmDialogReciboIngreso.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogReciboIngreso.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogReciboIngreso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMain.Recibo := False;
end;

procedure TfrmDialogReciboIngreso.FormDestroy(Sender: TObject);
begin
  frmMain.Recibo := False;
end;

procedure TfrmDialogReciboIngreso.FormCreate(Sender: TObject);
begin
  frmMain.Recibo := True;
end;

procedure TfrmDialogReciboIngreso.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogReciboIngreso.Run;
begin
 showmodal;

 If ModalResult = mrOk then
  begin
   if DM.Mensaje('Desea Generar Este Recibo de Ingreso?',mb_yesno) = id_yes Then
     begin
       Buscar_Valor;
       ActCobro;
       frmMain.LanzaConsulta(-7995, CobroId);
     end;
  end
 Else
   CancelarCobro;
end;


procedure TfrmDialogReciboIngreso.btcancelarClick(Sender: TObject);
begin
  frmMain.Recibo := False;
  CancelarCobro;
end;


procedure TfrmDialogReciboIngreso.Buscar_Cliente;
begin
  qfindCltParams := DM.Find('SELECT * FROM PTCliente WHERE ClienteID = :cli', frmMain.frmTmp.ClienteRecibo);
end;


function TfrmDialogReciboIngreso.GetReciboNo : String;
Var
 _valor   : String;
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;
 qsecdoc := DM.NewQuery;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'RI'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
       if FieldByName('Secuencia').AsString <> '' then
         numero := FieldByName('Secuencia').AsInteger
       else
         numero := 1;

       _valor := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
                 FormatFloat('0000000', numero);
   end;
 end;
 Result := _valor;
 FreeAndNil(qsecdoc);
end;

//LLenando la Tabla para los Cobros.
procedure TfrmDialogReciboIngreso.CrearCobro;
Var
 qfind      : TADOQuery;
 qinsert    : TADOQuery;
 qformapago : TADOQuery;
begin
 If DM.Mensaje('Desea Registrar Un Recibo de Ingreso?',mb_yesno) = id_yes then
  begin
   DM.DataBase.Execute('DELETE FROM PTCobro WHERE CobroID = '+#39+CobroID+#39);
   DM.DataBase.Execute('DELETE FROM PTCobroDetalle WHERE CobroID = '+#39+CobroID+#39);
   CobroID := '';

   //Buscando los Datos del Cliente a Facturar y Sus Parametros. - Paciente.
   Buscar_Cliente;

   EdCliente.Text := qfindCltParams.FieldByName('ClienteId').AsString;
   EdNombre.Text := qfindCltParams.FieldByName('Nombre').AsString;

//   cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
   cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);

   DM.qrParametro.Close;
   DM.qrParametro.Open;

   //Limpiar Detalle de Pago
   mdPago.Close;
   mdPago.Open;
   mdPago.First;

   qinsert := DM.NewQuery;
   qinsert.Close;
   qinsert.SQL.Text := ' INSERT INTO PTCobro(refRecid, CobroID, SucursalID, Fecha, Hora, UsuarioID, '+
                       ' ClienteID, PacienteID, TotalFactura, TotalPagado, PendienteFactura, Aplicado, '+
                       ' MonedaId, TipoDoc, EntradaId, SinPrFilter) '+
                       ' VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15) ';
   qinsert.Parameters[0].Value := cobroid;
   qinsert.Parameters[1].Value := cobroid;
   qinsert.Parameters[2].Value := DM.CurSucursal;
   qinsert.Parameters[3].Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
   qinsert.Parameters[4].Value := DM.Buscar_Hora_Actual; //qinsert.Parameters[4].Value := TimeToStr(Time);
   qinsert.Parameters[5].Value := DM.CurUser;
   qinsert.Parameters[6].Value := qfindCltParams.FieldByName('ClienteID').AsString; //EdCliente.Text;
   qinsert.Parameters[7].Value := qfindCltParams.FieldByName('ClienteID').AsString; //EdCliente.Text;
   qinsert.Parameters[8].Value := 0;
   qinsert.Parameters[9].Value := 0;
   qinsert.Parameters[10].Value := 0;
   qinsert.Parameters[11].Value := 0;
   qinsert.Parameters[12].Value := DM.qrParametroMonedaID.Value;
   qinsert.Parameters[13].Value := 'RI';
   qinsert.Parameters[14].Value := frmMain.frmTmp.qrEntradaPacienteEntradaId.Value;
   qinsert.Parameters[15].Value := qfindCltParams.FieldByName('SINPRFILTER').AsInteger; //frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value;
   qinsert.ExecSQL;

   If (DM.qrParametroMonedaID.Value = 'RD') Then
    Begin
     //Cargando las Formas de Pago en Peso.
     qformapago := DM.NewQuery;
     qformapago.close;
     qformapago.SQL.Text := ' SELECT * FROM PTFormaDePago '+
                            ' WHERE moneda = '+ #39 + DM.qrParametroMonedaID.Value + #39;
     qformapago.Open;
    end
   Else
    Begin
     //Cargando las Formas de Pago en Dolares.
     qformapago := DM.NewQuery;
     qformapago.close;
     qformapago.SQL.Text := 'SELECT * FROM PTFormaDePago '+
                            'WHERE moneda = '+ #39 + DM.qrParametroMonedaDolares.Value + #39;
     qformapago.Open;
    end;

   qinsert.Close;
   qinsert.SQL.Clear;
   qinsert.SQL.Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                       ' RefRecid, MonedaID, MontoMST, SinPrFilter) '+
                       ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7)';

   while not qformapago.Eof do
    begin
     qinsert.Parameters[0].Value := cobroid;
     qinsert.Parameters[1].Value := qformapago.FieldByName('FormaDePagoId').AsString;
     qinsert.Parameters[2].Value := 0;
     qinsert.Parameters[3].Value := qformapago.FieldByName('Orden').AsString;
     qinsert.Parameters[4].Value := cobroid;
     qinsert.Parameters[5].Value := qformapago.FieldByName('Moneda').AsString;
     qinsert.Parameters[6].Value := 0;
     qinsert.Parameters[7].Value := qfindCltParams.FieldByName('SINPRFILTER').AsInteger; //frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value;
     qinsert.ExecSQL;

     qformapago.Next;
    end;

   //Limpiar Detalle de Pago
   mdPago.Close;
   mdPago.Open;
   mdPago.First;

   If (DM.qrParametroMonedaID.Value = 'RD') Then
    Begin
     //Cargando las Formas de Pago en Peso.
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
                       ' WHERE d.cobroid = '+ #39 + cobroID + #39 +
                       ' AND d.FormaDePagoId = f.FormaDePagoID '+
                       ' AND f.moneda = '+ #39 + DM.qrParametroMonedaID.Value + #39 +
                       ' ORDER BY d.orden';
     qfind.Open;
    end
   Else
    Begin
     //Cargando las Formas de Pago en Dolares.
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
                       ' WHERE d.cobroid = '+ #39 + cobroID + #39 +
                       ' AND d.FormaDePagoId = f.FormaDePagoID '+
                       ' AND f.moneda = '+ #39 + DM.qrParametroMonedaDolares.Value + #39 +
                       ' ORDER BY d.orden';
     qfind.Open;
    end;

   While not qfind.Eof do
    begin
     mdPago.Insert;
     mdPagoFormaPagoID.Value := qfind.FieldByName('FormaDePagoId').AsString;
     mdPagoFormaDePago.Value := qfind.FieldByName('Descripcion').AsString;
     mdPagoPagado.Value := 0;
     mdPagoOrden.Value := qfind.FieldByName('Orden').AsInteger;
     mdPagorefrecid.Value := strtoInt64(qfind.FieldByName('recid').AsString);
     mdPagoMoneda.Value := qfind.FieldByName('Moneda').AsString;
     mdPago.Post;

     qfind.Next;
    end;

   mdPago.First;

   FreeAndNil(qfind);
   FreeAndNil(qinsert);
   FreeAndNil(qformapago);
  end;
end;


procedure TfrmDialogReciboIngreso.ActCobro;
Var
 qfind      : TADOQuery;
 qupdate    : TADOquery;
 qfindcobro : TADOquery;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 qupdate := DM.NewQuery;
 qupdate.Close;
 qupdate.SQL.Text := 'Update PTCobroDetalle Set Monto = :mont, MontoMST = :mon2 where RecId = :rec';

 mdPago.First;
 while not mdPago.Eof do
 begin
  qupdate.Parameters[0].Value := mdPagoPagado.Value;
  qupdate.Parameters[1].Value := DM.ValorMoneda(mdPagoPagado.Value,
                                                DM.qrParametroMonedaID.Value,
                                                DM.qrParametroMonedaID.Value,
                                                DM.SystemDate);
  qupdate.Parameters[2].Value := mdPagorefrecid.Value;
  qupdate.ExecSQL;

  mdPago.Next;
 end;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Delete from PTCobroDetalle where CobroID = :rec and Monto = 0';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.ExecSQL;

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Monto) FROM PTCobroDetalle WHERE CobroId = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteRECID.AsString + #39;
 qfind.Open;

 if (qfind.Fields[0].AsFloat > 1) then
   Begin
     qupdate.Close;
     qupdate.SQL.Clear;
     qupdate.SQL.Text := ' UPDATE PTCobro SET '+
                         ' TotalCobrado = :tot, '+
                         ' PendienteCobro = :pen, '+
                         ' ReciboNo = :rec, '+
                         ' Aplicado = :apl '+
                         ' WHERE CobroID = :cob '+
                         ' AND refRecId = :ref '+
                         ' AND EntradaId = :ent';

     qupdate.Parameters.ParamByName('tot').Value := DM.Redondeo(qfind.Fields[0].AsFloat);

     If (DM.Redondeo(frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value - qfind.Fields[0].AsFloat) > 1) then
       qupdate.Parameters.ParamByName('pen').Value := DM.Redondeo(frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value - qfind.Fields[0].AsFloat)
     Else
       qupdate.Parameters.ParamByName('pen').Value := 0;

     qupdate.Parameters.ParamByName('rec').Value := GetReciboNo;
     qupdate.Parameters.ParamByName('apl').Value := 1;
     qupdate.Parameters.ParamByName('cob').Value := cobroid;
     qupdate.Parameters.ParamByName('ref').Value := frmMain.frmTmp.qrEntradaPacienteRECID.Value;
     qupdate.Parameters.ParamByName('ent').Value := frmMain.frmTmp.qrEntradaPacienteEntradaId.Value;
     qupdate.ExecSQL;
   End;

 qfindcobro := DM.NewQuery;
 qfindcobro.Close;
 qfindcobro.SQL.Text := ' SELECT * FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                        ' AND refRecId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteRECID.AsString + #39 +
                        ' AND EntradaId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteEntradaId.AsString + #39;
 qfindcobro.Open;

 if (qfindcobro.RecordCount > 0) and (qfind.Fields[0].AsFloat > 1) then
   Begin
     CrearTransCliente(qfindcobro.FieldByName('ClienteID').Value, 'RI',
                       qfindcobro.FieldByName('ReciboNo').Value, 'RI',
                       qfindcobro.FieldByName('ReciboNo').Value,
                       qfindcobro.FieldByName('Fecha').Value,
                       qfind.Fields[0].AsFloat * -1, DM.qrParametroMonedaID.Value,
                       qfindcobro.FieldByName('PacienteId').Value, qfindcobro.FieldByName('SINPRFILTER').Value);
   End;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
 FreeAndNil(qfindcobro);
end;



procedure TfrmDialogReciboIngreso.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                                    tipoaplica: string; documentoaplica: string; fecha : TDateTime;
                                                    valor: Double; moneda :string; paciente: string; filter: Integer);
Var
 qinsert : TADOQuery;
begin
 If (documento <> '') Then
   Begin
     qinsert := DM.NewQuery;

     qinsert.Close;
     qinsert.SQL.Text := ' INSERT INTO PTClienteTransacciones(ClienteId, fecha, TipoDoc, Documento, '+
                         ' TipoAplica, DocumentoAplica, Valor, MonedaId, ValorMST, PacienteId, '+
                         ' SinPrFilter, RecId) VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11) ';
     qinsert.Parameters[0].Value  := cliente;
     qinsert.Parameters[1].Value  := fecha;
     qinsert.Parameters[2].Value  := tipodoc;
     qinsert.Parameters[3].Value  := documento;
     qinsert.Parameters[4].Value  := tipoaplica;
     qinsert.Parameters[5].Value  := documentoaplica;
     qinsert.Parameters[6].Value  := valor;
     qinsert.Parameters[7].Value  := moneda;
     qinsert.Parameters[8].Value  := DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha);
     qinsert.Parameters[9].Value  := paciente;
     qinsert.Parameters[10].Value := filter;
     qinsert.Parameters[11].Value := DM.Get_Secuencia_Id;
     qinsert.ExecSQL;
   end;

 FreeAndNil(qinsert);
end;

procedure TfrmDialogReciboIngreso.EdClienteDblClick(Sender: TObject);
begin
  frmMain.LanzaVentana(-7996);
  EdCliente.Text := frmMain.frmTmp.ClienteRecibo;
  EdNombre.Text := DM.qrClientesNombre.Value;
  EdCliente.SetFocus;
end;

procedure TfrmDialogReciboIngreso.EdClienteExit(Sender: TObject);
begin
 //LLenando la Tabla para los Cobros.
 CrearCobro;
end;

procedure TfrmDialogReciboIngreso.CancelarCobro;
begin
  If DM.Mensaje('Existe Un Recibo en Proceso. Desea Cancelar el Recibo de Ingreso?',mb_yesno) = id_yes then
    begin
     DM.DataBase.Execute(' DELETE FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                         ' AND refRecId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteRECID.AsString + #39 +
                         ' AND EntradaId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteEntradaId.AsString + #39);

     DM.DataBase.Execute(' DELETE FROM PTCobroDetalle WHERE CobroID = '+ #39 + cobroid + #39 +
                         ' AND refRecId = '+ #39 + frmMain.frmTmp.qrEntradaPacienteRECID.AsString + #39);
     cobroid := '';
{
     DM.DataBase.Execute('DELETE FROM PTCobro WHERE CobroID = '+#39+cobroid+#39);
     DM.DataBase.Execute('DELETE FROM PTCobroDetalle WHERE CobroID = '+#39+cobroid+#39);
     cobroid := '';
}
    end;
end;


Function TfrmDialogReciboIngreso.Buscar_Valor : Double;
begin
  cobrado := 0;

  mdPago.First;
  While Not mdPago.Eof do
   Begin
    cobrado := cobrado + mdPagoPagado.Value;
    mdPago.Next;
   End;

  Result := cobrado;

  EdCobrado.Value := cobrado;
end;



END.
