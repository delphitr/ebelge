unit foriba;

interface

uses
  System.SysUtils, integrator, ubltr, araclar, foriba_soap, Soap.SOAPHTTPClient,
  Soap.SOAPHTTPTrans, Soap.WSDLNode, System.NetEncoding,
  System.Generics.Collections, Soap.XSBuiltIns;

type
   // Foriba
   TForiba = class(TInterfacedObject, IIntegrator)
   private
      private const TestURL = 'https://efaturawstest.fitbulut.com/ClientEInvoiceServices/ClientEInvoiceServicesPort.svc';
      private const CanliURL = 'https://efaturaws.fitbulut.com/ClientEInvoiceServices/ClientEInvoiceServicesPort.svc';

      private URL, Username, Password: string;
      private HTTPRIO: THTTPRIO;
      private Client: ClientEInvoiceServicesPort;

      procedure HTTPReqResp_WSBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
   public
      public VKN, Etiket: string;

      function GonderUblTr(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
      procedure GonderZarf(Zarf: AnsiString);
      function DurumSorgula(ZarfETTN, FaturaETTN: string): TSonuc;
      function FaturaSorgula(FaturaETTN: string): TSonuc;
      function ZarfSorgula(ZarfETTN: string): TSonuc;
      function GetirPdf(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
      function MukellefListesi(): TObjectList<TMukellef>; overload;
      function MukellefListesi(VKN: string): TObjectList<TMukellef>; overload;
      function GetirHtml(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
      function BelgeListesi(Yon: TYon; Belge: TBelge; Baslangic, Bitis: TDateTime): TObjectList<TFatura>;
      function GetirKontor(): Double;

     // constructor
     constructor Create(VKN, Etiket, Username, Password : String; IsTest: Boolean = False);
   end;

   const CUST_INV_ID = 'CUST_INV_ID';

implementation

uses
  Soap.InvokeRegistry, hatalar, Winapi.WinInet;

constructor TForiba.Create(VKN, Etiket, Username, Password : String; IsTest: Boolean = False);
begin
  Self.VKN := VKN;
  Self.Etiket := Etiket;
  if (IsTest) then
    URL := TestURL
  else
    URL := CanliURL;
  Self.Username := Username;
  Self.Password := Password;
  HTTPRIO := THTTPRIO.Create(nil);
  HTTPRIO.HTTPWebNode.UserName := Username;
  HTTPRIO.HTTPWebNode.Password := Password;
  HTTPRIO.HTTPWebNode.OnBeforePost := HTTPReqResp_WSBeforePost;
  Client := GetClientEInvoiceServicesPort(False, URL, HTTPRIO);
end;

function TForiba.GetirPdf(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
begin
  raise Exception.Create('Foriba PDF alımını desteklemiyor!');
end;

procedure TForiba.GonderZarf(Zarf: AnsiString);
begin
  raise Exception.Create('Foriba UblTr gönderimi desteklemiyor!');
end;

function TForiba.GetirKontor: Double;
begin
  raise Exception.Create('Foriba UblTr gönderimi desteklemiyor!');
end;

function TForiba.GonderUblTr(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
var
  Request: sendUBLRequest;
  Response: sendUBLResponse;
begin
  Request := sendUBLRequest.Create;
  Request.VKN_TCKN := UblTr.Tedarikci.VKN;
  Request.SenderIdentifier := GondericiEtiket;
  Request.ReceiverIdentifier := AliciEtiket;
  Request.DocType := 'INVOICE';
  Request.DocData := TBytes2TByteDynArray(Sikistir(UblTr.GetirStream, UblTr.GetirEttnMetin + '.xml'));
  try
    Response := Client.sendUBL(Request);
    if Length(Response) <> 1 then
      raise EDonusum.Create('Beklenen cevap gelmedi!');
    Result := TSonuc.Create;
    Result.ZarfETTN := Response[0].EnvUUID;
    Result.ETTN := Response[0].UUID;
    Result.FaturaNo := Response[0].ID;
    Result.ERPNo := Response[0].CustInvID;
  except
    on E: ProcessingFault do
      if (E.Message = 'Unauthorized') then
        raise EYetki.Create('Yetki hatası!')
      else
        raise EDonusum.Create(E.Message_);
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

function TForiba.DurumSorgula(ZarfETTN, FaturaETTN: string): TSonuc;
begin
  if ZarfETTN <> EmptyStr then
    Result := ZarfSorgula(ZarfETTN)
  else if FaturaETTN <> EmptyStr then
    Result := FaturaSorgula(FaturaETTN)
  else
    raise Exception.Create('Zarf ya da fatura ETTN bilgisi gereklidir!');
end;

function TForiba.ZarfSorgula(ZarfETTN: string): TSonuc;
var
  Request: getEnvelopeStatusRequest;
  Response: getEnvelopeStatusResponse;
  Code: Integer;
begin
  Request := getEnvelopeStatusRequest.Create;
  Request.UUID := [ZarfETTN];
  Request.VKN_TCKN := VKN;
  Request.Identifier := Etiket;
  try
    Response := Client.getEnvelopeStatus(Request);
  except
    on E: ProcessingFault do
      if (E.Message = 'Unauthorized') then
        raise EYetki.Create('Yetki hatası!')
      else
        raise EDonusum.Create(E.Message_);
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  if (Length(Response) <> 1) then
    raise EDonusum.Create('Beklenmedik cevap alındı!');
  if (Response[0].UUID <> ZarfETTN) then
    raise EDonusum.Create('Beklenen cevap gelmedi!');
  Code := Integer.Parse(Response[0].ResponseCode);
  case Code of
    1000..1100: Result := TSonuc.Yarat(ZarfETTN, TDurum.Isleniyor);
    1101..1199, 1230:  Result := TSonuc.Yarat(ZarfETTN, TDurum.Hatali);
    1300: Result := TSonuc.Yarat(ZarfETTN, TDurum.Basarili);
    else
      Result := TSonuc.Yarat(ZarfETTN, TDurum.Isleniyor);
  end;
end;


function TForiba.FaturaSorgula(FaturaETTN: string): TSonuc;
begin
  raise Exception.Create('Foriba fatura sorgulama desteklemiyor!');
end;

procedure TForiba.HTTPReqResp_WSBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  Header: string;
begin
  Header := 'Authorization: Basic ' + TBase64Encoding.Base64.Encode(HTTPReqResp.UserName + ':' + HTTPReqResp.Password);
  if not HttpAddRequestHeaders(Data, PChar(Header), Length(Header), HTTP_ADDREQ_FLAG_ADD) then
    EDonusum.Create('HttpAddRequestHeaders :' + GetLastError().ToString());
end;

function TForiba.MukellefListesi(): TObjectList<TMukellef>;
begin
  Result := MukellefListesi(EmptyStr);
end;

function TForiba.MukellefListesi(VKN: string): TObjectList<TMukellef>;
var
  Request: getUserListRequest;
  Response: getUserListResponse;
  i: Integer;
begin
  Request := getUserListRequest.Create;
  Request.VKN_TCKN := Self.VKN;
  Request.Identifier := Etiket;
  Request.Role := 'PK';
  if Trim(VKN) <> EmptyStr then
    Request.Filter_VKN_TCKN := VKN;
  try
    Response := Client.getUserList(Request);
  except
    on E: ProcessingFault do
      if (E.Message = 'Unauthorized') then
        raise EYetki.Create('Yetki hatası!')
      else
        raise EDonusum.Create(E.Message_);
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  Result := TObjectList<TMukellef>.Create;
  for i := 0 to Length(Response) - 1 do
    Result.Add(TMukellef.Create(Response[i].Identifier, Response[i].Alias, Response[i].Title, Response[i].Type_, Response[i].RegisterTime.AsDateTime, Response[i].FirstCreationTime.AsDateTime))
end;

function TForiba.GetirHtml(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
var
  Request: getInvoiceViewRequest;
  Response: getInvoiceViewResponse;
  i: Integer;
begin
  Request := getInvoiceViewRequest.Create;
  Request.VKN_TCKN := Self.VKN;
  Request.Identifier := Etiket;
  Request.UUID := ETTN;
  if Yon = TYon.GIDEN then
    Request.Type_ := 'OUTBOUND'
  else
    Request.Type_ := 'INBOUND';
  try
    Response := Client.getInvoiceView(Request);
  except
    on E: ProcessingFault do
      if (E.Message = 'Unauthorized') then
        raise EYetki.Create('Yetki hatası!')
      else
        raise EDonusum.Create(E.Message_);
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  Result := TByteDynArray2TBytes(Response.DocData);
end;

function TForiba.BelgeListesi(Yon: TYon; Belge: TBelge; Baslangic, Bitis: TDateTime): TObjectList<TFatura>;
var
  Request: getUBLListRequest;
  Response: getUBLListResponse;
  i: Integer;
begin
  Request := getUBLListRequest.Create;
  Request.VKN_TCKN := Self.VKN;
  Request.Identifier := Etiket;
  case Belge of
    FATURA: Request.DocType := 'INVOICE';
    ZARF: Request.DocType := 'ENVELOPE';
    CEVAP: Request.DocType := 'APP_RESP';
    YANIT: Request.DocType := 'SYS_REP';
  end;
  Request.FromDate := TXSDateTime.Create;
  Request.FromDate.AsDateTime := Baslangic;
//  Request.FromDate.Hour := 0;
//  Request.FromDate.Minute := 0;
//  Request.FromDate.Second := 0;
//  Request.FromDate.Millisecond := 0;
  Request.ToDate := TXSDateTime.Create;
  Request.ToDate.AsDateTime := Bitis;
//  Request.ToDate.Hour := 23;
//  Request.ToDate.Minute := 59;
//  Request.ToDate.Second := 59;
//  Request.ToDate.Millisecond := 999;

  if Yon = TYon.GIDEN then
    Request.Type_ := 'OUTBOUND'
  else
    Request.Type_ := 'INBOUND';
  try
    Response := Client.getUBLList(Request);
  except
    on E: ProcessingFault do
      if (E.Message = 'Unauthorized') then
        raise EYetki.Create('Yetki hatası!')
      else
        raise EDonusum.Create(E.Message_);
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  Result := TObjectList<TFatura>.Create;
  for i := 0 to Length(Response) - 1 do
    Result.Add(TFatura.Create(Response[i].UUID, Response[i].Identifier, Response[i].VKN_TCKN, Response[i].EnvType, Response[i].EnvUUID, Response[i].ID, Response[i].CustInvID, Response[i].InsertDateTime.AsDateTime));
end;


end.
