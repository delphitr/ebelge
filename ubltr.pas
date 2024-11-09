unit ubltr;

interface

uses
  SysUtils, IOUtils, System.Character, UBLInvoice21, XMLIntf, XMLDoc,
  System.Classes, Generics.Collections, Xml.xmldom, System.Types,
  System.TypInfo;

type

  TSenaryo    = (TEMELFATURA, TICARIFATURA, EARSIVFATURA, IHRACAT);
  TTip        = (SATIS, IADE, ISTISNA);

  TMuhatap = class
     private
     public
      public VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: string;

      constructor Yarat(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String);
  end;

  TVergi = class
     private
     public
      public Tevkifat: Boolean;
      public Kodu, Adi: string;
      public Matrah, Oran, Tutar: Double;

      constructor Yarat(Kodu, Adi: String; Matrah, Oran, Tutar: Double; Tevkifat: Boolean = false);
  end;

  TIskonto = class
     private
     public
      public Matrah, Oran, Tutar: Double;

      constructor Yarat(Matrah, Oran, Tutar: Double);
  end;

  TKalem = class
     private
     public
      public Kodu, Adi, OlcuBirimi: String;
      public Miktar, BirimFiyat, Tutar: Double;
      public Iskonto: TIskonto;
      public Vergiler: TObjectList<TVergi>;

      constructor Yarat(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, Tutar: Double);
  end;

  TUblTr = class
    private
      Guid: TGUID;
      Invoice: IXMLInvoiceType;
      FaturaTarihi: TDate;
      FaturaNo: string;
      Profil: TSenaryo;
      Tip: TTip;
      Currency: String;
      Kalemler: TObjectList<TKalem>;
      Vergiler: TObjectList<TVergi>;
      Format : TFormatSettings;

      function GetirEttn: TGUID;
      procedure DoldurMuhatapTanitici(Identifier: IXMLPartyIdentificationType_cac; VKN: String); overload;
      procedure DoldurMuhatapTanitici(Identifier: IXMLPartyIdentificationType_cac; Tanitici, Deger: String); overload;
      procedure DoldurMuhatapAdSoyad(Party: IXMLPartyType_cac; VKN, Adi, Soyadi: String);
      procedure MuhatapEkle(Party: IXMLPartyType_cac; VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres: String); overload;
      procedure MuhatapEkle(Party: IXMLPartyType_cac; Muhatap: TMuhatap); overload;
      function GetNode(NodeName, NamespaceURI: DOMString): IXMLNode; overload;
      function GetNode(Node: IXMLNode; NodeName, NamespaceURI: DOMString): IXMLNode; overload;
      function GetNodeIndex(NodeName, NamespaceURI: DOMString): Integer;  overload;
      function GetNodeIndex(Node: IXMLNode; NodeName, NamespaceURI: DOMString): Integer; overload;
      procedure VergiBirlestir(Vergi: TVergi);
      function Metin(deger: Double): string; overload;
      function Metin(deger: Integer): string; overload;
      function Metin(deger: TDate): string; overload;
      function Metin(deger: TGUID): string; overload;

      procedure KDVEkle(Vergi: IXMLTaxTotalType_cac; KDVMatrah, KDVOran, KDVTutar: Double);
      procedure VergiDoldur(VergiElement: IXMLTaxTotalType_cac; Vergi: TVergi);
      procedure IskontoEkle(Iskonto: IXMLAllowanceChargeType_cac; IskontoMatrah, IskontoOran, IskontoTutar: Double);

    public
      public Tedarikci, Musteri, Alici: TMuhatap;

      procedure Notlar(Notlar: TStrings);
      procedure AtaTedarikci(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String); overload;
      procedure AtaTedarikci(Muhatap: TMuhatap); overload;
      procedure AtaMusteri(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String); overload;
      procedure AtaMusteri(Muhatap: TMuhatap); overload;
      procedure AtaAlici(Muhatap: TMuhatap);
      procedure KalemEkle(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, IskontoMatrah, IskontoOran, IskontoTutar, KDVMatrah, KDVOran, KDVTutar, Tutar: Double); overload;
      procedure KalemEkle(Kalem: TKalem); overload;
      procedure VergiEkle(Vergi: TVergi);

      procedure DipToplam(SatirToplami, VergiDahil, VergiHaric, Odenecek: Double);

      procedure SaklaDosyaya(xmlDosya: TFileName);
      procedure YukleDosyadan(xmlDosya: TFileName);
      procedure Yukle(xml: AnsiString);
      procedure Gorsel(xslt: string);
      procedure FaturaEki(ID, TipKodu: string; Tarih: TDate);
      procedure ImzaEkle;

      function GetirEttnMetin: String;
      function GetirFaturaNo: String;
      function GetirFaturaTarihi: TDate;
      function GetirFaturaTarihiString: string;

      function GetirAnsiString: AnsiString;
      function GetirByteArray: TBytes;
      function GetirStream: TStream;
      function GetirGTB: TMuhatap;
      function GetirProfil: TSenaryo;
      function GetirTip: TTip;

       // constructor
      constructor Yarat(Senaryo: TSenaryo; Tipi: TTip; FaturaNo, ParaBirimi: String; FaturaTarihi: TDate);
    end;


