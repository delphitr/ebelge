unit kolaysoft;

interface

uses
  System.SysUtils, integrator, ubltr, araclar, kolaysoft_ef, kolaysoft_ea, Soap.SOAPHTTPClient,
  Soap.SOAPHTTPTrans, Soap.WSDLNode, System.NetEncoding, kolaysoft_qd,
  System.Generics.Collections, Soap.XSBuiltIns, Data.FmtBcd;

type
   // Foriba
   TKolaySoft = class(TInterfacedObject, IIntegrator)
   private
      private const EFTestURL = 'http://servis.smartdonusum.com/InvoiceService/InvoiceWS';
      private const EFCanliURL = 'http://servis.smartdonusum.com/InvoiceService/InvoiceWS';

      private const QDTestURL = 'http://servis.smartdonusum.com/QueryInvoiceService/QueryDocumentWS';
      private const QDCanliURL = 'http://servis.smartdonusum.com/QueryInvoiceService/QueryDocumentWS';

      private const EATestURL = 'http://servis.smartdonusum.com/EArchiveInvoiceService/EArchiveInvoiceWS';
      private const EACanliURL = 'http://servis.smartdonusum.com/EArchiveInvoiceService/EArchiveInvoiceWS';

      private Format : TFormatSettings;

      private EFURL, QDURL, EAURL, Username, Password: string;
      private EFHTTPRIO: THTTPRIO;
      private EFClient: InvoiceWS;
      private QDHTTPRIO: THTTPRIO;
      private QDClient: QueryDocumentWS;
      private EAHTTPRIO: THTTPRIO;
      private EAClient: kolaysoft_ea.EArchiveInvoiceWS;

      procedure HTTPReqResp_WSBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
      function Tarih(Metin: string): TDate;
      function Metin(TarihSaat: TDateTime): string;
      function GetirEFDosya(Yon: TYon; ETTN, Tip: string): TBytes;
      function GetirEADosya(Yon: TYon; ETTN, Tip: string): TBytes;
      function GonderEFatura(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
      function GonderEArsiv(UblTr: TUblTr): TSonuc;
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
  Soap.InvokeRegistry, hatalar, Winapi.WinInet, Winapi.Windows;

constructor TKolaySoft.Create(VKN, Etiket, Username, Password : String; IsTest: Boolean = False);
begin
  Self.VKN := VKN;
  Self.Etiket := Etiket;
  if (IsTest) then
  begin
    EFURL := EFTestURL;
    QDURL := QDTestURL;
    EAURL := EATestURL;
  end
  else
  begin
    EFURL := EFCanliURL;
    QDURL := QDCanliURL;
    EAURL := EACanliURL;
  end;
  Self.Username := Username;
  Self.Password := Password;
  EFHTTPRIO := THTTPRIO.Create(nil);
  EFHTTPRIO.HTTPWebNode.UserName := Username;
  EFHTTPRIO.HTTPWebNode.Password := Password;
  EFHTTPRIO.HTTPWebNode.OnBeforePost := HTTPReqResp_WSBeforePost;
  EFClient := GetInvoiceWS(False, EFURL, EFHTTPRIO);

  QDHTTPRIO := THTTPRIO.Create(nil);
  QDHTTPRIO.HTTPWebNode.UserName := Username;
  QDHTTPRIO.HTTPWebNode.Password := Password;
  QDHTTPRIO.HTTPWebNode.OnBeforePost := HTTPReqResp_WSBeforePost;
  QDClient := GetQueryDocumentWS(False, QDURL, QDHTTPRIO);

  EAHTTPRIO := THTTPRIO.Create(nil);
  EAHTTPRIO.HTTPWebNode.UserName := Username;
  EAHTTPRIO.HTTPWebNode.Password := Password;
  EAHTTPRIO.HTTPWebNode.OnBeforePost := HTTPReqResp_WSBeforePost;
  EAClient := GetEArchiveInvoiceWS(False, EAURL, EAHTTPRIO);

  Format := TFormatSettings.Create(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US));
  Format.DateSeparator := '-';
  Format.ShortDateFormat := 'yyyy-mm-dd';
  Format.LongDateFormat := 'yyyy-mm-dd hh:mm:ss.n';
