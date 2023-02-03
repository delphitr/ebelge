// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\mustafa.yilmaz\Desktop\sil\EArchiveInvoiceWS.xml
//  >Import : C:\Users\mustafa.yilmaz\Desktop\sil\EArchiveInvoiceWS.xml>0
// Encoding : UTF-8
// Version  : 1.0
// (12/25/2019 9:22:35 PM - - $Rev: 90173 $)
// ************************************************************************ //

unit kolaysoft_ea;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  DocumentInfo         = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  TaxInfo              = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  ResponseUser         = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  DocumentQueryResponse = class;                { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  UserQueryResponse    = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  flagSetter           = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  entry                = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[Cplx] }
  ResponseDocument     = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  CreditInfo           = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  CreditAction         = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  EntResponse          = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  LogResponse          = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  InputDocument        = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }
  entry2               = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[Cplx] }
  InvoiceLog           = class;                 { "http://earchiveinvoiceservice.entegrator.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://earchiveinvoiceservice.entegrator.com/"[GblSmpl] }
  CreditActionTypes = (BASLAMA, SATINALMA, DEVIR_GIRIS, HEDIYE, DEVIR_CIKIS, TRANSFER);

  {$SCOPEDENUMS OFF}

  sendInvoiceWithoutId = array of InputDocument;   { "http://earchiveinvoiceservice.entegrator.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : DocumentInfo, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  DocumentInfo = class(TRemotable)
  private
    FdocumentDate: string;
    FdocumentDate_Specified: boolean;
    FdocumentNo: string;
    FdocumentNo_Specified: boolean;
    procedure SetdocumentDate(Index: Integer; const Astring: string);
    function  documentDate_Specified(Index: Integer): boolean;
    procedure SetdocumentNo(Index: Integer; const Astring: string);
    function  documentNo_Specified(Index: Integer): boolean;
  published
    property documentDate: string  Index (IS_OPTN or IS_UNQL) read FdocumentDate write SetdocumentDate stored documentDate_Specified;
    property documentNo:   string  Index (IS_OPTN or IS_UNQL) read FdocumentNo write SetdocumentNo stored documentNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : TaxInfo, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  TaxInfo = class(TRemotable)
  private
    FtaxtTypeCode: string;
    FtaxtTypeCode_Specified: boolean;
    FtaxtTypeName: string;
    FtaxtTypeName_Specified: boolean;
    FtaxAmount: string;
    FtaxAmount_Specified: boolean;
    FtaxPercentage: string;
    FtaxPercentage_Specified: boolean;
    procedure SettaxtTypeCode(Index: Integer; const Astring: string);
    function  taxtTypeCode_Specified(Index: Integer): boolean;
    procedure SettaxtTypeName(Index: Integer; const Astring: string);
    function  taxtTypeName_Specified(Index: Integer): boolean;
    procedure SettaxAmount(Index: Integer; const Astring: string);
    function  taxAmount_Specified(Index: Integer): boolean;
    procedure SettaxPercentage(Index: Integer; const Astring: string);
    function  taxPercentage_Specified(Index: Integer): boolean;
  published
    property taxtTypeCode:  string  Index (IS_OPTN or IS_UNQL) read FtaxtTypeCode write SettaxtTypeCode stored taxtTypeCode_Specified;
    property taxtTypeName:  string  Index (IS_OPTN or IS_UNQL) read FtaxtTypeName write SettaxtTypeName stored taxtTypeName_Specified;
    property taxAmount:     string  Index (IS_OPTN or IS_UNQL) read FtaxAmount write SettaxAmount stored taxAmount_Specified;
    property taxPercentage: string  Index (IS_OPTN or IS_UNQL) read FtaxPercentage write SettaxPercentage stored taxPercentage_Specified;
  end;

  Array_Of_DocumentInfo = array of DocumentInfo;   { "http://earchiveinvoiceservice.entegrator.com/"[GblUbnd] }
  Array_Of_ResponseDocument = array of ResponseDocument;   { "http://earchiveinvoiceservice.entegrator.com/"[GblUbnd] }
  Array_Of_InvoiceLog = array of InvoiceLog;    { "http://earchiveinvoiceservice.entegrator.com/"[GblUbnd] }
  Array_Of_TaxInfo = array of TaxInfo;          { "http://earchiveinvoiceservice.entegrator.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ResponseUser, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  ResponseUser = class(TRemotable)
  private
    Fvkn_tckn: string;
    Fvkn_tckn_Specified: boolean;
    Funvan_ad: string;
    Funvan_ad_Specified: boolean;
    Fetiket: string;
    Fetiket_Specified: boolean;
    Ftip: string;
    Ftip_Specified: boolean;
    FilkKayitZamani: string;
    FilkKayitZamani_Specified: boolean;
    FetiketKayitZamani: string;
    FetiketKayitZamani_Specified: boolean;
    procedure Setvkn_tckn(Index: Integer; const Astring: string);
    function  vkn_tckn_Specified(Index: Integer): boolean;
    procedure Setunvan_ad(Index: Integer; const Astring: string);
    function  unvan_ad_Specified(Index: Integer): boolean;
    procedure Setetiket(Index: Integer; const Astring: string);
    function  etiket_Specified(Index: Integer): boolean;
    procedure Settip(Index: Integer; const Astring: string);
    function  tip_Specified(Index: Integer): boolean;
    procedure SetilkKayitZamani(Index: Integer; const Astring: string);
    function  ilkKayitZamani_Specified(Index: Integer): boolean;
    procedure SetetiketKayitZamani(Index: Integer; const Astring: string);
    function  etiketKayitZamani_Specified(Index: Integer): boolean;
  published
    property vkn_tckn:          string  Index (IS_OPTN or IS_UNQL) read Fvkn_tckn write Setvkn_tckn stored vkn_tckn_Specified;
    property unvan_ad:          string  Index (IS_OPTN or IS_UNQL) read Funvan_ad write Setunvan_ad stored unvan_ad_Specified;
    property etiket:            string  Index (IS_OPTN or IS_UNQL) read Fetiket write Setetiket stored etiket_Specified;
    property tip:               string  Index (IS_OPTN or IS_UNQL) read Ftip write Settip stored tip_Specified;
    property ilkKayitZamani:    string  Index (IS_OPTN or IS_UNQL) read FilkKayitZamani write SetilkKayitZamani stored ilkKayitZamani_Specified;
    property etiketKayitZamani: string  Index (IS_OPTN or IS_UNQL) read FetiketKayitZamani write SetetiketKayitZamani stored etiketKayitZamani_Specified;
  end;



  // ************************************************************************ //
  // XML       : DocumentQueryResponse, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  DocumentQueryResponse = class(TRemotable)
  private
    FqueryState: Integer;
    FstateExplanation: string;
    FstateExplanation_Specified: boolean;
    FdocumentsCount: Integer;
    FmaxRecordIdinList: Integer;
    Fdocuments: Array_Of_ResponseDocument;
    Fdocuments_Specified: boolean;
    procedure SetstateExplanation(Index: Integer; const Astring: string);
    function  stateExplanation_Specified(Index: Integer): boolean;
    procedure Setdocuments(Index: Integer; const AArray_Of_ResponseDocument: Array_Of_ResponseDocument);
    function  documents_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property queryState:        Integer                    Index (IS_UNQL) read FqueryState write FqueryState;
    property stateExplanation:  string                     Index (IS_OPTN or IS_UNQL) read FstateExplanation write SetstateExplanation stored stateExplanation_Specified;
    property documentsCount:    Integer                    Index (IS_UNQL) read FdocumentsCount write FdocumentsCount;
    property maxRecordIdinList: Integer                    Index (IS_UNQL) read FmaxRecordIdinList write FmaxRecordIdinList;
    property documents:         Array_Of_ResponseDocument  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fdocuments write Setdocuments stored documents_Specified;
  end;

  Array_Of_ResponseUser = array of ResponseUser;   { "http://earchiveinvoiceservice.entegrator.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : UserQueryResponse, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  UserQueryResponse = class(TRemotable)
  private
    FqueryState: Integer;
    FstateExplanation: string;
    FstateExplanation_Specified: boolean;
    FuserCount: Integer;
    Fusers: Array_Of_ResponseUser;
    Fusers_Specified: boolean;
    procedure SetstateExplanation(Index: Integer; const Astring: string);
    function  stateExplanation_Specified(Index: Integer): boolean;
    procedure Setusers(Index: Integer; const AArray_Of_ResponseUser: Array_Of_ResponseUser);
    function  users_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property queryState:       Integer                Index (IS_UNQL) read FqueryState write FqueryState;
    property stateExplanation: string                 Index (IS_OPTN or IS_UNQL) read FstateExplanation write SetstateExplanation stored stateExplanation_Specified;
    property userCount:        Integer                Index (IS_UNQL) read FuserCount write FuserCount;
    property users:            Array_Of_ResponseUser  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fusers write Setusers stored users_Specified;
  end;



  // ************************************************************************ //
  // XML       : flagSetter, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  flagSetter = class(TRemotable)
  private
    Fdocument_direction: string;
    Fdocument_direction_Specified: boolean;
    Fflag_name: string;
    Fflag_name_Specified: boolean;
    Fflag_value: Integer;
    Fdocument_uuid: string;
    Fdocument_uuid_Specified: boolean;
    procedure Setdocument_direction(Index: Integer; const Astring: string);
    function  document_direction_Specified(Index: Integer): boolean;
    procedure Setflag_name(Index: Integer; const Astring: string);
    function  flag_name_Specified(Index: Integer): boolean;
    procedure Setdocument_uuid(Index: Integer; const Astring: string);
    function  document_uuid_Specified(Index: Integer): boolean;
  published
    property document_direction: string   Index (IS_OPTN or IS_UNQL) read Fdocument_direction write Setdocument_direction stored document_direction_Specified;
    property flag_name:          string   Index (IS_OPTN or IS_UNQL) read Fflag_name write Setflag_name stored flag_name_Specified;
    property flag_value:         Integer  Index (IS_UNQL) read Fflag_value write Fflag_value;
    property document_uuid:      string   Index (IS_OPTN or IS_UNQL) read Fdocument_uuid write Setdocument_uuid stored document_uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  entry = class(TRemotable)
  private
    Fkey: string;
    Fkey_Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setkey(Index: Integer; const Astring: string);
    function  key_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
  published
    property key:   string  Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
    property value: string  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;

  QueryInvoicesWithGUIDList = array of string;   { "http://earchiveinvoiceservice.entegrator.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : ResponseDocument, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  ResponseDocument = class(TRemotable)
  private
    Fdocument_uuid: string;
    Fdocument_uuid_Specified: boolean;
    Fdocument_id: string;
    Fdocument_id_Specified: boolean;
    Fenvelope_uuid: string;
    Fenvelope_uuid_Specified: boolean;
    Fdocument_profile: string;
    Fdocument_profile_Specified: boolean;
    Fsystem_creation_time: string;
    Fsystem_creation_time_Specified: boolean;
    Fdocument_issue_date: string;
    Fdocument_issue_date_Specified: boolean;
    Fsource_id: string;
    Fsource_id_Specified: boolean;
    Fdestination_id: string;
    Fdestination_id_Specified: boolean;
    Fsource_urn: string;
    Fsource_urn_Specified: boolean;
    Fsource_title: string;
    Fsource_title_Specified: boolean;
    Fdestination_urn: string;
    Fdestination_urn_Specified: boolean;
    Fcurrency_code: string;
    Fcurrency_code_Specified: boolean;
    Finvoice_total: string;
    Finvoice_total_Specified: boolean;
    Fstate_code: string;
    Fstate_code_Specified: boolean;
    Fstate_explanation: string;
    Fstate_explanation_Specified: boolean;
    Fcause: string;
    Fcause_Specified: boolean;
    Fcontent_type: string;
    Fcontent_type_Specified: boolean;
    Fdocument_content: TByteDynArray;
    Fdocument_content_Specified: boolean;
    FemailSent: Integer;
    FemailSentDate: string;
    FemailSentDate_Specified: boolean;
    Fcancelled: string;
    Fcancelled_Specified: boolean;
    Fcancel_date: string;
    Fcancel_date_Specified: boolean;
    Freference_document_uuid: string;
    Freference_document_uuid_Specified: boolean;
    Fresponse_document_uuid: string;
    Fresponse_document_uuid_Specified: boolean;
    Fresponse_code: string;
    Fresponse_code_Specified: boolean;
    Fresponse_validation_state: string;
    Fresponse_validation_state_Specified: boolean;
    Fresponse_received_date: string;
    Fresponse_received_date_Specified: boolean;
    Fgtb_reference_no: string;
    Fgtb_reference_no_Specified: boolean;
    Fgtb_gcb_tescil_no: string;
    Fgtb_gcb_tescil_no_Specified: boolean;
    Fgtb_fiili_ihracat_tarihi: string;
    Fgtb_fiili_ihracat_tarihi_Specified: boolean;
    Freserved1: string;
    Freserved1_Specified: boolean;
    Freserved2: string;
    Freserved2_Specified: boolean;
    Freserved3: string;
    Freserved3_Specified: boolean;
    Fdocument_type_code: string;
    Fdocument_type_code_Specified: boolean;
    Fnotes: QueryInvoicesWithGUIDList;
    Fnotes_Specified: boolean;
    FdespatchInfo: Array_Of_DocumentInfo;
    FdespatchInfo_Specified: boolean;
    ForderInfo: DocumentInfo;
    ForderInfo_Specified: boolean;
    FtaxInfo: Array_Of_TaxInfo;
    FtaxInfo_Specified: boolean;
    FtaxInclusiveAmount: string;
    FtaxInclusiveAmount_Specified: boolean;
    FtaxExlusiveAmount: string;
    FtaxExlusiveAmount_Specified: boolean;
    FallowanceTotalAmount: string;
    FallowanceTotalAmount_Specified: boolean;
    FtaxAmount0015: string;
    FtaxAmount0015_Specified: boolean;
    FlineExtensionAmount: string;
    FlineExtensionAmount_Specified: boolean;
    FsuplierPersonName: string;
    FsuplierPersonName_Specified: boolean;
    FsupplierPersonMiddleName: string;
    FsupplierPersonMiddleName_Specified: boolean;
    FsupplierPersonFamilyName: string;
    FsupplierPersonFamilyName_Specified: boolean;
    FcustomerPersonName: string;
    FcustomerPersonName_Specified: boolean;
    FcustomerPersonMiddleName: string;
    FcustomerPersonMiddleName_Specified: boolean;
    FcustomerPersonFamilyName: string;
    FcustomerPersonFamilyName_Specified: boolean;
    Fdestination_title: string;
    Fdestination_title_Specified: boolean;
    Fis_read: string;
    Fis_read_Specified: boolean;
    Fis_archieved: string;
    Fis_archieved_Specified: boolean;
    Fis_accounted: string;
    Fis_accounted_Specified: boolean;
    Fis_transferred: string;
    Fis_transferred_Specified: boolean;
    Fis_printed: string;
    Fis_printed_Specified: boolean;
    Flocal_id: string;
    Flocal_id_Specified: boolean;
    FsendingType: string;
    FsendingType_Specified: boolean;
    FbuyerCustomerPartyName: string;
    FbuyerCustomerPartyName_Specified: boolean;
    FbuyerCustomerPersonName: string;
    FbuyerCustomerPersonName_Specified: boolean;
    FbuyerCustomerPersonFamilyName: string;
    FbuyerCustomerPersonFamilyName_Specified: boolean;
    Freport_no: string;
    Freport_no_Specified: boolean;
    Fcancel_report_no: string;
    Fcancel_report_no_Specified: boolean;
    procedure Setdocument_uuid(Index: Integer; const Astring: string);
    function  document_uuid_Specified(Index: Integer): boolean;
    procedure Setdocument_id(Index: Integer; const Astring: string);
    function  document_id_Specified(Index: Integer): boolean;
    procedure Setenvelope_uuid(Index: Integer; const Astring: string);
    function  envelope_uuid_Specified(Index: Integer): boolean;
    procedure Setdocument_profile(Index: Integer; const Astring: string);
    function  document_profile_Specified(Index: Integer): boolean;
    procedure Setsystem_creation_time(Index: Integer; const Astring: string);
    function  system_creation_time_Specified(Index: Integer): boolean;
    procedure Setdocument_issue_date(Index: Integer; const Astring: string);
    function  document_issue_date_Specified(Index: Integer): boolean;
    procedure Setsource_id(Index: Integer; const Astring: string);
    function  source_id_Specified(Index: Integer): boolean;
    procedure Setdestination_id(Index: Integer; const Astring: string);
    function  destination_id_Specified(Index: Integer): boolean;
    procedure Setsource_urn(Index: Integer; const Astring: string);
    function  source_urn_Specified(Index: Integer): boolean;
    procedure Setsource_title(Index: Integer; const Astring: string);
    function  source_title_Specified(Index: Integer): boolean;
    procedure Setdestination_urn(Index: Integer; const Astring: string);
    function  destination_urn_Specified(Index: Integer): boolean;
    procedure Setcurrency_code(Index: Integer; const Astring: string);
    function  currency_code_Specified(Index: Integer): boolean;
    procedure Setinvoice_total(Index: Integer; const Astring: string);
    function  invoice_total_Specified(Index: Integer): boolean;
    procedure Setstate_code(Index: Integer; const Astring: string);
    function  state_code_Specified(Index: Integer): boolean;
    procedure Setstate_explanation(Index: Integer; const Astring: string);
    function  state_explanation_Specified(Index: Integer): boolean;
    procedure Setcause(Index: Integer; const Astring: string);
    function  cause_Specified(Index: Integer): boolean;
    procedure Setcontent_type(Index: Integer; const Astring: string);
    function  content_type_Specified(Index: Integer): boolean;
    procedure Setdocument_content(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  document_content_Specified(Index: Integer): boolean;
    procedure SetemailSentDate(Index: Integer; const Astring: string);
    function  emailSentDate_Specified(Index: Integer): boolean;
    procedure Setcancelled(Index: Integer; const Astring: string);
    function  cancelled_Specified(Index: Integer): boolean;
    procedure Setcancel_date(Index: Integer; const Astring: string);
    function  cancel_date_Specified(Index: Integer): boolean;
    procedure Setreference_document_uuid(Index: Integer; const Astring: string);
    function  reference_document_uuid_Specified(Index: Integer): boolean;
    procedure Setresponse_document_uuid(Index: Integer; const Astring: string);
    function  response_document_uuid_Specified(Index: Integer): boolean;
    procedure Setresponse_code(Index: Integer; const Astring: string);
    function  response_code_Specified(Index: Integer): boolean;
    procedure Setresponse_validation_state(Index: Integer; const Astring: string);
    function  response_validation_state_Specified(Index: Integer): boolean;
    procedure Setresponse_received_date(Index: Integer; const Astring: string);
    function  response_received_date_Specified(Index: Integer): boolean;
    procedure Setgtb_reference_no(Index: Integer; const Astring: string);
    function  gtb_reference_no_Specified(Index: Integer): boolean;
    procedure Setgtb_gcb_tescil_no(Index: Integer; const Astring: string);
    function  gtb_gcb_tescil_no_Specified(Index: Integer): boolean;
    procedure Setgtb_fiili_ihracat_tarihi(Index: Integer; const Astring: string);
    function  gtb_fiili_ihracat_tarihi_Specified(Index: Integer): boolean;
    procedure Setreserved1(Index: Integer; const Astring: string);
    function  reserved1_Specified(Index: Integer): boolean;
    procedure Setreserved2(Index: Integer; const Astring: string);
    function  reserved2_Specified(Index: Integer): boolean;
    procedure Setreserved3(Index: Integer; const Astring: string);
    function  reserved3_Specified(Index: Integer): boolean;
    procedure Setdocument_type_code(Index: Integer; const Astring: string);
    function  document_type_code_Specified(Index: Integer): boolean;
    procedure Setnotes(Index: Integer; const AQueryInvoicesWithGUIDList: QueryInvoicesWithGUIDList);
    function  notes_Specified(Index: Integer): boolean;
    procedure SetdespatchInfo(Index: Integer; const AArray_Of_DocumentInfo: Array_Of_DocumentInfo);
    function  despatchInfo_Specified(Index: Integer): boolean;
    procedure SetorderInfo(Index: Integer; const ADocumentInfo: DocumentInfo);
    function  orderInfo_Specified(Index: Integer): boolean;
    procedure SettaxInfo(Index: Integer; const AArray_Of_TaxInfo: Array_Of_TaxInfo);
    function  taxInfo_Specified(Index: Integer): boolean;
    procedure SettaxInclusiveAmount(Index: Integer; const Astring: string);
    function  taxInclusiveAmount_Specified(Index: Integer): boolean;
    procedure SettaxExlusiveAmount(Index: Integer; const Astring: string);
    function  taxExlusiveAmount_Specified(Index: Integer): boolean;
    procedure SetallowanceTotalAmount(Index: Integer; const Astring: string);
    function  allowanceTotalAmount_Specified(Index: Integer): boolean;
    procedure SettaxAmount0015(Index: Integer; const Astring: string);
    function  taxAmount0015_Specified(Index: Integer): boolean;
    procedure SetlineExtensionAmount(Index: Integer; const Astring: string);
    function  lineExtensionAmount_Specified(Index: Integer): boolean;
    procedure SetsuplierPersonName(Index: Integer; const Astring: string);
    function  suplierPersonName_Specified(Index: Integer): boolean;
    procedure SetsupplierPersonMiddleName(Index: Integer; const Astring: string);
    function  supplierPersonMiddleName_Specified(Index: Integer): boolean;
    procedure SetsupplierPersonFamilyName(Index: Integer; const Astring: string);
    function  supplierPersonFamilyName_Specified(Index: Integer): boolean;
    procedure SetcustomerPersonName(Index: Integer; const Astring: string);
    function  customerPersonName_Specified(Index: Integer): boolean;
    procedure SetcustomerPersonMiddleName(Index: Integer; const Astring: string);
    function  customerPersonMiddleName_Specified(Index: Integer): boolean;
    procedure SetcustomerPersonFamilyName(Index: Integer; const Astring: string);
    function  customerPersonFamilyName_Specified(Index: Integer): boolean;
    procedure Setdestination_title(Index: Integer; const Astring: string);
    function  destination_title_Specified(Index: Integer): boolean;
    procedure Setis_read(Index: Integer; const Astring: string);
    function  is_read_Specified(Index: Integer): boolean;
    procedure Setis_archieved(Index: Integer; const Astring: string);
    function  is_archieved_Specified(Index: Integer): boolean;
    procedure Setis_accounted(Index: Integer; const Astring: string);
    function  is_accounted_Specified(Index: Integer): boolean;
    procedure Setis_transferred(Index: Integer; const Astring: string);
    function  is_transferred_Specified(Index: Integer): boolean;
    procedure Setis_printed(Index: Integer; const Astring: string);
    function  is_printed_Specified(Index: Integer): boolean;
    procedure Setlocal_id(Index: Integer; const Astring: string);
    function  local_id_Specified(Index: Integer): boolean;
    procedure SetsendingType(Index: Integer; const Astring: string);
    function  sendingType_Specified(Index: Integer): boolean;
    procedure SetbuyerCustomerPartyName(Index: Integer; const Astring: string);
    function  buyerCustomerPartyName_Specified(Index: Integer): boolean;
    procedure SetbuyerCustomerPersonName(Index: Integer; const Astring: string);
    function  buyerCustomerPersonName_Specified(Index: Integer): boolean;
    procedure SetbuyerCustomerPersonFamilyName(Index: Integer; const Astring: string);
    function  buyerCustomerPersonFamilyName_Specified(Index: Integer): boolean;
    procedure Setreport_no(Index: Integer; const Astring: string);
    function  report_no_Specified(Index: Integer): boolean;
    procedure Setcancel_report_no(Index: Integer; const Astring: string);
    function  cancel_report_no_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property document_uuid:                 string                     Index (IS_OPTN or IS_UNQL) read Fdocument_uuid write Setdocument_uuid stored document_uuid_Specified;
    property document_id:                   string                     Index (IS_OPTN or IS_UNQL) read Fdocument_id write Setdocument_id stored document_id_Specified;
    property envelope_uuid:                 string                     Index (IS_OPTN or IS_UNQL) read Fenvelope_uuid write Setenvelope_uuid stored envelope_uuid_Specified;
    property document_profile:              string                     Index (IS_OPTN or IS_UNQL) read Fdocument_profile write Setdocument_profile stored document_profile_Specified;
    property system_creation_time:          string                     Index (IS_OPTN or IS_UNQL) read Fsystem_creation_time write Setsystem_creation_time stored system_creation_time_Specified;
    property document_issue_date:           string                     Index (IS_OPTN or IS_UNQL) read Fdocument_issue_date write Setdocument_issue_date stored document_issue_date_Specified;
    property source_id:                     string                     Index (IS_OPTN or IS_UNQL) read Fsource_id write Setsource_id stored source_id_Specified;
    property destination_id:                string                     Index (IS_OPTN or IS_UNQL) read Fdestination_id write Setdestination_id stored destination_id_Specified;
    property source_urn:                    string                     Index (IS_OPTN or IS_UNQL) read Fsource_urn write Setsource_urn stored source_urn_Specified;
    property source_title:                  string                     Index (IS_OPTN or IS_UNQL) read Fsource_title write Setsource_title stored source_title_Specified;
    property destination_urn:               string                     Index (IS_OPTN or IS_UNQL) read Fdestination_urn write Setdestination_urn stored destination_urn_Specified;
    property currency_code:                 string                     Index (IS_OPTN or IS_UNQL) read Fcurrency_code write Setcurrency_code stored currency_code_Specified;
    property invoice_total:                 string                     Index (IS_OPTN or IS_UNQL) read Finvoice_total write Setinvoice_total stored invoice_total_Specified;
    property state_code:                    string                     Index (IS_OPTN or IS_UNQL) read Fstate_code write Setstate_code stored state_code_Specified;
    property state_explanation:             string                     Index (IS_OPTN or IS_UNQL) read Fstate_explanation write Setstate_explanation stored state_explanation_Specified;
    property cause:                         string                     Index (IS_OPTN or IS_UNQL) read Fcause write Setcause stored cause_Specified;
    property content_type:                  string                     Index (IS_OPTN or IS_UNQL) read Fcontent_type write Setcontent_type stored content_type_Specified;
    property document_content:              TByteDynArray              Index (IS_OPTN or IS_UNQL) read Fdocument_content write Setdocument_content stored document_content_Specified;
    property emailSent:                     Integer                    Index (IS_UNQL) read FemailSent write FemailSent;
    property emailSentDate:                 string                     Index (IS_OPTN or IS_UNQL) read FemailSentDate write SetemailSentDate stored emailSentDate_Specified;
    property cancelled:                     string                     Index (IS_OPTN or IS_UNQL) read Fcancelled write Setcancelled stored cancelled_Specified;
    property cancel_date:                   string                     Index (IS_OPTN or IS_UNQL) read Fcancel_date write Setcancel_date stored cancel_date_Specified;
    property reference_document_uuid:       string                     Index (IS_OPTN or IS_UNQL) read Freference_document_uuid write Setreference_document_uuid stored reference_document_uuid_Specified;
    property response_document_uuid:        string                     Index (IS_OPTN or IS_UNQL) read Fresponse_document_uuid write Setresponse_document_uuid stored response_document_uuid_Specified;
    property response_code:                 string                     Index (IS_OPTN or IS_UNQL) read Fresponse_code write Setresponse_code stored response_code_Specified;
    property response_validation_state:     string                     Index (IS_OPTN or IS_UNQL) read Fresponse_validation_state write Setresponse_validation_state stored response_validation_state_Specified;
    property response_received_date:        string                     Index (IS_OPTN or IS_UNQL) read Fresponse_received_date write Setresponse_received_date stored response_received_date_Specified;
    property gtb_reference_no:              string                     Index (IS_OPTN or IS_UNQL) read Fgtb_reference_no write Setgtb_reference_no stored gtb_reference_no_Specified;
    property gtb_gcb_tescil_no:             string                     Index (IS_OPTN or IS_UNQL) read Fgtb_gcb_tescil_no write Setgtb_gcb_tescil_no stored gtb_gcb_tescil_no_Specified;
    property gtb_fiili_ihracat_tarihi:      string                     Index (IS_OPTN or IS_UNQL) read Fgtb_fiili_ihracat_tarihi write Setgtb_fiili_ihracat_tarihi stored gtb_fiili_ihracat_tarihi_Specified;
    property reserved1:                     string                     Index (IS_OPTN or IS_UNQL) read Freserved1 write Setreserved1 stored reserved1_Specified;
    property reserved2:                     string                     Index (IS_OPTN or IS_UNQL) read Freserved2 write Setreserved2 stored reserved2_Specified;
    property reserved3:                     string                     Index (IS_OPTN or IS_UNQL) read Freserved3 write Setreserved3 stored reserved3_Specified;
    property document_type_code:            string                     Index (IS_OPTN or IS_UNQL) read Fdocument_type_code write Setdocument_type_code stored document_type_code_Specified;
    property notes:                         QueryInvoicesWithGUIDList  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fnotes write Setnotes stored notes_Specified;
    property despatchInfo:                  Array_Of_DocumentInfo      Index (IS_OPTN or IS_UNBD or IS_UNQL) read FdespatchInfo write SetdespatchInfo stored despatchInfo_Specified;
    property orderInfo:                     DocumentInfo               Index (IS_OPTN or IS_UNQL) read ForderInfo write SetorderInfo stored orderInfo_Specified;
    property taxInfo:                       Array_Of_TaxInfo           Index (IS_OPTN or IS_UNBD or IS_UNQL) read FtaxInfo write SettaxInfo stored taxInfo_Specified;
    property taxInclusiveAmount:            string                     Index (IS_OPTN or IS_UNQL) read FtaxInclusiveAmount write SettaxInclusiveAmount stored taxInclusiveAmount_Specified;
    property taxExlusiveAmount:             string                     Index (IS_OPTN or IS_UNQL) read FtaxExlusiveAmount write SettaxExlusiveAmount stored taxExlusiveAmount_Specified;
    property allowanceTotalAmount:          string                     Index (IS_OPTN or IS_UNQL) read FallowanceTotalAmount write SetallowanceTotalAmount stored allowanceTotalAmount_Specified;
    property taxAmount0015:                 string                     Index (IS_OPTN or IS_UNQL) read FtaxAmount0015 write SettaxAmount0015 stored taxAmount0015_Specified;
    property lineExtensionAmount:           string                     Index (IS_OPTN or IS_UNQL) read FlineExtensionAmount write SetlineExtensionAmount stored lineExtensionAmount_Specified;
    property suplierPersonName:             string                     Index (IS_OPTN or IS_UNQL) read FsuplierPersonName write SetsuplierPersonName stored suplierPersonName_Specified;
    property supplierPersonMiddleName:      string                     Index (IS_OPTN or IS_UNQL) read FsupplierPersonMiddleName write SetsupplierPersonMiddleName stored supplierPersonMiddleName_Specified;
    property supplierPersonFamilyName:      string                     Index (IS_OPTN or IS_UNQL) read FsupplierPersonFamilyName write SetsupplierPersonFamilyName stored supplierPersonFamilyName_Specified;
    property customerPersonName:            string                     Index (IS_OPTN or IS_UNQL) read FcustomerPersonName write SetcustomerPersonName stored customerPersonName_Specified;
    property customerPersonMiddleName:      string                     Index (IS_OPTN or IS_UNQL) read FcustomerPersonMiddleName write SetcustomerPersonMiddleName stored customerPersonMiddleName_Specified;
    property customerPersonFamilyName:      string                     Index (IS_OPTN or IS_UNQL) read FcustomerPersonFamilyName write SetcustomerPersonFamilyName stored customerPersonFamilyName_Specified;
    property destination_title:             string                     Index (IS_OPTN or IS_UNQL) read Fdestination_title write Setdestination_title stored destination_title_Specified;
    property is_read:                       string                     Index (IS_OPTN or IS_UNQL) read Fis_read write Setis_read stored is_read_Specified;
    property is_archieved:                  string                     Index (IS_OPTN or IS_UNQL) read Fis_archieved write Setis_archieved stored is_archieved_Specified;
    property is_accounted:                  string                     Index (IS_OPTN or IS_UNQL) read Fis_accounted write Setis_accounted stored is_accounted_Specified;
    property is_transferred:                string                     Index (IS_OPTN or IS_UNQL) read Fis_transferred write Setis_transferred stored is_transferred_Specified;
    property is_printed:                    string                     Index (IS_OPTN or IS_UNQL) read Fis_printed write Setis_printed stored is_printed_Specified;
    property local_id:                      string                     Index (IS_OPTN or IS_UNQL) read Flocal_id write Setlocal_id stored local_id_Specified;
    property sendingType:                   string                     Index (IS_OPTN or IS_UNQL) read FsendingType write SetsendingType stored sendingType_Specified;
    property buyerCustomerPartyName:        string                     Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPartyName write SetbuyerCustomerPartyName stored buyerCustomerPartyName_Specified;
    property buyerCustomerPersonName:       string                     Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPersonName write SetbuyerCustomerPersonName stored buyerCustomerPersonName_Specified;
    property buyerCustomerPersonFamilyName: string                     Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPersonFamilyName write SetbuyerCustomerPersonFamilyName stored buyerCustomerPersonFamilyName_Specified;
    property report_no:                     string                     Index (IS_OPTN or IS_UNQL) read Freport_no write Setreport_no stored report_no_Specified;
    property cancel_report_no:              string                     Index (IS_OPTN or IS_UNQL) read Fcancel_report_no write Setcancel_report_no stored cancel_report_no_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreditInfo, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  CreditInfo = class(TRemotable)
  private
    Fcode: string;
    Fexplanation: string;
    FtotalCredit: TXSDecimal;
    FremainCredit: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property code:         string      Index (IS_UNQL) read Fcode write Fcode;
    property explanation:  string      Index (IS_UNQL) read Fexplanation write Fexplanation;
    property totalCredit:  TXSDecimal  Index (IS_UNQL) read FtotalCredit write FtotalCredit;
    property remainCredit: TXSDecimal  Index (IS_UNQL) read FremainCredit write FremainCredit;
  end;

  getCreditActionsforCustomerResponse = array of CreditAction;   { "http://earchiveinvoiceservice.entegrator.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : CreditAction, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  CreditAction = class(TRemotable)
  private
    Fpurchase_date: string;
    Fpurchase_count: TXSDecimal;
    FconsideredCount: TXSDecimal;
    Fcredit_unit: Integer;
    Fcredit_pool_id: string;
    Fbuyer_VKN_TCKN: string;
    Faction_type: CreditActionTypes;
  public
    destructor Destroy; override;
  published
    property purchase_date:   string             Index (IS_UNQL) read Fpurchase_date write Fpurchase_date;
    property purchase_count:  TXSDecimal         Index (IS_UNQL) read Fpurchase_count write Fpurchase_count;
    property consideredCount: TXSDecimal         Index (IS_UNQL) read FconsideredCount write FconsideredCount;
    property credit_unit:     Integer            Index (IS_UNQL) read Fcredit_unit write Fcredit_unit;
    property credit_pool_id:  string             Index (IS_UNQL) read Fcredit_pool_id write Fcredit_pool_id;
    property buyer_VKN_TCKN:  string             Index (IS_UNQL) read Fbuyer_VKN_TCKN write Fbuyer_VKN_TCKN;
    property action_type:     CreditActionTypes  Index (IS_UNQL) read Faction_type write Faction_type;
  end;



  // ************************************************************************ //
  // XML       : EntResponse, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  EntResponse = class(TRemotable)
  private
    FdocumentUUID: string;
    FdocumentUUID_Specified: boolean;
    FdocumentID: string;
    FdocumentID_Specified: boolean;
    Fcode: string;
    Fcode_Specified: boolean;
    Fexplanation: string;
    Fexplanation_Specified: boolean;
    Fcause: string;
    Fcause_Specified: boolean;
    procedure SetdocumentUUID(Index: Integer; const Astring: string);
    function  documentUUID_Specified(Index: Integer): boolean;
    procedure SetdocumentID(Index: Integer; const Astring: string);
    function  documentID_Specified(Index: Integer): boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setexplanation(Index: Integer; const Astring: string);
    function  explanation_Specified(Index: Integer): boolean;
    procedure Setcause(Index: Integer; const Astring: string);
    function  cause_Specified(Index: Integer): boolean;
  published
    property documentUUID: string  Index (IS_OPTN or IS_UNQL) read FdocumentUUID write SetdocumentUUID stored documentUUID_Specified;
    property documentID:   string  Index (IS_OPTN or IS_UNQL) read FdocumentID write SetdocumentID stored documentID_Specified;
    property code:         string  Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property explanation:  string  Index (IS_OPTN or IS_UNQL) read Fexplanation write Setexplanation stored explanation_Specified;
    property cause:        string  Index (IS_OPTN or IS_UNQL) read Fcause write Setcause stored cause_Specified;
  end;



  // ************************************************************************ //
  // XML       : LogResponse, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  LogResponse = class(TRemotable)
  private
    FqueryState: string;
    FqueryState_Specified: boolean;
    FstateExplanation: string;
    FstateExplanation_Specified: boolean;
    FlogCount: Integer;
    FinvoiceLogs: Array_Of_InvoiceLog;
    FinvoiceLogs_Specified: boolean;
    procedure SetqueryState(Index: Integer; const Astring: string);
    function  queryState_Specified(Index: Integer): boolean;
    procedure SetstateExplanation(Index: Integer; const Astring: string);
    function  stateExplanation_Specified(Index: Integer): boolean;
    procedure SetinvoiceLogs(Index: Integer; const AArray_Of_InvoiceLog: Array_Of_InvoiceLog);
    function  invoiceLogs_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property queryState:       string               Index (IS_OPTN or IS_UNQL) read FqueryState write SetqueryState stored queryState_Specified;
    property stateExplanation: string               Index (IS_OPTN or IS_UNQL) read FstateExplanation write SetstateExplanation stored stateExplanation_Specified;
    property logCount:         Integer              Index (IS_UNQL) read FlogCount write FlogCount;
    property invoiceLogs:      Array_Of_InvoiceLog  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FinvoiceLogs write SetinvoiceLogs stored invoiceLogs_Specified;
  end;



  // ************************************************************************ //
  // XML       : InputDocument, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  InputDocument = class(TRemotable)
  private
    FdocumentUUID: string;
    FxmlContent: string;
    FsourceUrn: string;
    FdestinationUrn: string;
    FdocumentNoPrefix: string;
    FdocumentNoPrefix_Specified: boolean;
    FlocalId: string;
    FlocalId_Specified: boolean;
    FdocumentId: string;
    FdocumentId_Specified: boolean;
    FsubmitForApproval: Boolean;
    FsubmitForApproval_Specified: boolean;
    FdocumentDate: string;
    Fnote: string;
    Fnote_Specified: boolean;
    procedure SetdocumentNoPrefix(Index: Integer; const Astring: string);
    function  documentNoPrefix_Specified(Index: Integer): boolean;
    procedure SetlocalId(Index: Integer; const Astring: string);
    function  localId_Specified(Index: Integer): boolean;
    procedure SetdocumentId(Index: Integer; const Astring: string);
    function  documentId_Specified(Index: Integer): boolean;
    procedure SetsubmitForApproval(Index: Integer; const ABoolean: Boolean);
    function  submitForApproval_Specified(Index: Integer): boolean;
    procedure Setnote(Index: Integer; const Astring: string);
    function  note_Specified(Index: Integer): boolean;
  published
    property documentUUID:      string   Index (IS_UNQL) read FdocumentUUID write FdocumentUUID;
    property xmlContent:        string   Index (IS_UNQL) read FxmlContent write FxmlContent;
    property sourceUrn:         string   Index (IS_UNQL) read FsourceUrn write FsourceUrn;
    property destinationUrn:    string   Index (IS_UNQL) read FdestinationUrn write FdestinationUrn;
    property documentNoPrefix:  string   Index (IS_OPTN or IS_UNQL) read FdocumentNoPrefix write SetdocumentNoPrefix stored documentNoPrefix_Specified;
    property localId:           string   Index (IS_OPTN or IS_UNQL) read FlocalId write SetlocalId stored localId_Specified;
    property documentId:        string   Index (IS_OPTN or IS_UNQL) read FdocumentId write SetdocumentId stored documentId_Specified;
    property submitForApproval: Boolean  Index (IS_OPTN or IS_UNQL) read FsubmitForApproval write SetsubmitForApproval stored submitForApproval_Specified;
    property documentDate:      string   Index (IS_UNQL) read FdocumentDate write FdocumentDate;
    property note:              string   Index (IS_OPTN or IS_UNQL) read Fnote write Setnote stored note_Specified;
  end;

  sendInvoiceWithoutIdResponse = array of EntResponse;   { "http://earchiveinvoiceservice.entegrator.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  entry2 = class(TRemotable)
  private
    Fkey: string;
    Fkey_Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setkey(Index: Integer; const Astring: string);
    function  key_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
  published
    property key:   string  Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
    property value: string  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;

  searchParams = array of entry;                { "http://earchiveinvoiceservice.entegrator.com/"[Cplx] }


  // ************************************************************************ //
  // XML       : InvoiceLog, global, <complexType>
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // ************************************************************************ //
  InvoiceLog = class(TRemotable)
  private
    FdocumentUUID: string;
    FdocumentUUID_Specified: boolean;
    FenvelopeUUID: string;
    FenvelopeUUID_Specified: boolean;
    FprocessTime: string;
    FprocessTime_Specified: boolean;
    FprocessState: string;
    FprocessState_Specified: boolean;
    FprocessResult: string;
    FprocessResult_Specified: boolean;
    FresultExplanation: string;
    FresultExplanation_Specified: boolean;
    procedure SetdocumentUUID(Index: Integer; const Astring: string);
    function  documentUUID_Specified(Index: Integer): boolean;
    procedure SetenvelopeUUID(Index: Integer; const Astring: string);
    function  envelopeUUID_Specified(Index: Integer): boolean;
    procedure SetprocessTime(Index: Integer; const Astring: string);
    function  processTime_Specified(Index: Integer): boolean;
    procedure SetprocessState(Index: Integer; const Astring: string);
    function  processState_Specified(Index: Integer): boolean;
    procedure SetprocessResult(Index: Integer; const Astring: string);
    function  processResult_Specified(Index: Integer): boolean;
    procedure SetresultExplanation(Index: Integer; const Astring: string);
    function  resultExplanation_Specified(Index: Integer): boolean;
  published
    property documentUUID:      string  Index (IS_OPTN or IS_UNQL) read FdocumentUUID write SetdocumentUUID stored documentUUID_Specified;
    property envelopeUUID:      string  Index (IS_OPTN or IS_UNQL) read FenvelopeUUID write SetenvelopeUUID stored envelopeUUID_Specified;
    property processTime:       string  Index (IS_OPTN or IS_UNQL) read FprocessTime write SetprocessTime stored processTime_Specified;
    property processState:      string  Index (IS_OPTN or IS_UNQL) read FprocessState write SetprocessState stored processState_Specified;
    property processResult:     string  Index (IS_OPTN or IS_UNQL) read FprocessResult write SetprocessResult stored processResult_Specified;
    property resultExplanation: string  Index (IS_OPTN or IS_UNQL) read FresultExplanation write SetresultExplanation stored resultExplanation_Specified;
  end;

  searchParams2 = array of entry2;              { "http://earchiveinvoiceservice.entegrator.com/"[Cplx] }

  // ************************************************************************ //
  // Namespace : http://earchiveinvoiceservice.entegrator.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : EArchiveInvoiceWSPortBinding
  // service   : EArchiveInvoiceWS
  // port      : EArchiveInvoiceWSPort
  // URL       : http://servis.smartdonusum.com/EArchiveInvoiceService/EArchiveInvoiceWS
  // ************************************************************************ //
  EArchiveInvoiceWS = interface(IInvokable)
  ['{2D1F148C-C75E-9755-00DA-39A56216CDE1}']
    function  sendZReport(const zReportXML: InputDocument; const reportType: string): EntResponse; stdcall;
    function  updateInvoice(const invoiceXMLList: sendInvoiceWithoutId): sendInvoiceWithoutIdResponse; stdcall;
    function  cancelInvoice(const invoice_uuid: string; const cancelReason: string; const cancelDate: string): EntResponse; stdcall;
    function  sendInvoice(const invoiceXMLList: sendInvoiceWithoutId): sendInvoiceWithoutIdResponse; stdcall;
    function  QueryInvoicesWithDocumentDateAndSearchParams(const startDate: string; const endDate: string; const withXML: string; const minRecordId: string; const searchParams: searchParams): DocumentQueryResponse; stdcall;
    function  QueryArchivedInvoicesWithDocumentDate(const startDate: string; const endDate: string; const withXML: string; const minRecordId: string): DocumentQueryResponse; stdcall;
    function  QueryInvoicesWithReceivedDateWithSearchParams(const startDate: string; const endDate: string; const withXML: string; const minRecordId: string; const searchParams: searchParams2): DocumentQueryResponse; stdcall;
    function  QueryInvoicesWithReceivedDate(const startDate: string; const endDate: string; const withXML: string; const minRecordId: string): DocumentQueryResponse; stdcall;
    function  getCustomerCreditCount(const vkn_tckn: string): CreditInfo; stdcall;
    function  QueryInvoiceWithLocalId(const localId: string): DocumentQueryResponse; stdcall;
    function  controlInvoiceXML(const invoiceXML: string): EntResponse; stdcall;
    function  QueryArchivedInvoice(const paramType: string; const parameter: string; const withXML: string; const fiscalYear: Integer): DocumentQueryResponse; stdcall;
    function  GetEAInvoiceStatusWithLogs(const documentUuid: string): LogResponse; stdcall;
    function  getCreditActionsforCustomer(const vkn_tckn: string): getCreditActionsforCustomerResponse; stdcall;
    function  getCustomerCreditSpace(const vkn_tckn: string): CreditInfo; stdcall;
    function  QueryInvoicesWithGUIDList(const guidList: QueryInvoicesWithGUIDList): DocumentQueryResponse; stdcall;
    function  GetLastInvoiceIdAndDate(const source_id: string; const documentIdPrefix: QueryInvoicesWithGUIDList): DocumentQueryResponse; stdcall;
    function  QueryInvoiceWithReferenceCode(const referenceCode: string): DocumentQueryResponse; stdcall;
    function  QueryInvoicesWithDocumentDate(const startDate: string; const endDate: string; const withXML: string; const minRecordId: string): DocumentQueryResponse; stdcall;
    function  sendInvoiceWithoutId(const invoiceXMLList: sendInvoiceWithoutId): sendInvoiceWithoutIdResponse; stdcall;
    function  sendInvoiceWithoutIdAndUuid(const invoiceXMLList: sendInvoiceWithoutId): sendInvoiceWithoutIdResponse; stdcall;
    function  sendAndApproveInvoice(const invoiceXMLList: sendInvoiceWithoutId): sendInvoiceWithoutIdResponse; stdcall;
    function  QueryInvoice(const paramType: string; const parameter: string; const withXML: string): DocumentQueryResponse; stdcall;
    function  getNewUUID: string; stdcall;
    function  isEFaturaUser(const vkn_tckn: string): UserQueryResponse; stdcall;
    function  setDocumentFlag(const flagSetter: flagSetter): EntResponse; stdcall;
    function  getPrefixList: DocumentQueryResponse; stdcall;
    function  setEmailSent(const invoice_uuid_list: QueryInvoicesWithGUIDList): sendInvoiceWithoutIdResponse; stdcall;
  end;

function GetEArchiveInvoiceWS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EArchiveInvoiceWS;


implementation
  uses System.SysUtils;

function GetEArchiveInvoiceWS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EArchiveInvoiceWS;
const
  defWSDL = 'EArchiveInvoiceWS.xml';
  defURL  = 'http://servis.smartdonusum.com/EArchiveInvoiceService/EArchiveInvoiceWS';
  defSvc  = 'EArchiveInvoiceWS';
  defPrt  = 'EArchiveInvoiceWSPort';
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
    Result := (RIO as EArchiveInvoiceWS);
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


procedure DocumentInfo.SetdocumentDate(Index: Integer; const Astring: string);
begin
  FdocumentDate := Astring;
  FdocumentDate_Specified := True;
end;

function DocumentInfo.documentDate_Specified(Index: Integer): boolean;
begin
  Result := FdocumentDate_Specified;
end;

procedure DocumentInfo.SetdocumentNo(Index: Integer; const Astring: string);
begin
  FdocumentNo := Astring;
  FdocumentNo_Specified := True;
end;

function DocumentInfo.documentNo_Specified(Index: Integer): boolean;
begin
  Result := FdocumentNo_Specified;
end;

procedure TaxInfo.SettaxtTypeCode(Index: Integer; const Astring: string);
begin
  FtaxtTypeCode := Astring;
  FtaxtTypeCode_Specified := True;
end;

function TaxInfo.taxtTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FtaxtTypeCode_Specified;
end;

procedure TaxInfo.SettaxtTypeName(Index: Integer; const Astring: string);
begin
  FtaxtTypeName := Astring;
  FtaxtTypeName_Specified := True;
end;

function TaxInfo.taxtTypeName_Specified(Index: Integer): boolean;
begin
  Result := FtaxtTypeName_Specified;
end;

procedure TaxInfo.SettaxAmount(Index: Integer; const Astring: string);
begin
  FtaxAmount := Astring;
  FtaxAmount_Specified := True;
end;

function TaxInfo.taxAmount_Specified(Index: Integer): boolean;
begin
  Result := FtaxAmount_Specified;
end;

procedure TaxInfo.SettaxPercentage(Index: Integer; const Astring: string);
begin
  FtaxPercentage := Astring;
  FtaxPercentage_Specified := True;
end;

function TaxInfo.taxPercentage_Specified(Index: Integer): boolean;
begin
  Result := FtaxPercentage_Specified;
end;

procedure ResponseUser.Setvkn_tckn(Index: Integer; const Astring: string);
begin
  Fvkn_tckn := Astring;
  Fvkn_tckn_Specified := True;
end;

function ResponseUser.vkn_tckn_Specified(Index: Integer): boolean;
begin
  Result := Fvkn_tckn_Specified;
end;

procedure ResponseUser.Setunvan_ad(Index: Integer; const Astring: string);
begin
  Funvan_ad := Astring;
  Funvan_ad_Specified := True;
end;

function ResponseUser.unvan_ad_Specified(Index: Integer): boolean;
begin
  Result := Funvan_ad_Specified;
end;

procedure ResponseUser.Setetiket(Index: Integer; const Astring: string);
begin
  Fetiket := Astring;
  Fetiket_Specified := True;
end;

function ResponseUser.etiket_Specified(Index: Integer): boolean;
begin
  Result := Fetiket_Specified;
end;

procedure ResponseUser.Settip(Index: Integer; const Astring: string);
begin
  Ftip := Astring;
  Ftip_Specified := True;
end;

function ResponseUser.tip_Specified(Index: Integer): boolean;
begin
  Result := Ftip_Specified;
end;

procedure ResponseUser.SetilkKayitZamani(Index: Integer; const Astring: string);
begin
  FilkKayitZamani := Astring;
  FilkKayitZamani_Specified := True;
end;

function ResponseUser.ilkKayitZamani_Specified(Index: Integer): boolean;
begin
  Result := FilkKayitZamani_Specified;
end;

procedure ResponseUser.SetetiketKayitZamani(Index: Integer; const Astring: string);
begin
  FetiketKayitZamani := Astring;
  FetiketKayitZamani_Specified := True;
end;

function ResponseUser.etiketKayitZamani_Specified(Index: Integer): boolean;
begin
  Result := FetiketKayitZamani_Specified;
end;

destructor DocumentQueryResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdocuments)-1 do
    System.SysUtils.FreeAndNil(Fdocuments[I]);
  System.SetLength(Fdocuments, 0);
  inherited Destroy;
end;

procedure DocumentQueryResponse.SetstateExplanation(Index: Integer; const Astring: string);
begin
  FstateExplanation := Astring;
  FstateExplanation_Specified := True;
end;

function DocumentQueryResponse.stateExplanation_Specified(Index: Integer): boolean;
begin
  Result := FstateExplanation_Specified;
end;

procedure DocumentQueryResponse.Setdocuments(Index: Integer; const AArray_Of_ResponseDocument: Array_Of_ResponseDocument);
begin
  Fdocuments := AArray_Of_ResponseDocument;
  Fdocuments_Specified := True;
end;

function DocumentQueryResponse.documents_Specified(Index: Integer): boolean;
begin
  Result := Fdocuments_Specified;
end;

destructor UserQueryResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fusers)-1 do
    System.SysUtils.FreeAndNil(Fusers[I]);
  System.SetLength(Fusers, 0);
  inherited Destroy;
end;

procedure UserQueryResponse.SetstateExplanation(Index: Integer; const Astring: string);
begin
  FstateExplanation := Astring;
  FstateExplanation_Specified := True;
end;

function UserQueryResponse.stateExplanation_Specified(Index: Integer): boolean;
begin
  Result := FstateExplanation_Specified;
end;

procedure UserQueryResponse.Setusers(Index: Integer; const AArray_Of_ResponseUser: Array_Of_ResponseUser);
begin
  Fusers := AArray_Of_ResponseUser;
  Fusers_Specified := True;
end;

function UserQueryResponse.users_Specified(Index: Integer): boolean;
begin
  Result := Fusers_Specified;
end;

procedure flagSetter.Setdocument_direction(Index: Integer; const Astring: string);
begin
  Fdocument_direction := Astring;
  Fdocument_direction_Specified := True;
end;

function flagSetter.document_direction_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_direction_Specified;
end;

procedure flagSetter.Setflag_name(Index: Integer; const Astring: string);
begin
  Fflag_name := Astring;
  Fflag_name_Specified := True;
end;

function flagSetter.flag_name_Specified(Index: Integer): boolean;
begin
  Result := Fflag_name_Specified;
end;

procedure flagSetter.Setdocument_uuid(Index: Integer; const Astring: string);
begin
  Fdocument_uuid := Astring;
  Fdocument_uuid_Specified := True;
end;

function flagSetter.document_uuid_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_uuid_Specified;
end;

procedure entry.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function entry.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor ResponseDocument.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdespatchInfo)-1 do
    System.SysUtils.FreeAndNil(FdespatchInfo[I]);
  System.SetLength(FdespatchInfo, 0);
  for I := 0 to System.Length(FtaxInfo)-1 do
    System.SysUtils.FreeAndNil(FtaxInfo[I]);
  System.SetLength(FtaxInfo, 0);
  System.SysUtils.FreeAndNil(ForderInfo);
  inherited Destroy;
end;

procedure ResponseDocument.Setdocument_uuid(Index: Integer; const Astring: string);
begin
  Fdocument_uuid := Astring;
  Fdocument_uuid_Specified := True;
end;

function ResponseDocument.document_uuid_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_uuid_Specified;
end;

procedure ResponseDocument.Setdocument_id(Index: Integer; const Astring: string);
begin
  Fdocument_id := Astring;
  Fdocument_id_Specified := True;
end;

function ResponseDocument.document_id_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_id_Specified;
end;

procedure ResponseDocument.Setenvelope_uuid(Index: Integer; const Astring: string);
begin
  Fenvelope_uuid := Astring;
  Fenvelope_uuid_Specified := True;
end;

function ResponseDocument.envelope_uuid_Specified(Index: Integer): boolean;
begin
  Result := Fenvelope_uuid_Specified;
end;

procedure ResponseDocument.Setdocument_profile(Index: Integer; const Astring: string);
begin
  Fdocument_profile := Astring;
  Fdocument_profile_Specified := True;
end;

function ResponseDocument.document_profile_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_profile_Specified;
end;

procedure ResponseDocument.Setsystem_creation_time(Index: Integer; const Astring: string);
begin
  Fsystem_creation_time := Astring;
  Fsystem_creation_time_Specified := True;
end;

function ResponseDocument.system_creation_time_Specified(Index: Integer): boolean;
begin
  Result := Fsystem_creation_time_Specified;
end;

procedure ResponseDocument.Setdocument_issue_date(Index: Integer; const Astring: string);
begin
  Fdocument_issue_date := Astring;
  Fdocument_issue_date_Specified := True;
end;

function ResponseDocument.document_issue_date_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_issue_date_Specified;
end;

procedure ResponseDocument.Setsource_id(Index: Integer; const Astring: string);
begin
  Fsource_id := Astring;
  Fsource_id_Specified := True;
end;

function ResponseDocument.source_id_Specified(Index: Integer): boolean;
begin
  Result := Fsource_id_Specified;
end;

procedure ResponseDocument.Setdestination_id(Index: Integer; const Astring: string);
begin
  Fdestination_id := Astring;
  Fdestination_id_Specified := True;
end;

function ResponseDocument.destination_id_Specified(Index: Integer): boolean;
begin
  Result := Fdestination_id_Specified;
end;

procedure ResponseDocument.Setsource_urn(Index: Integer; const Astring: string);
begin
  Fsource_urn := Astring;
  Fsource_urn_Specified := True;
end;

function ResponseDocument.source_urn_Specified(Index: Integer): boolean;
begin
  Result := Fsource_urn_Specified;
end;

procedure ResponseDocument.Setsource_title(Index: Integer; const Astring: string);
begin
  Fsource_title := Astring;
  Fsource_title_Specified := True;
end;

function ResponseDocument.source_title_Specified(Index: Integer): boolean;
begin
  Result := Fsource_title_Specified;
end;

procedure ResponseDocument.Setdestination_urn(Index: Integer; const Astring: string);
begin
  Fdestination_urn := Astring;
  Fdestination_urn_Specified := True;
end;

function ResponseDocument.destination_urn_Specified(Index: Integer): boolean;
begin
  Result := Fdestination_urn_Specified;
end;

procedure ResponseDocument.Setcurrency_code(Index: Integer; const Astring: string);
begin
  Fcurrency_code := Astring;
  Fcurrency_code_Specified := True;
end;

function ResponseDocument.currency_code_Specified(Index: Integer): boolean;
begin
  Result := Fcurrency_code_Specified;
end;

procedure ResponseDocument.Setinvoice_total(Index: Integer; const Astring: string);
begin
  Finvoice_total := Astring;
  Finvoice_total_Specified := True;
end;

function ResponseDocument.invoice_total_Specified(Index: Integer): boolean;
begin
  Result := Finvoice_total_Specified;
end;

procedure ResponseDocument.Setstate_code(Index: Integer; const Astring: string);
begin
  Fstate_code := Astring;
  Fstate_code_Specified := True;
end;

function ResponseDocument.state_code_Specified(Index: Integer): boolean;
begin
  Result := Fstate_code_Specified;
end;

procedure ResponseDocument.Setstate_explanation(Index: Integer; const Astring: string);
begin
  Fstate_explanation := Astring;
  Fstate_explanation_Specified := True;
end;

function ResponseDocument.state_explanation_Specified(Index: Integer): boolean;
begin
  Result := Fstate_explanation_Specified;
end;

procedure ResponseDocument.Setcause(Index: Integer; const Astring: string);
begin
  Fcause := Astring;
  Fcause_Specified := True;
end;

function ResponseDocument.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

procedure ResponseDocument.Setcontent_type(Index: Integer; const Astring: string);
begin
  Fcontent_type := Astring;
  Fcontent_type_Specified := True;
end;

function ResponseDocument.content_type_Specified(Index: Integer): boolean;
begin
  Result := Fcontent_type_Specified;
end;

procedure ResponseDocument.Setdocument_content(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fdocument_content := ATByteDynArray;
  Fdocument_content_Specified := True;
end;

function ResponseDocument.document_content_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_content_Specified;
end;

procedure ResponseDocument.SetemailSentDate(Index: Integer; const Astring: string);
begin
  FemailSentDate := Astring;
  FemailSentDate_Specified := True;
end;

function ResponseDocument.emailSentDate_Specified(Index: Integer): boolean;
begin
  Result := FemailSentDate_Specified;
end;

procedure ResponseDocument.Setcancelled(Index: Integer; const Astring: string);
begin
  Fcancelled := Astring;
  Fcancelled_Specified := True;
end;

function ResponseDocument.cancelled_Specified(Index: Integer): boolean;
begin
  Result := Fcancelled_Specified;
end;

procedure ResponseDocument.Setcancel_date(Index: Integer; const Astring: string);
begin
  Fcancel_date := Astring;
  Fcancel_date_Specified := True;
end;

function ResponseDocument.cancel_date_Specified(Index: Integer): boolean;
begin
  Result := Fcancel_date_Specified;
end;

procedure ResponseDocument.Setreference_document_uuid(Index: Integer; const Astring: string);
begin
  Freference_document_uuid := Astring;
  Freference_document_uuid_Specified := True;
end;

function ResponseDocument.reference_document_uuid_Specified(Index: Integer): boolean;
begin
  Result := Freference_document_uuid_Specified;
end;

procedure ResponseDocument.Setresponse_document_uuid(Index: Integer; const Astring: string);
begin
  Fresponse_document_uuid := Astring;
  Fresponse_document_uuid_Specified := True;
end;

function ResponseDocument.response_document_uuid_Specified(Index: Integer): boolean;
begin
  Result := Fresponse_document_uuid_Specified;
end;

procedure ResponseDocument.Setresponse_code(Index: Integer; const Astring: string);
begin
  Fresponse_code := Astring;
  Fresponse_code_Specified := True;
end;

function ResponseDocument.response_code_Specified(Index: Integer): boolean;
begin
  Result := Fresponse_code_Specified;
end;

procedure ResponseDocument.Setresponse_validation_state(Index: Integer; const Astring: string);
begin
  Fresponse_validation_state := Astring;
  Fresponse_validation_state_Specified := True;
end;

function ResponseDocument.response_validation_state_Specified(Index: Integer): boolean;
begin
  Result := Fresponse_validation_state_Specified;
end;

procedure ResponseDocument.Setresponse_received_date(Index: Integer; const Astring: string);
begin
  Fresponse_received_date := Astring;
  Fresponse_received_date_Specified := True;
end;

function ResponseDocument.response_received_date_Specified(Index: Integer): boolean;
begin
  Result := Fresponse_received_date_Specified;
end;

procedure ResponseDocument.Setgtb_reference_no(Index: Integer; const Astring: string);
begin
  Fgtb_reference_no := Astring;
  Fgtb_reference_no_Specified := True;
end;

function ResponseDocument.gtb_reference_no_Specified(Index: Integer): boolean;
begin
  Result := Fgtb_reference_no_Specified;
end;

procedure ResponseDocument.Setgtb_gcb_tescil_no(Index: Integer; const Astring: string);
begin
  Fgtb_gcb_tescil_no := Astring;
  Fgtb_gcb_tescil_no_Specified := True;
end;

function ResponseDocument.gtb_gcb_tescil_no_Specified(Index: Integer): boolean;
begin
  Result := Fgtb_gcb_tescil_no_Specified;
end;

procedure ResponseDocument.Setgtb_fiili_ihracat_tarihi(Index: Integer; const Astring: string);
begin
  Fgtb_fiili_ihracat_tarihi := Astring;
  Fgtb_fiili_ihracat_tarihi_Specified := True;
end;

function ResponseDocument.gtb_fiili_ihracat_tarihi_Specified(Index: Integer): boolean;
begin
  Result := Fgtb_fiili_ihracat_tarihi_Specified;
end;

procedure ResponseDocument.Setreserved1(Index: Integer; const Astring: string);
begin
  Freserved1 := Astring;
  Freserved1_Specified := True;
end;

function ResponseDocument.reserved1_Specified(Index: Integer): boolean;
begin
  Result := Freserved1_Specified;
end;

procedure ResponseDocument.Setreserved2(Index: Integer; const Astring: string);
begin
  Freserved2 := Astring;
  Freserved2_Specified := True;
end;

function ResponseDocument.reserved2_Specified(Index: Integer): boolean;
begin
  Result := Freserved2_Specified;
end;

procedure ResponseDocument.Setreserved3(Index: Integer; const Astring: string);
begin
  Freserved3 := Astring;
  Freserved3_Specified := True;
end;

function ResponseDocument.reserved3_Specified(Index: Integer): boolean;
begin
  Result := Freserved3_Specified;
end;

procedure ResponseDocument.Setdocument_type_code(Index: Integer; const Astring: string);
begin
  Fdocument_type_code := Astring;
  Fdocument_type_code_Specified := True;
end;

function ResponseDocument.document_type_code_Specified(Index: Integer): boolean;
begin
  Result := Fdocument_type_code_Specified;
end;

procedure ResponseDocument.Setnotes(Index: Integer; const AQueryInvoicesWithGUIDList: QueryInvoicesWithGUIDList);
begin
  Fnotes := AQueryInvoicesWithGUIDList;
  Fnotes_Specified := True;
end;

function ResponseDocument.notes_Specified(Index: Integer): boolean;
begin
  Result := Fnotes_Specified;
end;

procedure ResponseDocument.SetdespatchInfo(Index: Integer; const AArray_Of_DocumentInfo: Array_Of_DocumentInfo);
begin
  FdespatchInfo := AArray_Of_DocumentInfo;
  FdespatchInfo_Specified := True;
end;

function ResponseDocument.despatchInfo_Specified(Index: Integer): boolean;
begin
  Result := FdespatchInfo_Specified;
end;

procedure ResponseDocument.SetorderInfo(Index: Integer; const ADocumentInfo: DocumentInfo);
begin
  ForderInfo := ADocumentInfo;
  ForderInfo_Specified := True;
end;

function ResponseDocument.orderInfo_Specified(Index: Integer): boolean;
begin
  Result := ForderInfo_Specified;
end;

procedure ResponseDocument.SettaxInfo(Index: Integer; const AArray_Of_TaxInfo: Array_Of_TaxInfo);
begin
  FtaxInfo := AArray_Of_TaxInfo;
  FtaxInfo_Specified := True;
end;

function ResponseDocument.taxInfo_Specified(Index: Integer): boolean;
begin
  Result := FtaxInfo_Specified;
end;

procedure ResponseDocument.SettaxInclusiveAmount(Index: Integer; const Astring: string);
begin
  FtaxInclusiveAmount := Astring;
  FtaxInclusiveAmount_Specified := True;
end;

function ResponseDocument.taxInclusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FtaxInclusiveAmount_Specified;
end;

procedure ResponseDocument.SettaxExlusiveAmount(Index: Integer; const Astring: string);
begin
  FtaxExlusiveAmount := Astring;
  FtaxExlusiveAmount_Specified := True;
end;

function ResponseDocument.taxExlusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FtaxExlusiveAmount_Specified;
end;

procedure ResponseDocument.SetallowanceTotalAmount(Index: Integer; const Astring: string);
begin
  FallowanceTotalAmount := Astring;
  FallowanceTotalAmount_Specified := True;
end;

function ResponseDocument.allowanceTotalAmount_Specified(Index: Integer): boolean;
begin
  Result := FallowanceTotalAmount_Specified;
end;

procedure ResponseDocument.SettaxAmount0015(Index: Integer; const Astring: string);
begin
  FtaxAmount0015 := Astring;
  FtaxAmount0015_Specified := True;
end;

function ResponseDocument.taxAmount0015_Specified(Index: Integer): boolean;
begin
  Result := FtaxAmount0015_Specified;
end;

procedure ResponseDocument.SetlineExtensionAmount(Index: Integer; const Astring: string);
begin
  FlineExtensionAmount := Astring;
  FlineExtensionAmount_Specified := True;
end;

function ResponseDocument.lineExtensionAmount_Specified(Index: Integer): boolean;
begin
  Result := FlineExtensionAmount_Specified;
end;

procedure ResponseDocument.SetsuplierPersonName(Index: Integer; const Astring: string);
begin
  FsuplierPersonName := Astring;
  FsuplierPersonName_Specified := True;
end;

function ResponseDocument.suplierPersonName_Specified(Index: Integer): boolean;
begin
  Result := FsuplierPersonName_Specified;
end;

procedure ResponseDocument.SetsupplierPersonMiddleName(Index: Integer; const Astring: string);
begin
  FsupplierPersonMiddleName := Astring;
  FsupplierPersonMiddleName_Specified := True;
end;

function ResponseDocument.supplierPersonMiddleName_Specified(Index: Integer): boolean;
begin
  Result := FsupplierPersonMiddleName_Specified;
end;

procedure ResponseDocument.SetsupplierPersonFamilyName(Index: Integer; const Astring: string);
begin
  FsupplierPersonFamilyName := Astring;
  FsupplierPersonFamilyName_Specified := True;
end;

function ResponseDocument.supplierPersonFamilyName_Specified(Index: Integer): boolean;
begin
  Result := FsupplierPersonFamilyName_Specified;
end;

procedure ResponseDocument.SetcustomerPersonName(Index: Integer; const Astring: string);
begin
  FcustomerPersonName := Astring;
  FcustomerPersonName_Specified := True;
end;

function ResponseDocument.customerPersonName_Specified(Index: Integer): boolean;
begin
  Result := FcustomerPersonName_Specified;
end;

procedure ResponseDocument.SetcustomerPersonMiddleName(Index: Integer; const Astring: string);
begin
  FcustomerPersonMiddleName := Astring;
  FcustomerPersonMiddleName_Specified := True;
end;

function ResponseDocument.customerPersonMiddleName_Specified(Index: Integer): boolean;
begin
  Result := FcustomerPersonMiddleName_Specified;
end;

procedure ResponseDocument.SetcustomerPersonFamilyName(Index: Integer; const Astring: string);
begin
  FcustomerPersonFamilyName := Astring;
  FcustomerPersonFamilyName_Specified := True;
end;

function ResponseDocument.customerPersonFamilyName_Specified(Index: Integer): boolean;
begin
  Result := FcustomerPersonFamilyName_Specified;
end;

procedure ResponseDocument.Setdestination_title(Index: Integer; const Astring: string);
begin
  Fdestination_title := Astring;
  Fdestination_title_Specified := True;
end;

function ResponseDocument.destination_title_Specified(Index: Integer): boolean;
begin
  Result := Fdestination_title_Specified;
end;

procedure ResponseDocument.Setis_read(Index: Integer; const Astring: string);
begin
  Fis_read := Astring;
  Fis_read_Specified := True;
end;

function ResponseDocument.is_read_Specified(Index: Integer): boolean;
begin
  Result := Fis_read_Specified;
end;

procedure ResponseDocument.Setis_archieved(Index: Integer; const Astring: string);
begin
  Fis_archieved := Astring;
  Fis_archieved_Specified := True;
end;

function ResponseDocument.is_archieved_Specified(Index: Integer): boolean;
begin
  Result := Fis_archieved_Specified;
end;

procedure ResponseDocument.Setis_accounted(Index: Integer; const Astring: string);
begin
  Fis_accounted := Astring;
  Fis_accounted_Specified := True;
end;

function ResponseDocument.is_accounted_Specified(Index: Integer): boolean;
begin
  Result := Fis_accounted_Specified;
end;

procedure ResponseDocument.Setis_transferred(Index: Integer; const Astring: string);
begin
  Fis_transferred := Astring;
  Fis_transferred_Specified := True;
end;

function ResponseDocument.is_transferred_Specified(Index: Integer): boolean;
begin
  Result := Fis_transferred_Specified;
end;

procedure ResponseDocument.Setis_printed(Index: Integer; const Astring: string);
begin
  Fis_printed := Astring;
  Fis_printed_Specified := True;
end;

function ResponseDocument.is_printed_Specified(Index: Integer): boolean;
begin
  Result := Fis_printed_Specified;
end;

procedure ResponseDocument.Setlocal_id(Index: Integer; const Astring: string);
begin
  Flocal_id := Astring;
  Flocal_id_Specified := True;
end;

function ResponseDocument.local_id_Specified(Index: Integer): boolean;
begin
  Result := Flocal_id_Specified;
end;

procedure ResponseDocument.SetsendingType(Index: Integer; const Astring: string);
begin
  FsendingType := Astring;
  FsendingType_Specified := True;
end;

function ResponseDocument.sendingType_Specified(Index: Integer): boolean;
begin
  Result := FsendingType_Specified;
end;

procedure ResponseDocument.SetbuyerCustomerPartyName(Index: Integer; const Astring: string);
begin
  FbuyerCustomerPartyName := Astring;
  FbuyerCustomerPartyName_Specified := True;
end;

function ResponseDocument.buyerCustomerPartyName_Specified(Index: Integer): boolean;
begin
  Result := FbuyerCustomerPartyName_Specified;
end;

procedure ResponseDocument.SetbuyerCustomerPersonName(Index: Integer; const Astring: string);
begin
  FbuyerCustomerPersonName := Astring;
  FbuyerCustomerPersonName_Specified := True;
end;

function ResponseDocument.buyerCustomerPersonName_Specified(Index: Integer): boolean;
begin
  Result := FbuyerCustomerPersonName_Specified;
end;

procedure ResponseDocument.SetbuyerCustomerPersonFamilyName(Index: Integer; const Astring: string);
begin
  FbuyerCustomerPersonFamilyName := Astring;
  FbuyerCustomerPersonFamilyName_Specified := True;
end;

function ResponseDocument.buyerCustomerPersonFamilyName_Specified(Index: Integer): boolean;
begin
  Result := FbuyerCustomerPersonFamilyName_Specified;
end;

procedure ResponseDocument.Setreport_no(Index: Integer; const Astring: string);
begin
  Freport_no := Astring;
  Freport_no_Specified := True;
end;

function ResponseDocument.report_no_Specified(Index: Integer): boolean;
begin
  Result := Freport_no_Specified;
end;

procedure ResponseDocument.Setcancel_report_no(Index: Integer; const Astring: string);
begin
  Fcancel_report_no := Astring;
  Fcancel_report_no_Specified := True;
end;

function ResponseDocument.cancel_report_no_Specified(Index: Integer): boolean;
begin
  Result := Fcancel_report_no_Specified;
end;

destructor CreditInfo.Destroy;
begin
  System.SysUtils.FreeAndNil(FtotalCredit);
  System.SysUtils.FreeAndNil(FremainCredit);
  inherited Destroy;
end;

destructor CreditAction.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpurchase_count);
  System.SysUtils.FreeAndNil(FconsideredCount);
  inherited Destroy;
end;

procedure EntResponse.SetdocumentUUID(Index: Integer; const Astring: string);
begin
  FdocumentUUID := Astring;
  FdocumentUUID_Specified := True;
end;

function EntResponse.documentUUID_Specified(Index: Integer): boolean;
begin
  Result := FdocumentUUID_Specified;
end;

procedure EntResponse.SetdocumentID(Index: Integer; const Astring: string);
begin
  FdocumentID := Astring;
  FdocumentID_Specified := True;
end;

function EntResponse.documentID_Specified(Index: Integer): boolean;
begin
  Result := FdocumentID_Specified;
end;

procedure EntResponse.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function EntResponse.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure EntResponse.Setexplanation(Index: Integer; const Astring: string);
begin
  Fexplanation := Astring;
  Fexplanation_Specified := True;
end;

function EntResponse.explanation_Specified(Index: Integer): boolean;
begin
  Result := Fexplanation_Specified;
end;

procedure EntResponse.Setcause(Index: Integer; const Astring: string);
begin
  Fcause := Astring;
  Fcause_Specified := True;
end;

function EntResponse.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

destructor LogResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FinvoiceLogs)-1 do
    System.SysUtils.FreeAndNil(FinvoiceLogs[I]);
  System.SetLength(FinvoiceLogs, 0);
  inherited Destroy;
end;

procedure LogResponse.SetqueryState(Index: Integer; const Astring: string);
begin
  FqueryState := Astring;
  FqueryState_Specified := True;
end;

function LogResponse.queryState_Specified(Index: Integer): boolean;
begin
  Result := FqueryState_Specified;
end;

procedure LogResponse.SetstateExplanation(Index: Integer; const Astring: string);
begin
  FstateExplanation := Astring;
  FstateExplanation_Specified := True;
end;

function LogResponse.stateExplanation_Specified(Index: Integer): boolean;
begin
  Result := FstateExplanation_Specified;
end;

procedure LogResponse.SetinvoiceLogs(Index: Integer; const AArray_Of_InvoiceLog: Array_Of_InvoiceLog);
begin
  FinvoiceLogs := AArray_Of_InvoiceLog;
  FinvoiceLogs_Specified := True;
end;

function LogResponse.invoiceLogs_Specified(Index: Integer): boolean;
begin
  Result := FinvoiceLogs_Specified;
end;

procedure InputDocument.SetdocumentNoPrefix(Index: Integer; const Astring: string);
begin
  FdocumentNoPrefix := Astring;
  FdocumentNoPrefix_Specified := True;
end;

function InputDocument.documentNoPrefix_Specified(Index: Integer): boolean;
begin
  Result := FdocumentNoPrefix_Specified;
end;

procedure InputDocument.SetlocalId(Index: Integer; const Astring: string);
begin
  FlocalId := Astring;
  FlocalId_Specified := True;
end;

function InputDocument.localId_Specified(Index: Integer): boolean;
begin
  Result := FlocalId_Specified;
end;

procedure InputDocument.SetdocumentId(Index: Integer; const Astring: string);
begin
  FdocumentId := Astring;
  FdocumentId_Specified := True;
end;

function InputDocument.documentId_Specified(Index: Integer): boolean;
begin
  Result := FdocumentId_Specified;
end;

procedure InputDocument.SetsubmitForApproval(Index: Integer; const ABoolean: Boolean);
begin
  FsubmitForApproval := ABoolean;
  FsubmitForApproval_Specified := True;
end;

function InputDocument.submitForApproval_Specified(Index: Integer): boolean;
begin
  Result := FsubmitForApproval_Specified;
end;

procedure InputDocument.Setnote(Index: Integer; const Astring: string);
begin
  Fnote := Astring;
  Fnote_Specified := True;
end;

function InputDocument.note_Specified(Index: Integer): boolean;
begin
  Result := Fnote_Specified;
end;

procedure entry2.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry2.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry2.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function entry2.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure InvoiceLog.SetdocumentUUID(Index: Integer; const Astring: string);
begin
  FdocumentUUID := Astring;
  FdocumentUUID_Specified := True;
end;

function InvoiceLog.documentUUID_Specified(Index: Integer): boolean;
begin
  Result := FdocumentUUID_Specified;
end;

procedure InvoiceLog.SetenvelopeUUID(Index: Integer; const Astring: string);
begin
  FenvelopeUUID := Astring;
  FenvelopeUUID_Specified := True;
end;

function InvoiceLog.envelopeUUID_Specified(Index: Integer): boolean;
begin
  Result := FenvelopeUUID_Specified;
end;

procedure InvoiceLog.SetprocessTime(Index: Integer; const Astring: string);
begin
  FprocessTime := Astring;
  FprocessTime_Specified := True;
end;

function InvoiceLog.processTime_Specified(Index: Integer): boolean;
begin
  Result := FprocessTime_Specified;
end;

procedure InvoiceLog.SetprocessState(Index: Integer; const Astring: string);
begin
  FprocessState := Astring;
  FprocessState_Specified := True;
end;

function InvoiceLog.processState_Specified(Index: Integer): boolean;
begin
  Result := FprocessState_Specified;
end;

procedure InvoiceLog.SetprocessResult(Index: Integer; const Astring: string);
begin
  FprocessResult := Astring;
  FprocessResult_Specified := True;
end;

function InvoiceLog.processResult_Specified(Index: Integer): boolean;
begin
  Result := FprocessResult_Specified;
end;

procedure InvoiceLog.SetresultExplanation(Index: Integer; const Astring: string);
begin
  FresultExplanation := Astring;
  FresultExplanation_Specified := True;
end;

function InvoiceLog.resultExplanation_Specified(Index: Integer): boolean;
begin
  Result := FresultExplanation_Specified;
end;

initialization
  { EArchiveInvoiceWS }
  InvRegistry.RegisterInterface(TypeInfo(EArchiveInvoiceWS), 'http://earchiveinvoiceservice.entegrator.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EArchiveInvoiceWS), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(EArchiveInvoiceWS), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(EArchiveInvoiceWS), ioSOAP12);
  { EArchiveInvoiceWS.sendZReport }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'sendZReport', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendZReport', 'zReportXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendZReport', 'reportType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendZReport', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.updateInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'updateInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'updateInvoice', 'invoiceXMLList', '',
                                '[ArrayItemName="invoiceXMLList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'updateInvoice', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.cancelInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'cancelInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'cancelInvoice', 'invoice_uuid', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'cancelInvoice', 'cancelReason', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'cancelInvoice', 'cancelDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'cancelInvoice', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.sendInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoice', 'invoiceXMLList', '',
                                '[ArrayItemName="invoiceXMLList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoice', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoicesWithDocumentDateAndSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDateAndSearchParams', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryArchivedInvoicesWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoicesWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoicesWithReceivedDateWithSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDateWithSearchParams', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoicesWithReceivedDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithReceivedDate', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.getCustomerCreditCount }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditCount', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditCount', 'vkn_tckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditCount', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoiceWithLocalId }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithLocalId', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithLocalId', 'localId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithLocalId', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.controlInvoiceXML }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'controlInvoiceXML', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'controlInvoiceXML', 'invoiceXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'controlInvoiceXML', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryArchivedInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', 'fiscalYear', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryArchivedInvoice', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.GetEAInvoiceStatusWithLogs }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'GetEAInvoiceStatusWithLogs', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'GetEAInvoiceStatusWithLogs', 'documentUuid', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'GetEAInvoiceStatusWithLogs', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.getCreditActionsforCustomer }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'getCreditActionsforCustomer', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCreditActionsforCustomer', 'vkn_tckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCreditActionsforCustomer', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.getCustomerCreditSpace }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditSpace', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditSpace', 'vkn_tckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getCustomerCreditSpace', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoicesWithGUIDList }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithGUIDList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithGUIDList', 'guidList', '',
                                '[ArrayItemName="guidList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithGUIDList', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.GetLastInvoiceIdAndDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'GetLastInvoiceIdAndDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'GetLastInvoiceIdAndDate', 'source_id', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'GetLastInvoiceIdAndDate', 'documentIdPrefix', '',
                                '[ArrayItemName="guidList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'GetLastInvoiceIdAndDate', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoiceWithReferenceCode }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithReferenceCode', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithReferenceCode', 'referenceCode', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoiceWithReferenceCode', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoicesWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoicesWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.sendInvoiceWithoutId }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutId', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutId', 'invoiceXMLList', '',
                                '[ArrayItemName="invoiceXMLList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutId', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.sendInvoiceWithoutIdAndUuid }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutIdAndUuid', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutIdAndUuid', 'invoiceXMLList', '',
                                '[ArrayItemName="invoiceXMLList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendInvoiceWithoutIdAndUuid', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.sendAndApproveInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'sendAndApproveInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendAndApproveInvoice', 'invoiceXMLList', '',
                                '[ArrayItemName="invoiceXMLList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'sendAndApproveInvoice', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { EArchiveInvoiceWS.QueryInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoice', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoice', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoice', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoice', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'QueryInvoice', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.getNewUUID }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'getNewUUID', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getNewUUID', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.isEFaturaUser }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'isEFaturaUser', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'isEFaturaUser', 'vkn_tckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'isEFaturaUser', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.setDocumentFlag }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'setDocumentFlag', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'setDocumentFlag', 'flagSetter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'setDocumentFlag', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.getPrefixList }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'getPrefixList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'getPrefixList', 'return', '',
                                '', IS_UNQL);
  { EArchiveInvoiceWS.setEmailSent }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveInvoiceWS), 'setEmailSent', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'setEmailSent', 'invoice_uuid_list', '',
                                '[ArrayItemName="guidList"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveInvoiceWS), 'setEmailSent', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(sendInvoiceWithoutId), 'http://earchiveinvoiceservice.entegrator.com/', 'sendInvoiceWithoutId');
  RemClassRegistry.RegisterXSClass(DocumentInfo, 'http://earchiveinvoiceservice.entegrator.com/', 'DocumentInfo');
  RemClassRegistry.RegisterXSClass(TaxInfo, 'http://earchiveinvoiceservice.entegrator.com/', 'TaxInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_DocumentInfo), 'http://earchiveinvoiceservice.entegrator.com/', 'Array_Of_DocumentInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ResponseDocument), 'http://earchiveinvoiceservice.entegrator.com/', 'Array_Of_ResponseDocument');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_InvoiceLog), 'http://earchiveinvoiceservice.entegrator.com/', 'Array_Of_InvoiceLog');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_TaxInfo), 'http://earchiveinvoiceservice.entegrator.com/', 'Array_Of_TaxInfo');
  RemClassRegistry.RegisterXSClass(ResponseUser, 'http://earchiveinvoiceservice.entegrator.com/', 'ResponseUser');
  RemClassRegistry.RegisterXSClass(DocumentQueryResponse, 'http://earchiveinvoiceservice.entegrator.com/', 'DocumentQueryResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ResponseUser), 'http://earchiveinvoiceservice.entegrator.com/', 'Array_Of_ResponseUser');
  RemClassRegistry.RegisterXSClass(UserQueryResponse, 'http://earchiveinvoiceservice.entegrator.com/', 'UserQueryResponse');
  RemClassRegistry.RegisterXSClass(flagSetter, 'http://earchiveinvoiceservice.entegrator.com/', 'flagSetter');
  RemClassRegistry.RegisterXSClass(entry, 'http://earchiveinvoiceservice.entegrator.com/', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(QueryInvoicesWithGUIDList), 'http://earchiveinvoiceservice.entegrator.com/', 'QueryInvoicesWithGUIDList');
  RemClassRegistry.RegisterXSClass(ResponseDocument, 'http://earchiveinvoiceservice.entegrator.com/', 'ResponseDocument');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ResponseDocument), 'notes', '[ArrayItemName="guidList"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CreditActionTypes), 'http://earchiveinvoiceservice.entegrator.com/', 'CreditActionTypes');
  RemClassRegistry.RegisterXSClass(CreditInfo, 'http://earchiveinvoiceservice.entegrator.com/', 'CreditInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getCreditActionsforCustomerResponse), 'http://earchiveinvoiceservice.entegrator.com/', 'getCreditActionsforCustomerResponse');
  RemClassRegistry.RegisterXSClass(CreditAction, 'http://earchiveinvoiceservice.entegrator.com/', 'CreditAction');
  RemClassRegistry.RegisterXSClass(EntResponse, 'http://earchiveinvoiceservice.entegrator.com/', 'EntResponse');
  RemClassRegistry.RegisterXSClass(LogResponse, 'http://earchiveinvoiceservice.entegrator.com/', 'LogResponse');
  RemClassRegistry.RegisterXSClass(InputDocument, 'http://earchiveinvoiceservice.entegrator.com/', 'InputDocument');
  RemClassRegistry.RegisterXSInfo(TypeInfo(sendInvoiceWithoutIdResponse), 'http://earchiveinvoiceservice.entegrator.com/', 'sendInvoiceWithoutIdResponse');
  RemClassRegistry.RegisterXSClass(entry2, 'http://earchiveinvoiceservice.entegrator.com/', 'entry2', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams), 'http://earchiveinvoiceservice.entegrator.com/', 'searchParams');
  RemClassRegistry.RegisterXSClass(InvoiceLog, 'http://earchiveinvoiceservice.entegrator.com/', 'InvoiceLog');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams2), 'http://earchiveinvoiceservice.entegrator.com/', 'searchParams2', 'searchParams');

end.