implementation

uses
  Winapi.Windows;

constructor TUblTr.Yarat(Senaryo: TSenaryo; Tipi: TTip; FaturaNo, ParaBirimi: String; FaturaTarihi: TDate);
begin
  if (Senaryo = TSenaryo.IHRACAT) and (Tipi <> TTip.ISTISNA) then
    raise Exception.Create('İhracat için fatura tiği İstisna olmalıdır!');

  Format := TFormatSettings.Create(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US));
  Format.DateSeparator := '-';
  Format.ShortDateFormat := 'yyyy-mm-dd';
  Format.DecimalSeparator := '.';
  Format.ThousandSeparator := ',';

  Self.FaturaNo := FaturaNo;
  Self.Guid := TGUID.NewGuid;
  Self.Currency := ParaBirimi;
  Self.FaturaTarihi := FaturaTarihi;
  Self.Profil := Senaryo;
  Self.Tip := Tipi;
  
  Self.Kalemler := TObjectList<TKalem>.Create();
  Self.Vergiler := TObjectList<TVergi>.Create();
  
  Invoice := NewInvoice();
  Invoice.OwnerDocument.Options := Invoice.OwnerDocument.Options + [doNodeAutoIndent];
  Invoice.UBLExtensions.Add.ExtensionContent.AddChild('dummy', TargetNamespace);
  Invoice.UBLVersionID.Text := '2.1';
  Invoice.CustomizationID.Text := 'TR1.2';
  Invoice.ProfileID.Text := GetEnumName(TypeInfo(TSenaryo), Ord(Senaryo));
  if Trim(FaturaNo) <> EmptyStr then
    Invoice.ID.Text := FaturaNo;
  Invoice.CopyIndicator.Text := 'false';
  Invoice.UUID.Text := GetirEttnMetin();
  Invoice.IssueDate.Text := Metin(faturaTarihi);
  Invoice.InvoiceTypeCode.Text := GetEnumName(TypeInfo(TTip), Ord(Tipi));
  //Note
  Invoice.DocumentCurrencyCode.Text := Currency;
  Invoice.LineCountNumeric.Text := '0';
  //ındirim
//  with Invoice.AllowanceCharge.Add do
//  begin
//    ChargeIndicator.Text := 'false';
//    Amount.Text := '0';
//  end;
  Invoice.AccountingSupplierParty;
  Invoice.AccountingCustomerParty;
  if (Senaryo = TSenaryo.IHRACAT) then
    Invoice.BuyerCustomerParty;
  with Invoice.TaxExchangeRate do
  begin
    SourceCurrencyCode.Text := Currency;
    TargetCurrencyCode.Text := Currency;
    CalculationRate.Text := '0';
  end;
  with Invoice.TaxTotal.Add do
  begin
    TaxAmount.SetAttribute('currencyID', Currency);
  end;
  Invoice.LegalMonetaryTotal;
end;

function TUblTr.GetirEttn: TGUID;
begin
  GetirEttn := Guid;
end;

