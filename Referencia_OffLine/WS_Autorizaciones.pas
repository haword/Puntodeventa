// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://204.126.128.19:9823/wsarspalic/ArspalicWS/WS_Autorizaciones.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (09/07/2013 08:33:56 p.m. - 1.33.2.5)
// ************************************************************************ //

unit WS_Autorizaciones;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"

  WSvalida_pass_1Result = class;                { "http://tempuri.org/" }
  WSvalida_afiliado_2Result = class;            { "http://tempuri.org/" }
  WSvalida_diagnostico_3Result = class;         { "http://tempuri.org/" }
  WSconsulta_cobertura_4Result = class;         { "http://tempuri.org/" }
  WSProcesa_reclamacion_5Result = class;        { "http://tempuri.org/" }
  WScancela_reclamacion_6Result = class;        { "http://tempuri.org/" }
  WSConsulta_reclamacion_7Result = class;       { "http://tempuri.org/" }
  WSConsulta_afiliadoResult = class;            { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSvalida_pass_1Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSvalida_afiliado_2Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSvalida_diagnostico_3Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSconsulta_cobertura_4Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSProcesa_reclamacion_5Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WScancela_reclamacion_6Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSConsulta_reclamacion_7Result = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  WSConsulta_afiliadoResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : WS_AutorizacionesSoap
  // service   : WS_Autorizaciones
  // port      : WS_AutorizacionesSoap
  // URL       : http://204.126.128.19:9823/wsarspalic/ArspalicWS/WS_Autorizaciones.asmx
  // ************************************************************************ //
  WS_AutorizacionesSoap = interface(IInvokable)
  ['{1BC6A25C-E6ED-C8AA-93A6-603593072A19}']
    function  System_Name: WideString; stdcall;
    function  WSvalida_pass_1(const p_usuario: WideString; const p_clave: WideString): WSvalida_pass_1Result; stdcall;
    function  WSvalida_afiliado_2(const p_afiliado: WideString; const p_codprod: WideString; const tipo: WideString; const P_usuario: WideString; const p_detalle: WideString): WSvalida_afiliado_2Result; stdcall;
    function  WSvalida_diagnostico_3(const p_numsession: WideString; const p_diagnostico: WideString): WSvalida_diagnostico_3Result; stdcall;
    function  WSconsulta_cobertura_4(const p_numsession: WideString; const p_tip_pla_afi: WideString; const P_COBERTURA: WideString; const P_TIP_COBERTURA: WideString): WSconsulta_cobertura_4Result; stdcall;
    function  WSProcesa_reclamacion_5(const p_numsession: WideString; const p_tip_pla_afi: WideString; const P_CUR_COBERTURA: WideString; const P_FRECUENCIAS: WideString; const TipoRemitente: WideString; const P_COD_REMITENTE: WideString; const DESC_REMITENTE: WideString; const P_ORIGEN: WideString; const P_TIP_COBERTURA: WideString): WSProcesa_reclamacion_5Result; stdcall;
    function  WScancela_reclamacion_6(const p_codprod: WideString; const p_afiliado: WideString; const P_RECLAMACION: WideString; const P_NUMSESSION: WideString; const p_comentario: WideString): WScancela_reclamacion_6Result; stdcall;
    function  WSConsulta_reclamacion_7(const p_codprod: WideString; const p_ano: WideString; const p_ramo: WideString; const P_reclamo: WideString; const p_tipo: WideString; const p_usuario: WideString): WSConsulta_reclamacion_7Result; stdcall;
    function  WSConsulta_afiliado(const p_numsession: WideString): WSConsulta_afiliadoResult; stdcall;
  end;

function GetWS_AutorizacionesSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WS_AutorizacionesSoap;


implementation

function GetWS_AutorizacionesSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WS_AutorizacionesSoap;
const
  defWSDL = 'http://204.126.128.19:9823/wsarspalic/ArspalicWS/WS_Autorizaciones.asmx?WSDL';
  defURL  = 'http://204.126.128.19:9823/wsarspalic/ArspalicWS/WS_Autorizaciones.asmx';
  defSvc  = 'WS_Autorizaciones';
  defPrt  = 'WS_AutorizacionesSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WS_AutorizacionesSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(WS_AutorizacionesSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WS_AutorizacionesSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WS_AutorizacionesSoap), ioDocument);
  RemClassRegistry.RegisterXSClass(WSvalida_pass_1Result, 'http://tempuri.org/', 'WSvalida_pass_1Result');
  RemClassRegistry.RegisterXSClass(WSvalida_afiliado_2Result, 'http://tempuri.org/', 'WSvalida_afiliado_2Result');
  RemClassRegistry.RegisterXSClass(WSvalida_diagnostico_3Result, 'http://tempuri.org/', 'WSvalida_diagnostico_3Result');
  RemClassRegistry.RegisterXSClass(WSconsulta_cobertura_4Result, 'http://tempuri.org/', 'WSconsulta_cobertura_4Result');
  RemClassRegistry.RegisterXSClass(WSProcesa_reclamacion_5Result, 'http://tempuri.org/', 'WSProcesa_reclamacion_5Result');
  RemClassRegistry.RegisterXSClass(WScancela_reclamacion_6Result, 'http://tempuri.org/', 'WScancela_reclamacion_6Result');
  RemClassRegistry.RegisterXSClass(WSConsulta_reclamacion_7Result, 'http://tempuri.org/', 'WSConsulta_reclamacion_7Result');
  RemClassRegistry.RegisterXSClass(WSConsulta_afiliadoResult, 'http://tempuri.org/', 'WSConsulta_afiliadoResult');

end.