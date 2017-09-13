unit ActualizaCobros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit;

type
  TfrmActCobros = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    BtFactura: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BtProcesar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteTotalPendiente: TFloatField;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    EdMuestra: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    qrEntradaPacienteDetalleCondPac: TStringField;
    qrEntradaPacienteDetalleCondMuestra: TStringField;
    qrEntradaPacienteDetalleDiasProcesamiento: TStringField;
    qrEntradaPacienteDetalleDiasResultado: TIntegerField;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    BtImprimir: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    qrMaterialesFactura: TADOQuery;
    qrMaterialesFacturaMaterialid: TStringField;
    qrMaterialesFacturaCantidad: TBCDField;
    qrMaterialesFacturapruebaid: TStringField;
    qrMaterialesFacturaDescripcion: TStringField;
    dsDatos: TDataSource;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxGrid2DBTableView2Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView2Descripcion: TcxGridDBColumn;
    qrMaterialesFacturaColor: TStringField;
    cxGrid2DBTableView2Color: TcxGridDBColumn;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    f: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleCOMENTARIO_REQ: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrMaterialesFacturarefrecid: TIntegerField;
    qrMaterialesFacturaRecId: TIntegerField;
    qrMaterialesFacturarefrecidLine: TIntegerField;
    qrMaterialesFacturaLineaNo: TIntegerField;
    EdCoberturaValor: TcxDBCurrencyEdit;
    edtipocliente: TcxDBExtLookupComboBox;
    cxGrid1DBTableView1EntradaId: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1PacienteID: TcxGridDBColumn;
    cxGrid1DBTableView1NombrePaciente: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteID: TcxGridDBColumn;
    cxGrid1DBTableView1ClienteNombre: TcxGridDBColumn;
    cxGrid1DBTableView1NonedaID: TcxGridDBColumn;
    cxGrid1DBTableView1Neto: TcxGridDBColumn;
    cxGrid1DBTableView1TotalPagado: TcxGridDBColumn;
    procedure qrMaterialesFacturaCantidadValidate(Sender: TField);
    procedure FormPaint(Sender: TObject);
    procedure EdMuestraDblClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure FormDestroy(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure qrEntradaPacienteDetalleCalcFields(DataSet: TDataSet);
    procedure BtProcesarClick(Sender: TObject);
    procedure BtFacturaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure InsertarMaterial;
    function ExistenPruebasProcesar : Boolean;

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    recid                       : Integer;
    muestranumber, UserId       : String;
    urgente, reportado, doctor  : TcxStyle;
    fecha_label                 : TDateTime;
    hora_label                  : String;

    function  Buscar_Linea: Integer;
    function  BuscarDia(dia: Integer) : Integer;
    function  FechaPrometida(Prueba: string) : TDate;

    procedure BuscarDatos;
    procedure RefrescarData;
    procedure No_Procesar;
    procedure VerPendiente;
    procedure MarcarUrgente;
    procedure FindMuestra;
    procedure VerCaption;
    procedure Act_Fecha;
    procedure Postear;
    procedure BuscarMateriales(registro : Integer);

    procedure ActPruebas(_flebotomista : string; fecha : TDateTime; hora : string);
    Procedure Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);

    Procedure  Buscar_Labels_Temp(_secact: Integer);

    function  Find_Label(_muestra: String; _prueba: String): String;

    function  Buscar_Labels(_muestra: String; _label: String): Boolean;

    procedure Insertar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                  _muestra: String; TipoMuestra: String; _departamento: String;
                                  _medio: String; _color: String; _label: String; _desc: String;
                                  _secuencia: Integer; _recid: int64);

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmActCobros       : TfrmActCobros;
  SecuenciaLabel        : integer;
  SecAct                : integer;
  qfindLb               : TADOQuery;
  qfindLabel            : TADOQuery;  
  secuencia             : integer;
  Descripcion, titulo   : string;
  depact,muestraact     : string;
  colact                : integer;
  Dias                  : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}



//Buscando el Label de la Prueba Registrada.
Procedure TfrmActCobros.Buscar_Labels_Temp(_secact: Integer);
begin
 qfindLabel := DM.NewQuery;

 qfindLabel.Close;
 qfindLabel.SQL.Text := ' SELECT pacienteid, sucursal, Entradaid, MuestraNo, TipoMuestra, DeptId, Medio, Color, '+
                        '        Label, DescripcionLabel, Secuencia, RecId, COUNT(label) As Total FROM PTLabelTemp '+