function TUblTr.GetirEttnMetin: String;
begin
  GetirEttnMetin := Metin(Guid);
end;

function TUblTr.GetirFaturaNo: String;
begin
  GetirFaturaNo := FaturaNo;
end;

function TUblTr.GetirFaturaTarihi: TDate;
begin
  GetirFaturaTarihi := FaturaTarihi;
end;

function TUblTr.GetirFaturaTarihiString: string;
begin
  GetirFaturaTarihiString := Metin(FaturaTarihi);
end;

procedure TUblTr.KalemEkle(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, IskontoMatrah, IskontoOran, IskontoTutar, KDVMatrah, KDVOran, KDVTutar, Tutar: Double);
var
  Index: Integer;
begin
  if Invoice.InvoiceLine.Count = 0 then
    Index := GetNodeIndex('cac:LegalMonetaryTotal', NS_cac) + 1
  else
    Index := Invoice.ChildNodes.IndexOf(Invoice.InvoiceLine.ChildNodes.Last);
  with Invoice.InvoiceLine.Insert(Index) do
  begin
    ID.Text := Metin(Invoice.InvoiceLine.Count);
    with InvoicedQuantity do
    begin
      Text := Metin(Miktar);
      SetAttribute('unitCode', OlcuBirimi);
    end;
    with LineExtensionAmount do
    begin
      Text := Metin(Tutar);
      SetAttribute('currencyID', Currency);
    end;
    if IskontoTutar > 0 then
      IskontoEkle(AllowanceCharge.Add(), IskontoMatrah, IskontoOran, IskontoTutar);
    KDVEkle(TaxTotal, KDVMatrah, KDVOran, KDVTutar);
    with Item do
    begin
      Name.Text := Adi;
      SellersItemIdentification.ID.Text := Kodu;
    end;
    with Price.PriceAmount do
    begin
      Text := Metin(BirimFiyat);
      SetAttribute('currencyID', Currency);
    end;
  end;
  Invoice.ChildNodes.FindNode('cbc:LineCountNumeric', NS_cbc).Text := Metin(Invoice.InvoiceLine.Count);

end;

procedure TUblTr.KalemEkle(Kalem: TKalem);
var
  Index: Integer;
  Vergi: TVergi;
  ToplamVergi, ToplamTevkifat: Double;
  TevkifatElement: IXMLTaxTotalType_cac;
begin
  if Invoice.InvoiceLine.Count = 0 then
    Index := GetNodeIndex('cac:LegalMonetaryTotal', NS_cac) + 1
  else
    Index := Invoice.ChildNodes.IndexOf(Invoice.InvoiceLine.ChildNodes.Last);
  with Invoice.InvoiceLine.Insert(Index) do
  begin
    ID.Text := Metin(Invoice.InvoiceLine.Count);
    with InvoicedQuantity do
    begin
      Text := Metin(Kalem.Miktar);
      SetAttribute('unitCode', Kalem.OlcuBirimi);
    end;
    with LineExtensionAmount do
    begin
      Text := Metin(Kalem.Tutar);
      SetAttribute('currencyID', Currency);
    end;
    if Kalem.Iskonto.Tutar > 0 then
      IskontoEkle(AllowanceCharge.Add(), Kalem.Iskonto.Matrah, Kalem.Iskonto.Oran, Kalem.Iskonto.Tutar);     
    //Toplam vergileri önce yazmak gerektiğin hesaplayalım
    for Vergi in Kalem.Vergiler do
      if Vergi.Tevkifat then
        ToplamTevkifat := ToplamTevkifat + Vergi.Tutar
      else
        ToplamVergi := ToplamVergi + Vergi.Tutar;
    //Toplam vergi
    with TaxTotal.TaxAmount do
    begin
     Text := Metin(ToplamVergi);
     SetAttribute('currencyID', Currency);
    end;
         
    for Vergi in Kalem.Vergiler do
      if Vergi.Tevkifat then
      begin
        if TevkifatElement = nil then
        begin
          TevkifatElement := WithholdingTaxTotal.Add();
          //Toplam tevkifat
          with TevkifatElement.TaxAmount do
          begin
           Text := Metin(ToplamVergi);
           SetAttribute('currencyID', Currency);
          end;
        end;
        VergiDoldur(TevkifatElement, Vergi);
      end
      else
        VergiDoldur(TaxTotal, Vergi);
    with Item do
    begin
      Name.Text := Kalem.Adi;
      SellersItemIdentification.ID.Text := Kalem.Kodu;
    end;
    with Price.PriceAmount do
    begin
      Text := Metin(Kalem.BirimFiyat);
      SetAttribute('currencyID', Currency);
    end;
  end;
  Invoice.ChildNodes.FindNode('cbc:LineCountNumeric', NS_cbc).Text := Metin(Invoice.InvoiceLine.Count);
  Kalemler.Add(Kalem);
