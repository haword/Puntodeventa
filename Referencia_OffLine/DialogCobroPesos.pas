unit DialogCobroPesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxButtonEdit,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCalendar,
  cxSpinEdit;

type
  TfrmDialogCobroPesos = class(TForm)
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
    EdPendiente: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    LcDevuelta: TdxLayoutGroup;
    EdCobrado: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdDevuelta: TcxCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cbExtBancoCheque: TcxExtLookupComboBox;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    edNumeroCK: TcxMaskEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    btClearTC: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    btClearTD: TcxButton;
    btClearCK: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dtFechaCK: TcxDateEdit;
    edAprobacionTarC: TcxMaskEdit;
    edAprobacionTarD: TcxMaskEdit;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    edTransaccion: TcxMaskEdit;
    btClearTP: TcxButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    procedure btClearTPClick(Sender: TObject);
    procedure btClearCKClick(Sender: TObject);
    procedure btClearTDClick(Sender: TObject);
    procedure btClearTCClick(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cgDatosFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Accion  : String;
  public
    { Public declarations }
    procedure Run;
    procedure buscar;
  end;

var
  frmDialogCobroPesos: TfrmDialogCobroPesos;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, PuntoVenta, Main;

{$R *.dfm}

procedure TfrmDialogCobroPesos.cgDatosEnter(Sender: TObject);
begin
// buscar;
 AdentroGrid := True;
end;


procedure TfrmDialogCobroPesos.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;


procedure TfrmDialogCobroPesos.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
// buscar;
end;


procedure TfrmDialogCobroPesos.FormCreate(Sender: TObject);
Var BuscarEn :TDataset;
    i       : integer;
    str     : string;
    cont    : integer;
begin
{  str:=FormatDateTime('yyyy',dm.Fecha_Server);
  For i := 0 to 20 do
  begin
      if i>0 then
      begin
       cont:=strtoint(str)+1;
       str := inttostr(cont);
      end;
      With cboAnoTC do
      begin
        Properties.Items.Add(str);
      end;
  End;
  str:=FormatDateTime('yyyy',dm.Fecha_Server);
  i:=0;
  For i := 0 to 20 do
  begin
      if i>0 then
      begin
       cont:=strtoint(str)+1;
       str := inttostr(cont);
      end;
      With cboAnoTD do
      begin
        Properties.Items.Add(str);
      end;
  End;
}
end;

procedure TfrmDialogCobroPesos.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogCobroPesos.FormShow(Sender: TObject);
begin
    DM.qryBanco.Connection :=dm.DataBase;
    With DM.qryBanco, sql do
    begin
      Close;
      Clear;
      Text :='Select BankCode,BankName from dbo.ODSC ';
      Open;
    end;
end;

procedure TfrmDialogCobroPesos.btaceptarClick(Sender: TObject);
begin
  Accion:='';
  If (frmMain.frmTmp.tarjetac > 0) Then
  begin
{    If Trim(edNumeroTarC.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar �ltimos 4 d�gitos de la tarjeta de cr�dito.  Verifique.', []);
       edNumeroTarC.SetFocus;
    end;
}
    If Trim(edAprobacionTarC.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar n�mero de aprobaci�n de la transacci�n.  Verifique.', []);
       edAprobacionTarC.SetFocus;
    end;
{    If (dm.TipoTarjeta[dm.ComprobarTarjeta(edNumeroTarC.Text)])='No v�lida' then
    begin
        If DM.Mensaje('Esta Tarjeta-Cr�dito No pertenece a estas Compa�ias (American Express - Visa - Mastercard - Discover).  Desea Aceptarlo?',mb_yesno) = id_no then
        begin
          edNumeroTarC.SetFocus;
          Exit;
        end;
    end;

    If Not(Length(Trim(cboMesTC.EditText))> 0)  Then
    begin
       If DM.Mensaje('Mes de Vencimiento de la Tarjeta de Cr�dito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboMesTC.SetFocus;
        Exit;
       end;
    end;
    If Not(Length(Trim(cboAnoTC.EditText))>0) Then
    begin
       If DM.Mensaje('A�o de Vencimiento de la Tarjeta de Cr�dito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
          cboAnoTC.SetFocus;
          Exit;
       end;
    end;
    if  (Length(Trim(cboMesTC.EditText))> 0) And (Length(Trim(cboAnoTC.EditText))> 0) then
    begin
      If StrToDate((FormatDateTime('dd/mm/yyyy',dm.Fecha_Server))) >  (StrToDate('01'+'/'+Formatfloat('00',cboMesTC.EditValue)+'/'+Formatfloat('0000',cboAnoTC.EditValue))) then
      begin
          If DM.Mensaje('Fecha-Vencimiento Tarjeta de Cr�dito debe ser > que la fecha del d�a.  Desea Aceptarlo?',mb_yesno) = id_no then
          begin
            cboAnoTC.SetFocus;
            Exit;
          end;
      end;
    end
}
  end;
  If (frmMain.frmTmp.tarjetad > 0) Then
  begin
{    If Trim(edNumeroTarD.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar �ltimos 4 d�gitos de la tarjeta de d�bito.  Verifique.', []);
       edNumeroTarD.SetFocus;
    end;
}
    If Trim(edAprobacionTarD.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar n�mero de aprobaci�n de la transacci�n.  Verifique.', []);
       edAprobacionTarD.SetFocus;
    end;

{    If (dm.TipoTarjeta[dm.ComprobarTarjeta(edNumeroTarD.Text)])='No v�lida' then
    begin
        If DM.Mensaje('Esta Tarjeta-D�bito No pertenece a estas Compa�ias (American Express - Visa - Mastercard - Discover).  Desea Aceptarlo ?',mb_yesno) = id_no then
        begin
          edNumeroTarD.SetFocus;
          Exit;
        end;
    end;

    If Not(Length(Trim(cboMesTD.EditText))>0)  Then
    begin
       If DM.Mensaje('Mes de Vencimiento de la Tarjeta de d�bito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboMesTD.SetFocus;
       end;
    end;
    If  Not(Length(Trim(cboAnoTD.EditText))>0)  Then
    begin
       If DM.Mensaje('Ano de Vencimiento de la Tarjeta de d�bito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboAnoTD.SetFocus;
        exit;
       end;
    end;
    if  (Length(Trim(cboMesTD.EditText))> 0) And (Length(Trim(cboAnoTD.EditText))> 0) then
    begin
      If StrToDate((FormatDateTime('dd/mm/yyyy',dm.Fecha_Server))) >  (StrToDate('01'+'/'+Formatfloat('00',cboMesTD.EditValue)+'/'+Formatfloat('0000',cboAnoTD.EditValue))) then
      begin
          If DM.Mensaje('Fecha-Vencimiento Tarjeta de D�bito debe ser > que la fecha del d�a.  Desea Aceptarlo?',mb_yesno) = id_no then
          begin
            cboAnoTD.SetFocus;
            Exit;
          end;
      end;
    end;
}
  end;
  If (frmMain.frmTmp.tpago > 0) Then
  begin
    If Trim(edTransaccion.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar n�mero de transacci�n.  Verifique.', []);
       edTransaccion.SetFocus;
    end;
  end;
  if  (frmMain.frmTmp.cheque > 0) then
  begin
    If Trim(cbExtBancoCheque.Text) = EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar el Banco del cheque.  Verifique.', []);
       cbExtBancoCheque.SetFocus;
    end;
    If Trim(edNumeroCK.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar n�mero del cheque.  Verifique.', []);
       edNumeroCK.SetFocus;
    end;
    If Trim(dtfechaCK.EditValue)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar la fecha del cheque.  Verifique.', []);
       dtfechaCK.SetFocus;
    end;
  end;
   frmMain.frmTmp.mdPago.First;
    while not frmMain.frmTmp.mdPago.Eof do
    begin
        if frmMain.frmTmp.mdPagoPagado.Value > 0 then
        begin
             If (frmMain.frmTmp.mdPagoFormaPagoID.Value = 'EFE') Then
             begin
                frmMain.frmTmp.mdPago.Edit;
                frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmp.mdPago.Post;
             end;
             If (frmMain.frmTmp.mdPagoFormaPagoID.Value = 'TC') Then
             begin
                frmMain.frmTmp.mdPago.Edit;
//                frmMain.frmTmp.mdPagoNumero_Referencia.Value := Trim(edNumeroTarC.EditValue);
//                If (Length(Trim(cboMesTC.EditText))> 0) And (Length(Trim(cboAnoTC.EditText))> 0) then
//                    frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTC.EditValue)+'/'+Formatfloat('0000',cboAnoTC.EditValue))
//                else
                frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmp.mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarC.EditValue);
                frmMain.frmTmp.mdPago.Post;
             end;
             If (frmMain.frmTmp.mdPagoFormaPagoID.Value = 'TD') Then
             begin
                frmMain.frmTmp.mdPago.Edit;
//                frmMain.frmTmp.mdPagoNumero_Referencia.Value := Trim(edNumeroTarD.EditValue);
//                If (Length(Trim(cboMesTD.EditText))> 0) And (Length(Trim(cboAnoTD.EditText))> 0) then
//                  frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTD.EditValue)+'/'+Formatfloat('0000',cboAnoTD.EditValue))
//                else
                frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmp.mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarD.EditValue);
                frmMain.frmTmp.mdPago.Post;
             end;
             If (frmMain.frmTmp.mdPagoFormaPagoID.Value = 'TP') Then
             begin
                frmMain.frmTmp.mdPago.Edit;
                frmMain.frmTmp.mdPagoNumero_Aprobacion.Value := Trim(edTransaccion.EditValue);
                frmMain.frmTmp.mdPago.Post;
             end;
             If (frmMain.frmTmp.mdPagoFormaPagoID.Value = 'CK') Then
             begin
               frmMain.frmTmp.mdPago.Edit;
               frmMain.frmTmp.mdPagoBancoID.Value := Trim(cbExtBancoCheque.EditValue);
               frmMain.frmTmp.mdPagoNumero_Referencia.Value :=Trim(edNumeroCK.EditValue);
               frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate(FormatDateTime('dd/mm/yyyy', dtFechaCK.EditValue));
               frmMain.frmTmp.mdPago.Post;
             end;
        end;
        frmMain.frmTmp.mdPago.Next;
    end;
    frmMain.frmTmp.mdPago.First;
    If (frmMain.frmTmp.qrEntradaPacienteDESCUENTO.Value > 0) and
       (frmMain.frmTmp.efectivo = 0) And
       (frmMain.frmTmp.qrEntradaPacienteOrigen.value = DM.qrParametroGrupoPriv.Value) And
       (Trim(frmMain.frmTmp.qrEntradaPacienteDescuentoCard.value) = EmptyStr) And
       (Trim(frmMain.frmTmp.qrEntradaPacienteDescuentoTexto.value) = EmptyStr) And
       (Trim(frmMain.frmTmp.qrEntradaPacienteDescuentoPlanID.value) = EmptyStr) Then
    begin
      frmMain.frmTmp.CancelarCobro;
      Raise exception.CreateFmt('Descuento s�lo aplica a pagos en efectivo.  Por favor verifique.', []);
    end;
    If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
    Begin
        If frmMain.frmTmp.buscar_valores then
        begin
            If (DM.Redondeo(frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo) > 0) Then
            Begin
                frmMain.frmTmp.TipoCob := 'RI';
                frmMain.frmTmp.correccion;
            end
            Else
            begin
                frmMain.frmTmp.CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
            end;
        end
        Else
        begin
            frmMain.frmTmp.CancelarCobro;
            Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
        end;
      End
    Else
      Begin
        frmMain.frmTmp.CancelarCobro;
        Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
      End;
      Accion:='S';
      Close;
{  else
    Begin
      frmMain.frmTmp.CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
    end;
}
end;

procedure TfrmDialogCobroPesos.btClearCKClick(Sender: TObject);
begin
  cbExtBancoCheque.ItemIndex := -1;
  cbExtBancoCheque.Text := EmptyStr;
  dtFechaCK.Clear;
end;

procedure TfrmDialogCobroPesos.btClearTCClick(Sender: TObject);
begin
    edAprobacionTarC.Text :=EmptyStr;
end;

procedure TfrmDialogCobroPesos.btClearTDClick(Sender: TObject);
begin
    edAprobacionTarD.Text :=EmptyStr;
end;

procedure TfrmDialogCobroPesos.btClearTPClick(Sender: TObject);
begin
    edTransaccion.Text := EmptyStr;
end;

procedure TfrmDialogCobroPesos.buscar;
begin
  frmMain.frmTmp.buscar_valores;
  EdCobrado.TabStop               := False;
  EdDevuelta.TabStop              := False;
  EdPendiente.TabStop             := False;
  EdCobrado.Properties.ReadOnly   := True;
  EdDevuelta.Properties.ReadOnly  := True;
  EdPendiente.Properties.ReadOnly := True;
  EdPendiente.Value               := frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value;
  EdCobrado.Value                 := frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo;
  if frmMain.frmTmp.devuelta > 0 then
    EdDevuelta.Value                := frmMain.frmTmp.devuelta
  else
    frmMain.frmTmp.devuelta         := 0;
  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;
end;

procedure TfrmDialogCobroPesos.Run;
begin

  buscar;
  showmodal;
   If  (ModalResult = mrCancel) and (Accion<>'S') Then
   Begin
      frmMain.frmTmp.CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
   end;
end;
end.