//                        ' WHERE MuestraNo = :mues '+
                        ' WHERE SecuenciaAct = :sec '+
                        ' GROUP BY pacienteid, sucursal, Entradaid, MuestraNo, TipoMuestra, DeptId, '+
                        '          Medio, Color, Label, DescripcionLabel, Secuencia, RecId '+
                        ' ORDER BY secuencia ';

 qfindLabel.Parameters.ParamByName('sec').Value := _secact;
 qfindLabel.Open;

 If (qfindLabel.RecordCount > 0) Then
   Begin
     qfindLabel.First;
     While Not qfindLabel.Eof Do
       Begin
         If Not Buscar_Labels(qfindLabel.FieldByName('MuestraNo').Value,
                              qfindLabel.FieldByName('Label').Value) Then
           Begin
             Insertar_Label_Temp(qfindLabel.FieldByName('PacienteId').AsString, qfindLabel.FieldByName('Sucursal').AsString,
                                 qfindLabel.FieldByName('EntradaId').AsString, qfindLabel.FieldByName('MuestraNo').AsString,
                                 qfindLabel.FieldByName('TipoMuestra').AsString, qfindLabel.FieldByName('DeptId').AsString,
                                 qfindLabel.FieldByName('Medio').AsString, qfindLabel.FieldByName('Color').AsString,
                                 qfindLabel.FieldByName('Label').AsString, qfindLabel.FieldByName('DescripcionLabel').AsString,
                                 qfindLabel.FieldByName('Secuencia').AsInteger, strtoint64(qfindLabel.FieldByName('RecId').AsString));
           End;
           
         qfindLabel.Next;
       End;
   End;
end;


//Buscando el Label de la Prueba Registrada.
function TfrmActCobros.Buscar_Labels(_muestra: String; _label: String): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTLabel '+
                   ' WHERE MuestraNo = :num '+
                   ' AND Label = :lab ';
 qfind.Parameters.ParamByName('num').Value := _muestra;
 qfind.Parameters.ParamByName('lab').Value := _label;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;
end;



//Buscando el Label de la Prueba Registrada.
function TfrmActCobros.Find_Label(_muestra: String; _prueba: String): String;
begin
 qfindLabel := DM.NewQuery;

 qfindLabel.Close;
 qfindLabel.SQL.Text := ' SELECT * FROM PTLabelTemp '+
                        ' WHERE MuestraNo = :num '+
                        ' AND PruebaId = :pru ';
 qfindLabel.Parameters.ParamByName('num').Value := _muestra;
 qfindLabel.Parameters.ParamByName('pru').Value := _prueba;
 qfindLabel.Open;

 If (qfindLabel.RecordCount > 0) Then
   Begin
     If Not Buscar_Labels(qfindLabel.FieldByName('MuestraNo').Value,
                          qfindLabel.FieldByName('Label').Value) Then
       Begin
         Insertar_Label_Temp(qfindLabel.FieldByName('PacienteId').AsString, qfindLabel.FieldByName('Sucursal').AsString,
                             qfindLabel.FieldByName('EntradaId').AsString, qfindLabel.FieldByName('MuestraNo').AsString,
                             qfindLabel.FieldByName('TipoMuestra').AsString, qfindLabel.FieldByName('DeptId').AsString,
                             qfindLabel.FieldByName('Medio').AsString, qfindLabel.FieldByName('Color').AsString,
                             qfindLabel.FieldByName('Label').AsString, qfindLabel.FieldByName('DescripcionLabel').AsString,
                             qfindLabel.FieldByName('Secuencia').AsInteger, strtoint64(qfindLabel.FieldByName('RecId').AsString));
       end;

     result := qfindLabel.FieldByName('Label').AsString;
   end
 Else
   result := '';
end;


procedure TfrmActCobros.Insertar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                               _muestra: String; TipoMuestra: String; _departamento: String;
                                               _medio: String; _color: String; _label: String; _desc: String;
                                               _secuencia: Integer; _recid: Int64);