end;

procedure TUblTr.IskontoEkle(Iskonto: IXMLAllowanceChargeType_cac; IskontoMatrah, IskontoOran, IskontoTutar: Double);
begin
  with Iskonto do
  begin
    with ChargeIndicator do
    begin
     Text := 'true';
    end;
    if IskontoOran <> 0 then
      with MultiplierFactorNumeric do
      begin
       Text := Metin(IskontoOran);
      end;
    with Amount do
    begin
     Text := Metin(IskontoTutar);
     SetAttribute('currencyID', Currency);
    end;
    with BaseAmount do
    begin
     Text := Metin(IskontoMatrah);
     SetAttribute('currencyID', Currency);
    end;
  end;
end;

procedure TUblTr.KDVEkle(Vergi: IXMLTaxTotalType_cac; KDVMatrah, KDVOran, KDVTutar: Double);
var
  Kalem: IXMLInvoiceLineType_cac;
begin
  with Vergi do
  begin
    with TaxAmount do
    begin
     Text := Metin(KDVTutar);
     SetAttribute('currencyID', Currency);
    end;
    with TaxSubtotal.Add do
    begin
      with TaxableAmount do
      begin
       Text := Metin(KDVMatrah);
       SetAttribute('currencyID', Currency);
      end;
      with TaxAmount do
      begin
       Text := Metin(KDVTutar);
       SetAttribute('currencyID', Currency);
      end;
      Percent.Text := Metin(KDVOran);
      with TaxCategory do
      begin
        with TaxScheme do
        begin
         Name.Text := 'Gerçek Usulde Katma Değer Vergisi';
         TaxTypeCode.Text := '0015';
        end;
      end;
    end;
  end;
  VergiBirlestir(TVergi.Yarat('0015', 'Gerçek Usulde Katma Değer Vergisi', KDVMatrah, KDVOran, KDVTutar));
end;

procedure TUblTr.VergiDoldur(VergiElement: IXMLTaxTotalType_cac; Vergi: TVergi);
var
  Kalem: IXMLInvoiceLineType_cac;
begin
  with VergiElement do
  begin
    with TaxSubtotal.Add do
    begin
      with TaxableAmount do
      begin
       Text := Metin(Vergi.Matrah);
       SetAttribute('currencyID', Currency);
      end;
      with TaxAmount do
      begin
       Text := Metin(Vergi.Tutar);
       SetAttribute('currencyID', Currency);
      end;
      Percent.Text := Metin(Vergi.Oran);
      with TaxCategory do
      begin
        with TaxScheme do
        begin
         Name.Text := Vergi.Adi;
         TaxTypeCode.Text := Vergi.Kodu;
        end;
      end;
    end;
  end;
  VergiBirlestir(Vergi);
end;


procedure TUblTr.SaklaDosyaya(xmlDosya: TFileName);
begin
  Invoice.OwnerDocument.SaveToFile(xmlDosya);
end;

procedure TUblTr.YukleDosyadan(xmlDosya: TFileName);
begin
  Invoice := LoadXMLDocument(xmlDosya).GetDocBinding('Invoice', TXMLInvoiceType, TargetNamespace) as IXMLInvoiceType;
end;

procedure TUblTr.Yukle(xml: AnsiString);
begin
  Invoice.OwnerDocument.LoadFromXML(xml);
end;

function TUblTr.GetirAnsiString: AnsiString;
var
  xml: UTF8String;
