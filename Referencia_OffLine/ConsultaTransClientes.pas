unit ConsultaTransClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ConsultaModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ABSMain, JvStringHolder, StdActns, ActnList,
  JvComponentBase, JvFormPlacement, ADODB, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, cxGridCustomPopupMenu, cxGridPopupMenu, ExtCtrls,
  dxLayoutControl, StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, JvExControls, JvComponent, JvEnterTab,DateUtils,
  cxintl;

type
  TfrmConsultaTransClientes = class(TfrmConsultaModule)
    qrTransCliente: TADOQuery;
    qrTransClienteClienteId: TStringField;
    qrTransClienteFecha: TDateTimeField;
    qrTransClienteTipoDoc: TStringField;
    qrTransClienteDocumento: TStringField;
    qrTransClienteTipoAplica: TStringField;
    qrTransClienteDocumentoAplica: TStringField;
    qrTransClienteValor: TBCDField;
    tvConsultaFecha: TcxGridDBColumn;
    tvConsultaTipoDoc: TcxGridDBColumn;
    tvConsultaDocumento: TcxGridDBColumn;
    tvConsultaTipoAplica: TcxGridDBColumn;
    tvConsultaDocumentoAplica: TcxGridDBColumn;
    tvConsultaValor: TcxGridDBColumn;
    qrTransClienteMonedaID: TStringField;
    qrTransClienteValorMST: TBCDField;
    tvConsultaColumn1: TcxGridDBColumn;
    tvConsultaColumn2: TcxGridDBColumn;
    qrTransClientePacienteId: TStringField;
    qrTransClienteSINPRFILTER: TIntegerField;
    qrTransClienteRecId: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure qrTransClienteBeforeOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowCliente(Cliente: String);
  end;

var
  frmConsultaTransClientes: TfrmConsultaTransClientes;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmConsultaTransClientes.btBuscarClick(Sender: TObject);
begin
  inherited;
  qrTransCliente.Close;
  qrTransCliente.Open;
end;


procedure TfrmConsultaTransClientes.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := EncodeDate(1980,1,1);
  deHasta.Date := EndOfTheMonth(Date);
end;


procedure TfrmConsultaTransClientes.qrTransClienteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if qrTransCliente.Parameters.Count > 0 then begin
     qrTransCliente.Parameters.ParamByName('pFecIni').Value := deDesde.Date;
     qrTransCliente.Parameters.ParamByName('pFecFin').Value := deHasta.Date;
  end;
end;


procedure TfrmConsultaTransClientes.ShowCliente(Cliente: String);
begin
  qrTransCliente.Close;
  qrTransCliente.SQL.Text := ' SELECT * FROM PTClienteTransacciones WHERE PacienteID = ' + #39 + Cliente + #39 +
                             ' AND Fecha >= :pFecIni AND Fecha <= :pFecFin ';
  qrTransCliente.Open;
  //
  Caption := 'Transacciones del Paciente : ' + Cliente;
//  Show;
end;


end.