Var
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

  Qinsert.Close;
  Qinsert.SQL.Text := ' INSERT INTO PTLabel (MuestraNo, Secuencia, Sucursal, DeptId, '+
                      ' PacienteId, Descripcion, EntradaId, RecordId, PruebaId, Label, RecId) '+
                      ' VALUES (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10)';

  Qinsert.Parameters[0].Value := _muestra;
  Qinsert.Parameters[1].Value := _secuencia;
  Qinsert.Parameters[2].Value := _sucursal;
  Qinsert.Parameters[3].Value := _departamento;
  Qinsert.Parameters[4].Value := _paciente;
  Qinsert.Parameters[5].Value := _desc;
  Qinsert.Parameters[6].Value := _entrada;
  Qinsert.Parameters[7].Value := _recid;
  Qinsert.Parameters[8].Value := '';
  Qinsert.Parameters[9].Value := _label;
  Qinsert.Parameters[10].Value := DM.Get_Secuencia_Id;
  Qinsert.ExecSQL;

  FreeAndNil(Qinsert);
end;


function TfrmActCobros.ExistenPruebasProcesar : Boolean;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT TOP 1 * FROM PTEntradaPacienteDetalle '+
                   ' WHERE Refrecid = ' + qrEntradaPacienteRecId.AsString +
//                   ' AND TipoPrueba = ' + #39 + 'P' + #39 +
//                   ' AND TipoPrueba = ' + #39 + 'S' + #39 +
                   ' AND (TipoPrueba = '+#39+'P'+#39+' OR TipoPrueba = '+#39+'S'+#39+')' +
                   ' AND (Estatus = '+#39+'0'+#39+' OR Estatus = '+#39+'P'+#39+')';
//                   ' AND (Estatus = '+#39+'0'+#39+' or Estatus = '+#39+'2'+#39+')';
 qfind.Open;

 if (qfind.RecordCount > 0) then
   result := true
 else
   result := false;

 FreeAndNil(qfind);
end;


procedure TfrmActCobros.ActPruebas(_flebotomista : string; fecha : TDateTime; hora : string);
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;
{
  SecAct := DM.qrParametroSecuenciaAct.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuenciaAct.Value := DM.qrParametroSecuenciaAct.Value + 1;
  DM.qrParametro.Post;
}
  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;
  while not qrEntradaPacienteDetalle.Eof do
  begin
   if (qrEntradaPacienteDetalleEstatus.Value = '0') and (qrEntradaPacienteDetalleSeleccionar.Value = 0) then
   begin
    qrEntradaPacienteDetalle.Edit;
    qrEntradaPacienteDetalleEstatus.Value := 'T';
    qrEntradaPacienteDetalleSeleccionar.Value := 0;
    qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
    qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
    qrEntradaPacienteDetalleHoraEntrega.Value := hora;
    qrEntradaPacienteDetalle.Post;
   end
   else
    if (qrEntradaPacienteDetalleEstatus.Value = '0') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
    begin
{
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleEstatus.Value := 'P';
     qrEntradaPacienteDetalleSeleccionar.Value := False;
     qrEntradaPacienteDetalleFechaEntrega.Value := Null; // JUAN JOSE - FECHA EN BLANCO.
     qrEntradaPacienteDetalleHoraEntrega.Value := ''; // JUAN JOSE - FECHA EN BLANCO.
     qrEntradaPacienteDetalle.Post;
}
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleEstatus.Value := 'T';
     qrEntradaPacienteDetalleSeleccionar.Value := 0;
     qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
     qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
     qrEntradaPacienteDetalleHoraEntrega.Value := hora;
     qrEntradaPacienteDetalle.Post;
    end
    else
     if (qrEntradaPacienteDetalleEstatus.Value = 'P') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
     begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleEstatus.Value := 'T';
      qrEntradaPacienteDetalleSeleccionar.Value := 0;
      qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
      qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
      qrEntradaPacienteDetalleHoraEntrega.Value := hora;
      qrEntradaPacienteDetalle.Post;
     end
     else
      if (qrEntradaPacienteDetalleEstatus.Value = 'P') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
      begin
{
       qrEntradaPacienteDetalle.Edit;
       qrEntradaPacienteDetalleSeleccionar.Value := 0;
       qrEntradaPacienteDetalleFechaEntrega.Value := Null; // JUAN JOSE - FECHA EN BLANCO.
       qrEntradaPacienteDetalleHoraEntrega.Value := ''; // JUAN JOSE - FECHA EN BLANCO.
       qrEntradaPacienteDetalle.Post;
}
       qrEntradaPacienteDetalle.Edit;
       qrEntradaPacienteDetalleEstatus.Value := 'T';
       qrEntradaPacienteDetalleSeleccionar.Value := 0;
       qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
       qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
       qrEntradaPacienteDetalleHoraEntrega.Value := hora;
       qrEntradaPacienteDetalle.Post;
      end;

   qrEntradaPacienteDetalle.Next;

  end;
  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;

  RefrescarData;