begin
   Invoice.OwnerDocument.SaveToXML(xml);
   GetirAnsiString := FormatXMLData(xml);
end;

function TUblTr.GetirStream: TStream;
var
  Stream: TStream;
begin
   Stream := TMemoryStream.Create();
   Invoice.OwnerDocument.SaveToStream(Stream);
   Result := Stream;
end;

procedure TUblTr.AtaTedarikci(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String);
begin
  AtaTedarikci(TMuhatap.Yarat(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta));
end;

procedure TUblTr.AtaTedarikci(Muhatap: TMuhatap);
begin
  with Invoice.ChildNodes.FindNode('cac:AccountingSupplierParty', NS_cac) as IXMLSupplierPartyType_cac do
  begin
    MuhatapEkle(Party, Muhatap);
  end;
  Tedarikci := Muhatap;
end;

procedure TUblTr.AtaMusteri(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String);
var
  Musteri: TMuhatap;
begin
  Musteri := TMuhatap.Create;
  Musteri.VKN := VKN;
  Musteri.Adi := Adi;
  Musteri.Soyadi := Soyadi;
  Musteri.VergiDairesi := VergiDairesi;
  Musteri.Il := Il;
  Musteri.Ilce := Ilce;
  Musteri.UlkeKodu := UlkeKodu;
  Musteri.UlkeAdi := UlkeAdi;
  Musteri.Adres := Adres;
  Musteri.Eposta := Eposta;
  AtaMusteri(Musteri);
end;

procedure TUblTr.AtaMusteri(Muhatap: TMuhatap);
begin
  with Invoice.ChildNodes.FindNode('cac:AccountingCustomerParty', NS_cac) as IXMLCustomerPartyType_cac do
  begin
    MuhatapEkle(Party, Muhatap);
  end;
  Musteri := Muhatap;
end;

procedure TUblTr.AtaAlici(Muhatap: TMuhatap);
var
  VKN: string;
begin
  with Invoice.ChildNodes.FindNode('cac:BuyerCustomerParty', NS_cac) as IXMLCustomerPartyType_cac do
  begin
    VKN := Muhatap.VKN;
    Muhatap.VKN := '0000000000';
    MuhatapEkle(Party, Muhatap);
    Party.PartyIdentification.Clear;
    with Party.PartyIdentification.Add do
      with ID do
      begin
        Text := 'EXPORT';
        SetAttribute('schemeID', 'PARTYTYPE');
      end;
    with Party.PartyLegalEntity.Add do
    begin
      RegistrationName.Text := Muhatap.VergiDairesi;
      CompanyID.Text := VKN;
    end;

  end;
  Alici := Muhatap;
end;

procedure TUblTr.MuhatapEkle(Party: IXMLPartyType_cac; VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres: String);
begin
    DoldurMuhatapTanitici(Party.PartyIdentification.Add, VKN);
    if Length(VKN) = 10 then
      DoldurMuhatapAdSoyad(Party, VKN, Adi, Soyadi);
    with Party.PostalAddress do
    begin
      StreetName.Text := Adres;
      CitySubdivisionName.Text := Ilce;
      CityName.Text := Il;
      with Country do
      begin
        IdentificationCode.Text := UlkeKodu;
        Name.Text := UlkeAdi;
      end;
    end;
    Party.PartyTaxScheme.TaxScheme.Name.Text := VergiDairesi;
    if Length(VKN) = 11 then
      DoldurMuhatapAdSoyad(Party, VKN, Adi, Soyadi);
end;

procedure TUblTr.MuhatapEkle(Party: IXMLPartyType_cac; Muhatap: TMuhatap);
begin
    DoldurMuhatapTanitici(Party.PartyIdentification.Add, Muhatap.VKN);
    if Length(Muhatap.VKN) = 10 then
      DoldurMuhatapAdSoyad(Party, Muhatap.VKN, Muhatap.Adi, Muhatap.Soyadi);
    with Party.PostalAddress do
    begin
      StreetName.Text := Muhatap.Adres;
      CitySubdivisionName.Text := Muhatap.Ilce;
      CityName.Text := Muhatap.Il;
      with Country do
      begin
        IdentificationCode.Text := Muhatap.UlkeKodu;
        Name.Text := Muhatap.UlkeAdi;
      end;
    end;
    Party.PartyTaxScheme.TaxScheme.Name.Text := Muhatap.VergiDairesi;
    if Length(Muhatap.VKN) = 11 then
      DoldurMuhatapAdSoyad(Party, Muhatap.VKN, Muhatap.Adi, Muhatap.Soyadi);
    if (Muhatap.Eposta <> EmptyStr) then
      with Party.Contact do
        ElectronicMail.Text := Muhatap.Eposta;
