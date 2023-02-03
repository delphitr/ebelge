unit integrator;

interface

uses
  ubltr, System.Generics.Collections, System.SysUtils;

type
    TDurum = (Hatali, Basarili, Isleniyor);

    TYon = (GIDEN, GELEN);

    TBelge = (FATURA, EARSIV, ZARF, CEVAP, YANIT);

    TSonuc = class
     private
     public
      public ZarfETTN, ETTN, FaturaNo, ERPNo, Detay, GTBReferenceNo, GTBGcbTescilNo: string;
      public GTBFiiliIhracatTarihi: TDate;
      public Durum: TDurum;


      constructor Yarat(ZarfETTN: string; Durum: TDurum);
     end;

     TMukellef = class
      public
        VKN, Etiket, Unvan, Tip: string;
        Olusturma, IlkGiris: TDateTime;

        constructor Create(VKN, Etiket, Unvan, Tip: string; Olusturma, IlkGiris: TDateTime);
     end;

     TFatura = class
      public
        ETTN, Etiket, VKN, ZarfTipi, ZarfETTN, FaturaNo, ERPNo: string;
        Olusturma: TDateTime;

        constructor Create(ETTN, Etiket, VKN, ZarfTipi, ZarfETTN, FaturaNo, ERPNo: string; Olusturma: TDateTime);
     end;

    // Özel entegratör interface
    IIntegrator = Interface(IInterface)
      // UBL-TR gönder
      function GonderUblTr(UblTr: TUblTr; GondericiEtiket, AliciEtiket: string): TSonuc;
      function MukellefListesi(): TObjectList<TMukellef>; overload;
      function MukellefListesi(VKN: string): TObjectList<TMukellef>; overload;
      procedure GonderZarf(Zarf: AnsiString);
      function DurumSorgula(ZarfETTN, FaturaETTN: string): TSonuc;
      function FaturaSorgula(ZarfETTN: string): TSonuc;
      function ZarfSorgula(ZarfETTN: string): TSonuc;
      function GetirPdf(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
      function GetirHtml(Yon: TYon; Belge: TBelge; ETTN: string): TBytes;
      function BelgeListesi(Yon: TYon; Belge: TBelge; Baslangic, Bitis: TDateTime): TObjectList<TFatura>;
      function GetirKontor(): Double;
    end;

implementation

constructor TSonuc.Yarat(ZarfETTN: string; Durum: TDurum);
begin
  Self.ZarfETTN := ZarfETTN;
  Self.Durum := Durum;
end;

constructor TMukellef.Create(VKN, Etiket, Unvan, Tip: string; Olusturma, IlkGiris: TDateTime);
begin
  Self.VKN := VKN;
  Self.Etiket := Etiket;
  Self.Unvan := Unvan;
  Self.Tip := Tip;
  Self.Olusturma := Olusturma;
  Self.IlkGiris := IlkGiris;
end;

constructor TFatura.Create(ETTN, Etiket, VKN, ZarfTipi, ZarfETTN, FaturaNo, ERPNo: string; Olusturma: TDateTime);
begin
  Self.ETTN := ETTN;
  Self.Etiket := Etiket;
  Self.VKN := VKN;
  Self.ZarfTipi := ZarfTipi;
  Self.ZarfETTN := ZarfETTN;
  Self.FaturaNo := FaturaNo;
  Self.ERPNo := ERPNo;
  Self.Olusturma := Olusturma;
end;

end.