end;


procedure TfrmActCobros.BtFacturaClick(Sender: TObject);
begin
  frmMain.LanzaVentana(-7995);
end;

procedure TfrmActCobros.BtProcesarClick(Sender: TObject);
begin
  if (ExistenPruebasProcesar) then
    Begin
      Act_Fecha;
      RefrescarData;
      frmMain.LanzaVentana(-8020);
    end
  else
    showmessage('No Existen Pruebas Para Procesar');
end;

procedure TfrmActCobros.BtImprimirClick(Sender: TObject);
begin
 inherited;
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
   Begin
     frmMain.Muestra_Todos := True;
     frmMain.LanzaVentana(-8028);
   End
 Else
   Begin
    Beep;
    Raise exception.CreateFmt('Debe Seleccionar Una Prueba Poder Imprimir el Label.',[]);
   End;

// ImprimirLabels;
end;

procedure TfrmActCobros.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Toma de Muestra';

  urgente := TcxStyle.Create(Self);
  urgente.Color := DM.ColorUrgente;
  urgente.TextColor := ClBlack;

  reportado := TcxStyle.Create(Self);
//  reportado.Color := DM.ColorReady;
  reportado.Color := DM.ColorConsulta;
  reportado.TextColor := ClBlack;

  doctor := TcxStyle.Create(Self);
//  doctor.Color := $0005EAD9;
  doctor.Color := DM.ColorBorra;
  doctor.TextColor := ClNavy;

  frmMain.Exis_Muestra := True;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;

  SetColorTo(dm.ColorModifica);

  DM.qrFlebotomistas.Close;
  DM.qrFlebotomistas.Open;

  DM.qrUnidades.Close;
  DM.qrUnidades.Open;
end;


procedure TfrmActCobros.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra  := False;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;
end;


procedure TfrmActCobros.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;

procedure TfrmActCobros.qrEntradaPacienteDetalleCalcFields(
  DataSet: TDataSet);
var
 qfind,qfind2 : TADOQuery;
begin
  inherited;
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := 'SELECT * FROM PTPrueba Where Pruebaid = ' + #39 + qrEntradaPacienteDetallePruebaid.AsString + #39;
  qfind.Open;

  qrEntradaPacienteDetalleCondPac.Value := qfind.FieldByName('CondPaciente').AsString;
  qrEntradaPacienteDetalleCondMuestra.Value := qfind.FieldByName('CondMuestra').AsString;
  qrEntradaPacienteDetalleDiasResultado.Value := qfind.FieldByName('DiasResultado').AsInteger;

  if (qfind.FieldByName('CodDiaProc').AsString <> '') then
  begin
    qfind2 := DM.NewQuery;

    qfind2.Close;
    qfind2.SQL.Text := 'SELECT * FROM PTDiasProcesamiento Where CodDiasProc = ' + #39 + qfind.FieldByName('CodDiaProc').AsString + #39;
    qfind2.Open;

    qrEntradaPacienteDetalleDiasProcesamiento.Value := qfind2.FieldByName('Descripcion').AsString;

    FreeAndNil(qfind2);
  end;

  FreeAndNil(qfind);
end;

procedure TfrmActCobros.qrMaterialesFacturaCantidadValidate(Sender: TField);
begin
  inherited;

  If ( qrMaterialesFacturaCantidad.Value < 1 ) Or ( qrMaterialesFacturaCantidad.IsNull ) Then
//     ( qrMaterialesFacturaCantidad.Value <  qrMaterialesFacturaCantidad.OldValue ) Then
    Raise exception.CreateFmt('La Cantidad de Materiales No Puede Ser Menor Que el Valor Original.', []);