end;

procedure TUblTr.DoldurMuhatapTanitici(Identifier: IXMLPartyIdentificationType_cac; VKN: String);
var
  ch: Char;
begin
  for ch in VKN do
    if not IsNumber(ch) then
      raise Exception.create('Vergi numarası rakamlardan oluþmalı!');
  if Length(VKN) = 10 then
    DoldurMuhatapTanitici(Identifier, 'VKN', VKN)
  else if Length(VKN) = 11 then
    DoldurMuhatapTanitici(Identifier, 'TCKN', VKN)
  else
    raise Exception.create('Vergi numarası 10 ya da 11 karakter olmalı!');
end;

procedure TUblTr.DoldurMuhatapAdSoyad(Party: IXMLPartyType_cac; VKN, Adi, Soyadi: String);
begin
  if Length(VKN) = 10 then
    Party.PartyName.Name.Text := Adi
  else if Length(VKN) = 11 then
  begin
    with Party.Person do
    begin
      FirstName.Text := Adi;
      FamilyName.Text := Soyadi;
    end;
  end;
end;


procedure TUblTr.DoldurMuhatapTanitici(Identifier: IXMLPartyIdentificationType_cac; Tanitici, Deger: String);
begin
    with Identifier.ID do
    begin
      SetAttribute('schemeID', Tanitici);
      Text := Deger;
    end;
end;

procedure TUblTr.Notlar(Notlar: TStrings);
var
  Note: String;
  Node: IXMLNoteType_cbc;
begin

  for Note in Notlar do
  begin
    if (Invoice.Note.Count = 0) then
      Node := Invoice.Note.Insert(GetNodeIndex('cbc:DocumentCurrencyCode', NS_cbc))
    else
      Node := Invoice.Note.Insert(Invoice.Note.ChildNodes.IndexOf(Invoice.Note.ChildNodes.Last));
    Node.Text := Note;
  end;
end;

function TUblTr.GetNodeIndex(NodeName, NamespaceURI: DOMString): Integer;
begin
   GetNodeIndex := Invoice.ChildNodes.IndexOf(GetNode(NodeName, NamespaceURI));
end;

function TUblTr.GetNodeIndex(Node: IXMLNode; NodeName, NamespaceURI: DOMString): Integer;
begin
   GetNodeIndex := Node.ChildNodes.IndexOf(GetNode(NodeName, NamespaceURI));
end;

function TUblTr.GetNode(NodeName, NamespaceURI: DOMString): IXMLNode;
begin
   GetNode := Invoice.ChildNodes.FindNode(NodeName, NamespaceURI);
end;

function TUblTr.GetNode(Node: IXMLNode; NodeName, NamespaceURI: DOMString): IXMLNode;
begin
   GetNode := Node.ChildNodes.FindNode(NodeName, NamespaceURI);
end;

procedure TUblTr.VergiBirlestir(Vergi: TVergi);
var
  v: TVergi;
  TumVergi: IXMLTaxTotalType_cac;
  Toplam: Double;
  i: Integer;
  Mevcut: Boolean;