end;

function TKolaySoft.GetirKontor: Double;
var
  Response: kolaysoft_ef.CreditInfo;
begin
  Response := EFClient.getCustomerCreditCount(Self.VKN);
  if (Response.code <> '000') then
    raise EDonusum.Create(Response.code + ': ' + Response.explanation);
  GetirKontor := BcdToDouble(Response.remainCredit.AsBcd);
end;

function TKolaySoft.GonderUblTr(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
begin
    if UblTr.GetirProfil = TSenaryo.EARSIVFATURA then
      GonderUblTr := GonderEArsiv(UblTr)
    else
      GonderUblTr := GonderEFatura(UblTr, GondericiEtiket, AliciEtiket);
end;

function TKolaySoft.GonderEFatura(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
var
  Request: updateInvoice;
  Response: updateInvoiceResponse;
begin
  Request := updateInvoice.Create();
  SetLength(Request, 1);
  Request[0] := kolaysoft_ef.InputDocument.Create;
  Request[0].documentUUID := UblTr.GetirEttnMetin;
  Request[0].sourceUrn := GondericiEtiket;
  Request[0].destinationUrn := AliciEtiket;
  Request[0].documentDate := UblTr.GetirFaturaTarihiString;
  Request[0].documentId := UblTr.GetirFaturaNo;
  Request[0].xmlContent := UblTr.GetirAnsiString;
  try
    Response := EFClient.sendInvoice(Request);
    if Length(Response) <> 1 then
      raise EDonusum.Create('Beklenen cevap gelmedi!');
    if (Response[0].code <> '000') then
        raise EDonusum.Create(Response[0].code + ': ' + Response[0].cause + ' - ' + Response[0].explanation);
    Result := TSonuc.Create;
    Result.ETTN := Response[0].documentUUID;
    Result.FaturaNo := Response[0].documentID;
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

function TKolaySoft.GonderEArsiv(UblTr: TUblTr): TSonuc;
var
  Request: sendInvoiceWithoutId;
  Response: sendInvoiceWithoutIdResponse;
begin
  Request := sendInvoiceWithoutId.Create();
  SetLength(Request, 1);
  Request[0] := InputDocument.Create;
  Request[0].documentUUID := UblTr.GetirEttnMetin;
  Request[0].documentDate := UblTr.GetirFaturaTarihiString;
  Request[0].documentId := UblTr.GetirFaturaNo;
  Request[0].xmlContent := UblTr.GetirAnsiString;
  try
    Response := EAClient.sendInvoice(Request);
    if Length(Response) <> 1 then
      raise EDonusum.Create('Beklenen cevap gelmedi!');
    if (Response[0].code <> '000') then
        raise EDonusum.Create(Response[0].code + ': ' + Response[0].cause + ' - ' + Response[0].explanation);
    Result := TSonuc.Create;
    Result.ETTN := Response[0].documentUUID;
    Result.FaturaNo := Response[0].documentID;
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

procedure TKolaySoft.GonderZarf(Zarf: AnsiString);
begin
  raise Exception.Create('Foriba UblTr gönderimi desteklemiyor!');
end;

function TKolaySoft.DurumSorgula(ZarfETTN, FaturaETTN: string): TSonuc;
begin
  if ZarfETTN <> EmptyStr then
    Result := ZarfSorgula(ZarfETTN)
  else if FaturaETTN <> EmptyStr then
    Result := FaturaSorgula(FaturaETTN)
  else
    raise Exception.Create('Zarf ya da fatura ETTN bilgisi gereklidir!');
end;

function TKolaySoft.ZarfSorgula(ZarfETTN: string): TSonuc;
var
  Response: DocumentQueryResponse;
  Durum: TDurum;
begin
  try
    Response := QDClient.QueryEnvelope(ZarfETTN);
    if Response.queryState <> 0 then
      raise EDonusum.Create(Response.stateExplanation);
    if Response.documentsCount <> 1 then
        raise EDonusum.Create('Beklenen cevap gelmedi!');
    if Response.documents[0].state_code = '0' then
      Durum := TDurum.Basarili
    else
      Durum := TDurum.Hatali;

    Result := TSonuc.Yarat(Response.documents[0].envelope_uuid, Durum);
    Result.Detay := Response.documents[0].state_explanation;
    Result.ETTN := Response.documents[0].document_uuid;
    Result.FaturaNo := Response.documents[0].document_id;
    Result.ERPNo := Response.documents[0].local_id;
    Result.GTBReferenceNo := Response.documents[0].gtb_reference_no;
    Result.GTBGcbTescilNo := Response.documents[0].gtb_gcb_tescil_no;
    Result.GTBFiiliIhracatTarihi := Tarih(Response.documents[0].gtb_fiili_ihracat_tarihi);
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

function TKolaySoft.FaturaSorgula(FaturaETTN: string): TSonuc;
var
  Request: QueryOutboxResponseDocument;
  Response: DocumentQueryResponse;
  Durum: TDurum;
begin
  SetLength(Request, 1);
  Request[0] := FaturaETTN;
  try
    Response := QDClient.QueryOutboxDocumentsWithWithGUIDList(Request, '1');
    if Response.queryState <> 0 then
      raise EDonusum.Create(Response.stateExplanation);
    if Response.documentsCount <> 1 then
        raise EDonusum.Create('Beklenen cevap gelmedi!');
    if Response.documents[0].state_code = '0' then
      Durum := TDurum.Basarili
    else
      Durum := TDurum.Hatali;

    Result := TSonuc.Yarat(Response.documents[0].envelope_uuid, Durum);
    Result.Detay := Response.documents[0].state_explanation;
    Result.ETTN := FaturaETTN;
    Result.FaturaNo := Response.documents[0].document_id;
    Result.ERPNo := Response.documents[0].local_id;
    Result.GTBReferenceNo := Response.documents[0].gtb_reference_no;
    Result.GTBGcbTescilNo := Response.documents[0].gtb_gcb_tescil_no;
    Result.GTBFiiliIhracatTarihi := Tarih(Response.documents[0].gtb_fiili_ihracat_tarihi);
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

procedure TKolaySoft.HTTPReqResp_WSBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  Header: string;
begin
  Header := 'Username: ' + HTTPReqResp.UserName;
  if not HttpAddRequestHeaders(Data, PChar(Header), Length(Header), HTTP_ADDREQ_FLAG_ADD) then
    EDonusum.Create('HttpAddRequestHeaders :' + GetLastError().ToString());
  Header := 'Password: ' + HTTPReqResp.Password;
  if not HttpAddRequestHeaders(Data, PChar(Header), Length(Header), HTTP_ADDREQ_FLAG_ADD) then
    EDonusum.Create('HttpAddRequestHeaders :' + GetLastError().ToString());
end;

function TKolaySoft.MukellefListesi(): TObjectList<TMukellef>;
begin
  Result := MukellefListesi(EmptyStr);
end;

function TKolaySoft.MukellefListesi(VKN: string): TObjectList<TMukellef>;
var
  Response: UserQueryResponse;
  i: Integer;
begin
  VKN := Trim(VKN);
  try
    Response := QDClient.QueryUsers('', '', VKN);
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  Result := TObjectList<TMukellef>.Create;
  if (Response.userCount > 0) then
    for i := 0 to Length(Response.users) - 1 do
      Result.Add(TMukellef.Create(Response.users[i].vkn_tckn, Response.users[i].etiket, Response.users[i].unvan_ad, Response.users[i].tip, Tarih(Response.users[i].etiketKayitZamani), Tarih(Response.users[i].ilkKayitZamani)))
end;

function TKolaySoft.GetirPdf(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
begin
    if (Yon = TYon.GIDEN) and (Belge = TBelge.EARSIV) then
      GetirPdf := GetirEADosya(Yon, ETTN, 'PDF')
    else
      GetirPdf := GetirEFDosya(Yon, ETTN, 'PDF');
end;

function TKolaySoft.GetirHtml(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
begin
    if (Yon = TYon.GIDEN) and (Belge = TBelge.EARSIV) then
      GetirHtml := GetirEADosya(Yon, ETTN, 'HTML')
    else
      GetirHtml := GetirEFDosya(Yon, ETTN, 'HTML');
end;

function TKolaySoft.GetirEFDosya(Yon: TYon; ETTN, Tip: string): TBytes;
var
  Response: DocumentQueryResponse;
  EAResponse: kolaysoft_ea.DocumentQueryResponse;
begin
  try
    if Yon = TYon.GIDEN then
      Response := QDClient.QueryOutboxDocument('Document_UUID', ETTN, Tip)
    else
      Response := QDClient.QueryInboxDocument('Document_UUID', ETTN, Tip);
    if Response.queryState <> 0 then
      raise EDonusum.Create(Response.stateExplanation);
    if Response.documentsCount <> 1 then
        raise EDonusum.Create('Beklenen cevap gelmedi!');
    GetirEFDosya := araclar.TByteDynArray2TBytes(Response.documents[0].document_content);
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

function TKolaySoft.GetirEADosya(Yon: TYon; ETTN, Tip: string): TBytes;
var
  Response: kolaysoft_ea.DocumentQueryResponse;
begin
  try
    Response := EAClient.QueryInvoice('Document_UUID', ETTN, Tip);
    if Response.queryState <> 0 then
      raise EDonusum.Create(Response.stateExplanation);
    if Response.documentsCount <> 1 then
        raise EDonusum.Create('Beklenen cevap gelmedi!');
    GetirEADosya := araclar.TByteDynArray2TBytes(Response.documents[0].document_content);
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
end;

function TKolaySoft.BelgeListesi(Yon: TYon; Belge: TBelge; Baslangic, Bitis: TDateTime): TObjectList<TFatura>;
var
  Response: DocumentQueryResponse;
  DocType: string;
  Document: ResponseDocument;
  Fatura: TFatura;
begin
  case Belge of
    TBelge.FATURA: DocType := '1';
    TBelge.CEVAP: DocType := '2';
  else raise EDonusum.Create('Belge tipi Kolaysoft tarafından desteklenmiyor!');
  end;

  try
    if Yon = TYon.GIDEN then
      Response := QDClient.QueryOutboxDocumentsWithReceivedDate(Metin(Baslangic), Metin(Bitis), DocType, 'ALL', 'NONE', '0')
    else
      Response := QDClient.QueryInboxDocumentsWithReceivedDate(Metin(Baslangic), Metin(Bitis), DocType, 'ALL', 'NONE', 'ALL', '0');
  except
    on E: Exception do
      raise EDonusum.Create(E.Message);
  end;
  if Response.queryState <> 0 then
    raise EDonusum.Create(Response.stateExplanation);
  Result := TObjectList<TFatura>.Create;
  for Document in Response.documents do
  begin
    Fatura := TFatura.Create(Document.document_uuid, EmptyStr, EmptyStr, EmptyStr, Document.envelope_uuid, Document.document_id, Document.local_id, Tarih(Document.system_creation_time));
    if Yon = TYon.GIDEN then
    begin
      Fatura.Etiket := Document.destination_urn;
      Fatura.VKN := Document.destination_id;
    end
    else
    begin
      Fatura.Etiket := Document.source_urn;
      Fatura.VKN := Document.source_id;
    end;      
    Result.Add(Fatura);
  end;
end;

function TKolaySoft.Tarih(Metin: string): TDate;
begin
  if Metin <> EmptyStr then
    Tarih := StrToDateTime(Metin, Format);
end;

function TKolaySoft.Metin(TarihSaat: TDateTime): string;
begin
     Metin := FormatDateTime(Format.LongDateFormat, TarihSaat);
end;

end.