end;


procedure TfrmActCobros.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;


procedure TfrmActCobros.BuscarDatos;
begin
  Postear;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := recid;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := recid;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.Edit;

  If (qrEntradaPacienteDetalleSecuenciaAct.Value > 0) then
    SecuenciaLabel := qrEntradaPacienteDetalleSecuenciaAct.Value;

  VerCaption;
{
  if (frmMain.Exis_Material = True) then
    Begin
     frmMain.frmMateriales.Close;
    end;
}
 BuscarMateriales(qrEntradaPacienteRecid.Value);

// Buscar_Labels_Temp(qrEntradaPacienteDetalleSecuenciaAct.Value);
 Buscar_Labels_Temp(SecuenciaLabel);
end;


procedure TfrmActCobros.BuscarMateriales(registro : Integer);
begin
 qrMaterialesFactura.Close;
 qrMaterialesFactura.Parameters[0].Value := registro;
 qrMaterialesFactura.Open;

 qrMaterialesFactura.Edit;
end;


function TfrmActCobros.BuscarDia(dia: Integer) : Integer;
Var
 valor : Integer;
begin
 valor := 0;

 If (dia = 1) And (Dias.Lunes > 0) then
   valor := 1;

 If (dia = 2) And (Dias.Martes > 0) then
   valor := 1;

 If (dia = 3) And (Dias.Miercoles > 0) then
   valor := 1;

 If (dia = 4) And (Dias.Jueves > 0) then
   valor := 1;

 If (dia = 5) And (Dias.Viernes > 0) then
   valor := 1;

 If (dia = 6) And (Dias.Sabado > 0) then
   valor := 1;

 If (dia = 7) And (Dias.Domingo > 0) then
   valor := 1;

 Result := valor;
end;


function TfrmActCobros.FechaPrometida(Prueba: string) : TDate;
Var
 fecha : TDate;
 qtest : TADOQuery;
 qfrec : TADOQuery;
 idx, valor, conteo, semana, proceso : Integer;
begin
 valor := 0;
 conteo := 0;
 semana := 0;
 proceso := 0;
 idx := 0;

 Dias.Lunes := 0;
 Dias.Martes := 0;
 Dias.Miercoles := 0;
 Dias.Jueves := 0;
 Dias.Viernes := 0;
 Dias.Sabado := 0;
 Dias.Domingo := 0;

 qtest := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);

 semana := DayOfTheWeek(DM.SystemDate);

 If (qtest.RecordCount > 0) Then
  Begin
    qfrec := DM.find('SELECT * FROM PTDiasProcesamiento WHERE CodDiasProc = :cod',
                     qtest.FieldByName('CodDiaProc').AsString);

    If (qfrec.RecordCount > 0) Then
      Begin
        If (qfrec.FieldByName('Lunes').AsInteger = 1) Then
          Begin
            Dias.Lunes := 1;
            valor := valor + 1;
          End;

        If (qfrec.FieldByName('Martes').AsInteger = 1) Then
          Begin
            Dias.Martes := 2;
            valor := valor + 2;
          End;

        If (qfrec.FieldByName('Miercoles').AsInteger = 1) Then
          Begin
            Dias.Miercoles := 3;
            valor := valor + 3;
          End;

        If (qfrec.FieldByName('Jueves').AsInteger = 1) Then
          Begin
            Dias.Jueves := 4;
            valor := valor + 4;
          End;

        If (qfrec.FieldByName('Viernes').AsInteger = 1) Then
          Begin
            Dias.Viernes := 5;
            valor := valor + 5;
          End;

        If (qfrec.FieldByName('Sabado').AsInteger = 1) Then
          Begin
            Dias.Sabado := 6;
            valor := valor + 6;
          End;

        If (qfrec.FieldByName('Domingo').AsInteger = 1) Then
          Begin
            Dias.Domingo := 7;
            valor := valor + 7;
          End;
      End;

    If ( valor > 0 ) Then
      Begin
       conteo := 0;
       idx  := semana - 1;
       Repeat
       Inc(idx);
       Inc(conteo);
       If (idx > 7) Then idx := idx - 7;

       Proceso := BuscarDia(idx);
       Until (Proceso > 0) Or (conteo = 7);

       If (Proceso > 0) Then
         Fecha := DM.SystemDate + (conteo - 0) + qtest.FieldByName('DiasResultado').AsInteger
       Else
         Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
      End
    Else
      Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
  End;

 Result := Fecha;