begin
  if Vergiler = nil then
  begin
    Vergiler := TObjectList<TVergi>.Create();
    Vergiler.Add(Vergi);
  end
  else
  begin
    Mevcut := false;
    for i := 0 to Vergiler.Count - 1 do
    begin
      if (Vergiler[i].Tevkifat = Vergi.Tevkifat) and (Vergiler[i].Kodu = Vergi.Kodu) and (Vergiler[i].Oran = Vergi.Oran) then
      begin
        Vergiler[i].Matrah := Vergiler[i].Matrah + Vergi.Matrah;
        Vergiler[i].Tutar := Vergiler[i].Tutar + Vergi.Tutar;
        Mevcut := true;
      end
    end;
    if not Mevcut then
      Vergiler.Add(Vergi);
  end;
  TumVergi := GetNode('cac:TaxTotal', NS_cac) as TXMLTaxTotalType_cac;
  TumVergi.TaxSubtotal.Clear;
  TumVergi := GetNode('cac:WithholdingTaxTotal', NS_cac) as TXMLTaxTotalType_cac;
  if TumVergi <> nil then
    TumVergi.TaxSubtotal.Clear;
  Toplam := 0;
  for v in Vergiler do
  begin
    if v.Tevkifat then
    begin
      TumVergi := GetNode('cac:WithholdingTaxTotal', NS_cac) as TXMLTaxTotalType_cac;
      if TumVergi = nil then
      begin
        TumVergi := Invoice.WithholdingTaxTotal.Insert(GetNodeIndex('cac:TaxTotal', NS_cac) + 1);
        //Geçici olarak toplam tevkifatı ekleyelim
        with TumVergi.TaxAmount do
        begin
          SetAttribute('currencyID', Currency);
          Text := Metin(0);
        end;
      end;
    end
    else
      TumVergi := GetNode('cac:TaxTotal', NS_cac) as TXMLTaxTotalType_cac;
    with TumVergi.TaxSubtotal.Add do
    begin
      with TaxableAmount do
      begin
        SetAttribute('currencyID', Currency);
        Text := Metin(v.Matrah);
      end;
      with TaxAmount do
      begin
        SetAttribute('currencyID', Currency);
        Text := Metin(v.Tutar);
      end;
      Percent.Text := Metin(v.Oran);
      with TaxCategory do
      begin
        with TaxScheme do
        begin
         Name.Text := v.Adi;
         TaxTypeCode.Text := v.Kodu;
        end;
      end;
    end;
    Toplam := Toplam + v.Tutar;
  end;
  TumVergi.ChildNodes.FindNode('cbc:TaxAmount', NS_cbc).Text := Metin(Toplam);
end;

constructor TMuhatap.Yarat(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres, Eposta: String);
begin
  Self.VKN := VKN;
  Self.Adi := Adi;
  Self.Soyadi := Soyadi;
  Self.VergiDairesi := VergiDairesi;
  Self.Il := Il;
  Self.Ilce := Ilce;
  Self.UlkeKodu := UlkeKodu;
  Self.UlkeAdi := UlkeAdi;
  Self.Adres := Adres;
  Self.Eposta := Eposta;
end;

constructor TVergi.Yarat(Kodu, Adi: String; Matrah, Oran, Tutar: Double; Tevkifat: Boolean = false);
begin
  Self.Tevkifat := Tevkifat;
  Self.Kodu := Kodu;
  Self.Adi := Adi;
  Self.Matrah := Matrah;
  Self.Oran := Oran;
  Self.Tutar := Tutar;
end;

constructor TIskonto.Yarat(Matrah, Oran, Tutar: Double);
begin
  Self.Matrah := Matrah;
  Self.Oran := Oran;
  Self.Tutar := Tutar;
end;

constructor TKalem.Yarat(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, Tutar: Double);
begin
  Self.Kodu := Kodu;
  Self.Adi := Adi;
  Self.OlcuBirimi := OlcuBirimi;
  Self.Miktar := Miktar;
  Self.BirimFiyat := BirimFiyat;
  Self.Tutar := Tutar;
  Self.Vergiler := TObjectList<TVergi>.Create();
end;

procedure TUblTr.DipToplam(SatirToplami, VergiDahil, VergiHaric, Odenecek: Double);
var
  Dip: IXMLMonetaryTotalType_cac;