end;


procedure TfrmActCobros.MarcarUrgente;
Var
 busq : String;
 qact : TADOQuery;
begin
 If DM.Mensaje('Desea Cambiar el Nivel de URGENCIA de La Prueba?' ,mb_yesno) = id_yes Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;

     If (qrEntradaPacienteDetalleUrgente.Value = 1) then
       busq := ' UPDATE PTEntradaPacienteDetalle SET Urgente = 0 '
     Else
       busq := ' UPDATE PTEntradaPacienteDetalle SET Urgente = 1 ';

     busq := busq + ' WHERE RefRecid = :rec '+
                    ' AND Secuencia = :sec '+
                    ' AND pruebaId = :pru ';

     qact.SQL.Text := busq;
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('el Nivel de URGENCIA La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') Fue Cambiado Exitosamente.!!!');

     RefrescarData;
   end;
end;


procedure TfrmActCobros.VerPendiente;
Var
 qact : TADOQuery;
begin
 If ( DM.Mensaje('Desea Marcar Esta Prueba Como Pendiente?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                      ' HoraEntrega = :hor, '+
                      ' FechaEntrega = :fec, '+
                      ' Seleccionar = 1, '+
                      ' Estatus = '+ #39 + 'P' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters.ParamByName('hor').Value := '';
     qact.Parameters.ParamByName('fec').Value := '01-01-1900';
     qact.Parameters.ParamByName('rec').Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters.ParamByName('sec').Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') Esta Pendiente.!!!');

     RefrescarData;
   end;
end;


procedure TfrmActCobros.No_Procesar;
Var
 qact : TADOQuery;
begin
 If ( DM.Mensaje('Esta Seguro de que Esta Prueba NO Se Procesara?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                      ' Estatus = '+ #39 + 'N' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');

     RefrescarData;
   end;
end;


procedure TfrmActCobros.RefrescarData;
Var
  Bm : TBookMark;
begin
  Bm := qrEntradaPacienteDetalle.GetBookmark;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteRecId.Value;
  qrEntradaPacienteDetalle.Open;

  SetColorTo(dm.ColorModifica);

  qrEntradaPacienteDetalle.DisableControls;

  qrEntradaPacienteDetalle.GotoBookmark(Bm);
  qrEntradaPacienteDetalle.FreeBookmark(Bm);

  qrEntradaPacienteDetalle.EnableControls;

  qrEntradaPacienteDetalle.Edit;

  VerCaption;

//  BuscarMateriales(qrEntradaPacienteRecId.Value);
end;


procedure TfrmActCobros.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If (qrEntradaPacienteResultadoDoctor.Value = 1) Then
    AStyle := doctor;

//  If ARecord.Values[cxGrid1DBTableView1Estatus.Index] = 'R' then
//    AStyle := reportado;

//  If ARecord.Values[cxGrid1DBTableView1Urgente.Index] = 1 then
//    AStyle := urgente;
end;


procedure TfrmActCobros.FindMuestra;
Var
 qfind  : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM PTEntradaPaciente WHERE MuestraNo = :reg', muestranumber);

 if (qfind.RecordCount > 0) then
   Begin
     recid := qfind.FieldByName('Recid').Value;
     BuscarDatos;
   end
 Else
   Raise exception.CreateFmt('El Numero de Muestra: ('+ muestranumber +') NO Existe.', []);

 FreeAndNil(qfind);
end;


procedure TfrmActCobros.EdMuestraDblClick(Sender: TObject);
begin
  frmMain.LanzaVentana(-8025);
end;


//Cambiando el Caption del Toma de Muestra.
Procedure TfrmActCobros.VerCaption;
begin
  If (qrEntradaPacienteResultadoDoctor.Value = 1) Then
    Begin
      titulo := 'Toma de Muestra. (Los Resultados Seran Enviados al Consultorio.)';
      cxGrid1.Hint := 'Los Resultados Seran Enviados al Consultorio.';
      cxGrid1.ShowHint := True;
    end
  Else
    Begin
      titulo := 'Toma de Muestra';
      cxGrid1.Hint := '';
      cxGrid1.ShowHint := False;
    end;
end;



procedure TfrmActCobros.Act_Fecha;
begin
  fecha_label := Date;
  hora_label  := Copy(DM.Buscar_Hora_Actual, 1, 20); //'04:00:00 p.m.'; - //Copy(TimeToStr(Time), 1, 20);

  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;
  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
    qrEntradaPacienteDetalle.Edit;
//    qrEntradaPacienteDetalleEstatus.Value := 'T';
//    qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
    qrEntradaPacienteDetalleFechaEntrega.Value := FechaPrometida(qrEntradaPacienteDetallePruebaId.Value);
//    qrEntradaPacienteDetalleHoraEntrega.Value := Copy(TimeToStr(Time), 1, 20); //'04:00:00 p.m.';
    qrEntradaPacienteDetalleHoraEntrega.Value := Copy(DM.Buscar_Hora_Actual, 1, 20);

     if (qrEntradaPacienteDetalleFechaEntrega.Value > fecha_label) then
       fecha_label := qrEntradaPacienteDetalleFechaEntrega.Value;

    qrEntradaPacienteDetalle.Next;
   End;

  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;
end;


procedure TfrmActCobros.InsertarMaterial;
Var
 qfind, qinsert : TADOQuery;
begin
  qinsert := DM.NewQuery;
  qinsert.Close;

  qinsert.SQL.Text := ' INSERT INTO PTMaterialTemporal '+
                      ' (refrecid, MaterialId, Cantidad, pruebaid, LineaNo) '+
                      ' VALUES (:0,:1,:2,:3,:4,:5) ';

  qinsert.Parameters[0].Value := qrEntradaPacienteRecid.Value;
  qinsert.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.value;
  qinsert.Parameters[2].Value := qfind.FieldByName('MaterialId').AsString;
  qinsert.Parameters[3].Value := qfind.FieldByName('Cantidad').AsFloat;
  qinsert.Parameters[4].Value := qrEntradaPacienteDetallePruebaid.value;
  qinsert.Parameters[5].Value := Buscar_Linea();
  qinsert.ExecSQL;

  FreeAndNil(qinsert);

  FreeAndNil(qfind);
end;



function TfrmActCobros.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(LineaNo) FROM PTMaterialTemporal ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


procedure TfrmActCobros.Postear;
begin
// If ( qrEntradaPacienteDetalle.RecordCount > 0) Then
 If ( qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] ) Then
   Begin
    qrEntradaPacienteDetalle.DisableControls;
    qrEntradaPacienteDetalle.First;

    While Not qrEntradaPacienteDetalle.Eof Do
     Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalle.Post;

      qrEntradaPacienteDetalle.Next;
     End;

    qrEntradaPacienteDetalle.First;
    qrEntradaPacienteDetalle.EnableControls;
   End;
End;


procedure TfrmActCobros.Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 qfind      : TADOQuery;
 Qinsert    : TADOQuery;
begin
  qfind := DM.NewQuery;
  Qinsert := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabel a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.PruebaId = '+ #39 + qrEntradaPacienteDetallePruebaId.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.RecId, a.Secuencia';
  qfind.Open;

  Valor := qrEntradaPacienteMuestraNo.Value + '-' +
          Qfind.FieldByName('Secuencia').AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento (MuestraNo, PruebaID, RecordId, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label, RecId) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11, :12)';

  Qinsert.Parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrEntradaPacienteDetallePruebaId.Value;
  Qinsert.Parameters[2].Value := Qfind.FieldByName('Recid').AsString;
  Qinsert.Parameters[3].Value := Qfind.FieldByName('Secuencia').AsInteger;
  Qinsert.Parameters[4].Value := Qfind.FieldByName('Recid').AsString;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
  Qinsert.Parameters[6].Value := Qfind.FieldByName('DeptId').AsString;
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 0; //3;
  Qinsert.Parameters[11].Value := Qfind.FieldByName('Label').AsString; //Valor;
  Qinsert.Parameters[12].Value := DM.Get_Secuencia_Id;
  Qinsert.ExecSQL;

  FreeAndNil(qfind);
  FreeAndNil(Qinsert);

  //Imprimiendo el Label Actual.
end;



END.