begin
  Dip := GetNode('cac:LegalMonetaryTotal', NS_cac) as IXMLMonetaryTotalType_cac;
  with Dip.LineExtensionAmount do
  begin
    SetAttribute('currencyID', Currency);
    Text := Metin(SatirToplami);
  end;
  with Dip.TaxExclusiveAmount do
  begin
    SetAttribute('currencyID', Currency);
    Text := Metin(VergiDahil);
  end;
  with Dip.TaxInclusiveAmount do
  begin
    SetAttribute('currencyID', Currency);
    Text := Metin(VergiHaric);
  end;
  with Dip.PayableAmount do
  begin
    SetAttribute('currencyID', Currency);
    Text := Metin(Odenecek);
  end;
end;

function TUblTr.Metin(deger: Double): string;
begin
   Metin := FloatToStr(deger, Format);
end;

function TUblTr.Metin(deger: Integer): string;
begin
   Metin := IntToStr(deger);
end;

function TUblTr.Metin(deger: TDate): string;
begin
   Metin := FormatDateTime(Format.ShortDateFormat, deger);
end;

function TUblTr.Metin(deger: TGUID): string;
begin
   Metin := SysUtils.GUIDToString(deger).Replace('{','').Replace('}','').ToLower;
end;

function TUblTr.GetirByteArray: TBytes;
var
  Xml: AnsiString;
begin
  Xml := Self.GetirAnsiString();
  GetirByteArray := TEncoding.UTF8.GetBytes(Xml);
end;

procedure TUblTr.Gorsel(xslt: string);
var
  NodeDR: IXMLDocumentReferenceType_cac;
  NodeEDBO: IXMLEmbeddedDocumentBinaryObjectType_cbc;
begin
  NodeDR := Invoice.AdditionalDocumentReference.Insert(GetNodeIndex('cbc:LineCountNumeric', NS_cbc) + 1);
  NodeDR.ID.Text := '1';
  NodeDR.IssueDate.Text := Metin(FaturaTarihi);
  NodeEDBO := NodeDR.Attachment.EmbeddedDocumentBinaryObject;
  NodeEDBO.SetAttribute('mimeCode', 'application/xml');
  NodeEDBO.SetAttribute('encodingCode', 'Base64');
  NodeEDBO.SetAttribute('characterSetCode', 'UTF-8');
  NodeEDBO.SetAttribute('filename', Self.FaturaNo + '.xslt');
  NodeEDBO.Text := xslt;
end;

procedure TUblTr.FaturaEki(ID, TipKodu: string; Tarih: TDate);
var
  NodeDR: IXMLDocumentReferenceType_cac;
begin
  if Invoice.AdditionalDocumentReference.Count = 0 then
    NodeDR := Invoice.AdditionalDocumentReference.Insert(GetNodeIndex('cbc:LineCountNumeric', NS_cbc) + 1)
  else
    NodeDR := Invoice.AdditionalDocumentReference.Insert(GetNodeIndex('cac:AdditionalDocumentReference', NS_cac) + 1);
  NodeDR.ID.Text := ID;
  NodeDR.IssueDate.Text := Metin(Tarih);
  NodeDR.DocumentTypeCode.Text := TipKodu;          
end;

function TUblTr.GetirGTB: TMuhatap;
begin
   GetirGTB := TMuhatap.Yarat('1460415308', 'Gümrük ve Ticaret Bakanlığı Gümrükler Genel Müdürlüğü- Bilgi İşlem Dairesi Başkanlığı', EmptyStr, 'Ulus', 'Ankara', ' ', 'TR', 'Türkiye', '', EmptyStr);
end;

function TUblTr.GetirProfil: TSenaryo;
begin
  GetirProfil := Self.Profil;
end;

function TUblTr.GetirTip: TTip;
begin
  GetirTip := Self.Tip;
end;

procedure TUblTr.ImzaEkle;
var
  Index: Integer;
begin
  Index := GetNodeIndex('cac:AccountingSupplierParty', NS_cac) - 1;
  with Invoice.Signature.Insert(Index) do
  begin
   with ID do
   begin
     SetAttribute('schemeID', 'VKN_TCKN');
     Text := Tedarikci.VKN;
   end;
   MuhatapEkle(SignatoryParty, Tedarikci);
   DigitalSignatureAttachment.ExternalReference.URI;
  end;
end;

procedure TUblTr.VergiEkle(Vergi: TVergi);
begin
  VergiBirlestir(Vergi);
end;

end.
