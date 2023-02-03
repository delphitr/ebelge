// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\mustafa.yilmaz\Desktop\sil\QueryDocumentWS.xml
//  >Import : C:\Users\mustafa.yilmaz\Desktop\sil\QueryDocumentWS.xml>0
// Encoding : UTF-8
// Version  : 1.0
// (12/22/2019 9:43:56 AM - - $Rev: 90173 $)
// ************************************************************************ //

unit kolaysoft_qd;

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
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  DocumentInfo         = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  UserListInfo         = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  DocumentQueryResponse = class;                { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  entry                = class;                 { "http://queryinvoiceservice.entegrator.com/"[Cplx] }
  TaxInfo              = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  entry2               = class;                 { "http://queryinvoiceservice.entegrator.com/"[Cplx] }
  AttachmentResponse   = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  UserListDocument     = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  entry3               = class;                 { "http://queryinvoiceservice.entegrator.com/"[Cplx] }
  ResponseUser         = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  UserQueryResponse    = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }
  entry4               = class;                 { "http://queryinvoiceservice.entegrator.com/"[Cplx] }
  ResponseDocument     = class;                 { "http://queryinvoiceservice.entegrator.com/"[GblCplx] }

  Array_Of_TaxInfo = array of TaxInfo;          { "http://queryinvoiceservice.entegrator.com/"[GblUbnd] }
  Array_Of_ResponseUser = array of ResponseUser;   { "http://queryinvoiceservice.entegrator.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : DocumentInfo, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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
  // XML       : UserListInfo, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // ************************************************************************ //
  UserListInfo = class(TRemotable)
  private
    Fsize: Integer;
    FmaxFirstCreationTime: string;
    FmaxFirstCreationTime_Specified: boolean;
    FmaxAliasCreationTime: string;
    FmaxAliasCreationTime_Specified: boolean;
    procedure SetmaxFirstCreationTime(Index: Integer; const Astring: string);
    function  maxFirstCreationTime_Specified(Index: Integer): boolean;
    procedure SetmaxAliasCreationTime(Index: Integer; const Astring: string);
    function  maxAliasCreationTime_Specified(Index: Integer): boolean;
  published
    property size:                 Integer  Index (IS_UNQL) read Fsize write Fsize;
    property maxFirstCreationTime: string   Index (IS_OPTN or IS_UNQL) read FmaxFirstCreationTime write SetmaxFirstCreationTime stored maxFirstCreationTime_Specified;
    property maxAliasCreationTime: string   Index (IS_OPTN or IS_UNQL) read FmaxAliasCreationTime write SetmaxAliasCreationTime stored maxAliasCreationTime_Specified;
  end;

  Array_Of_ResponseDocument = array of ResponseDocument;   { "http://queryinvoiceservice.entegrator.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : DocumentQueryResponse, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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



  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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

  Array_Of_DocumentInfo = array of DocumentInfo;   { "http://queryinvoiceservice.entegrator.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : TaxInfo, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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

  searchParams = array of entry2;               { "http://queryinvoiceservice.entegrator.com/"[Cplx] }


  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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



  // ************************************************************************ //
  // XML       : AttachmentResponse, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // ************************************************************************ //
  AttachmentResponse = class(TRemotable)
  private
    FqueryState: Integer;
    FstateExplanation: string;
    FstateExplanation_Specified: boolean;
    FattachmentContent: string;
    FattachmentContent_Specified: boolean;
    procedure SetstateExplanation(Index: Integer; const Astring: string);
    function  stateExplanation_Specified(Index: Integer): boolean;
    procedure SetattachmentContent(Index: Integer; const Astring: string);
    function  attachmentContent_Specified(Index: Integer): boolean;
  published
    property queryState:        Integer  Index (IS_UNQL) read FqueryState write FqueryState;
    property stateExplanation:  string   Index (IS_OPTN or IS_UNQL) read FstateExplanation write SetstateExplanation stored stateExplanation_Specified;
    property attachmentContent: string   Index (IS_OPTN or IS_UNQL) read FattachmentContent write SetattachmentContent stored attachmentContent_Specified;
  end;



  // ************************************************************************ //
  // XML       : UserListDocument, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // ************************************************************************ //
  UserListDocument = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    Fexplanation: string;
    Fexplanation_Specified: boolean;
    FfileName: string;
    FfileName_Specified: boolean;
    FfileContent: TByteDynArray;
    FfileContent_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setexplanation(Index: Integer; const Astring: string);
    function  explanation_Specified(Index: Integer): boolean;
    procedure SetfileName(Index: Integer; const Astring: string);
    function  fileName_Specified(Index: Integer): boolean;
    procedure SetfileContent(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  fileContent_Specified(Index: Integer): boolean;
  published
    property code:        string         Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property explanation: string         Index (IS_OPTN or IS_UNQL) read Fexplanation write Setexplanation stored explanation_Specified;
    property fileName:    string         Index (IS_OPTN or IS_UNQL) read FfileName write SetfileName stored fileName_Specified;
    property fileContent: TByteDynArray  Index (IS_OPTN or IS_UNQL) read FfileContent write SetfileContent stored fileContent_Specified;
  end;

  searchParams2 = array of entry3;              { "http://queryinvoiceservice.entegrator.com/"[Cplx] }


  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // ************************************************************************ //
  entry3 = class(TRemotable)
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



  // ************************************************************************ //
  // XML       : ResponseUser, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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
  // XML       : UserQueryResponse, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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

  searchParams3 = array of entry;               { "http://queryinvoiceservice.entegrator.com/"[Cplx] }
  searchParams4 = array of entry4;              { "http://queryinvoiceservice.entegrator.com/"[Cplx] }


  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // ************************************************************************ //
  entry4 = class(TRemotable)
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

  QueryOutboxResponseDocument = array of string;   { "http://queryinvoiceservice.entegrator.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : ResponseDocument, global, <complexType>
  // Namespace : http://queryinvoiceservice.entegrator.com/
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
    Fnotes: QueryOutboxResponseDocument;
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
    procedure Setnotes(Index: Integer; const AQueryOutboxResponseDocument: QueryOutboxResponseDocument);
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
    property document_uuid:                 string                       Index (IS_OPTN or IS_UNQL) read Fdocument_uuid write Setdocument_uuid stored document_uuid_Specified;
    property document_id:                   string                       Index (IS_OPTN or IS_UNQL) read Fdocument_id write Setdocument_id stored document_id_Specified;
    property envelope_uuid:                 string                       Index (IS_OPTN or IS_UNQL) read Fenvelope_uuid write Setenvelope_uuid stored envelope_uuid_Specified;
    property document_profile:              string                       Index (IS_OPTN or IS_UNQL) read Fdocument_profile write Setdocument_profile stored document_profile_Specified;
    property system_creation_time:          string                       Index (IS_OPTN or IS_UNQL) read Fsystem_creation_time write Setsystem_creation_time stored system_creation_time_Specified;
    property document_issue_date:           string                       Index (IS_OPTN or IS_UNQL) read Fdocument_issue_date write Setdocument_issue_date stored document_issue_date_Specified;
    property source_id:                     string                       Index (IS_OPTN or IS_UNQL) read Fsource_id write Setsource_id stored source_id_Specified;
    property destination_id:                string                       Index (IS_OPTN or IS_UNQL) read Fdestination_id write Setdestination_id stored destination_id_Specified;
    property source_urn:                    string                       Index (IS_OPTN or IS_UNQL) read Fsource_urn write Setsource_urn stored source_urn_Specified;
    property source_title:                  string                       Index (IS_OPTN or IS_UNQL) read Fsource_title write Setsource_title stored source_title_Specified;
    property destination_urn:               string                       Index (IS_OPTN or IS_UNQL) read Fdestination_urn write Setdestination_urn stored destination_urn_Specified;
    property currency_code:                 string                       Index (IS_OPTN or IS_UNQL) read Fcurrency_code write Setcurrency_code stored currency_code_Specified;
    property invoice_total:                 string                       Index (IS_OPTN or IS_UNQL) read Finvoice_total write Setinvoice_total stored invoice_total_Specified;
    property state_code:                    string                       Index (IS_OPTN or IS_UNQL) read Fstate_code write Setstate_code stored state_code_Specified;
    property state_explanation:             string                       Index (IS_OPTN or IS_UNQL) read Fstate_explanation write Setstate_explanation stored state_explanation_Specified;
    property cause:                         string                       Index (IS_OPTN or IS_UNQL) read Fcause write Setcause stored cause_Specified;
    property content_type:                  string                       Index (IS_OPTN or IS_UNQL) read Fcontent_type write Setcontent_type stored content_type_Specified;
    property document_content:              TByteDynArray                Index (IS_OPTN or IS_UNQL) read Fdocument_content write Setdocument_content stored document_content_Specified;
    property emailSent:                     Integer                      Index (IS_UNQL) read FemailSent write FemailSent;
    property emailSentDate:                 string                       Index (IS_OPTN or IS_UNQL) read FemailSentDate write SetemailSentDate stored emailSentDate_Specified;
    property cancelled:                     string                       Index (IS_OPTN or IS_UNQL) read Fcancelled write Setcancelled stored cancelled_Specified;
    property cancel_date:                   string                       Index (IS_OPTN or IS_UNQL) read Fcancel_date write Setcancel_date stored cancel_date_Specified;
    property reference_document_uuid:       string                       Index (IS_OPTN or IS_UNQL) read Freference_document_uuid write Setreference_document_uuid stored reference_document_uuid_Specified;
    property response_document_uuid:        string                       Index (IS_OPTN or IS_UNQL) read Fresponse_document_uuid write Setresponse_document_uuid stored response_document_uuid_Specified;
    property response_code:                 string                       Index (IS_OPTN or IS_UNQL) read Fresponse_code write Setresponse_code stored response_code_Specified;
    property response_validation_state:     string                       Index (IS_OPTN or IS_UNQL) read Fresponse_validation_state write Setresponse_validation_state stored response_validation_state_Specified;
    property response_received_date:        string                       Index (IS_OPTN or IS_UNQL) read Fresponse_received_date write Setresponse_received_date stored response_received_date_Specified;
    property gtb_reference_no:              string                       Index (IS_OPTN or IS_UNQL) read Fgtb_reference_no write Setgtb_reference_no stored gtb_reference_no_Specified;
    property gtb_gcb_tescil_no:             string                       Index (IS_OPTN or IS_UNQL) read Fgtb_gcb_tescil_no write Setgtb_gcb_tescil_no stored gtb_gcb_tescil_no_Specified;
    property gtb_fiili_ihracat_tarihi:      string                       Index (IS_OPTN or IS_UNQL) read Fgtb_fiili_ihracat_tarihi write Setgtb_fiili_ihracat_tarihi stored gtb_fiili_ihracat_tarihi_Specified;
    property reserved1:                     string                       Index (IS_OPTN or IS_UNQL) read Freserved1 write Setreserved1 stored reserved1_Specified;
    property reserved2:                     string                       Index (IS_OPTN or IS_UNQL) read Freserved2 write Setreserved2 stored reserved2_Specified;
    property reserved3:                     string                       Index (IS_OPTN or IS_UNQL) read Freserved3 write Setreserved3 stored reserved3_Specified;
    property document_type_code:            string                       Index (IS_OPTN or IS_UNQL) read Fdocument_type_code write Setdocument_type_code stored document_type_code_Specified;
    property notes:                         QueryOutboxResponseDocument  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fnotes write Setnotes stored notes_Specified;
    property despatchInfo:                  Array_Of_DocumentInfo        Index (IS_OPTN or IS_UNBD or IS_UNQL) read FdespatchInfo write SetdespatchInfo stored despatchInfo_Specified;
    property orderInfo:                     DocumentInfo                 Index (IS_OPTN or IS_UNQL) read ForderInfo write SetorderInfo stored orderInfo_Specified;
    property taxInfo:                       Array_Of_TaxInfo             Index (IS_OPTN or IS_UNBD or IS_UNQL) read FtaxInfo write SettaxInfo stored taxInfo_Specified;
    property taxInclusiveAmount:            string                       Index (IS_OPTN or IS_UNQL) read FtaxInclusiveAmount write SettaxInclusiveAmount stored taxInclusiveAmount_Specified;
    property taxExlusiveAmount:             string                       Index (IS_OPTN or IS_UNQL) read FtaxExlusiveAmount write SettaxExlusiveAmount stored taxExlusiveAmount_Specified;
    property allowanceTotalAmount:          string                       Index (IS_OPTN or IS_UNQL) read FallowanceTotalAmount write SetallowanceTotalAmount stored allowanceTotalAmount_Specified;
    property taxAmount0015:                 string                       Index (IS_OPTN or IS_UNQL) read FtaxAmount0015 write SettaxAmount0015 stored taxAmount0015_Specified;
    property lineExtensionAmount:           string                       Index (IS_OPTN or IS_UNQL) read FlineExtensionAmount write SetlineExtensionAmount stored lineExtensionAmount_Specified;
    property suplierPersonName:             string                       Index (IS_OPTN or IS_UNQL) read FsuplierPersonName write SetsuplierPersonName stored suplierPersonName_Specified;
    property supplierPersonMiddleName:      string                       Index (IS_OPTN or IS_UNQL) read FsupplierPersonMiddleName write SetsupplierPersonMiddleName stored supplierPersonMiddleName_Specified;
    property supplierPersonFamilyName:      string                       Index (IS_OPTN or IS_UNQL) read FsupplierPersonFamilyName write SetsupplierPersonFamilyName stored supplierPersonFamilyName_Specified;
    property customerPersonName:            string                       Index (IS_OPTN or IS_UNQL) read FcustomerPersonName write SetcustomerPersonName stored customerPersonName_Specified;
    property customerPersonMiddleName:      string                       Index (IS_OPTN or IS_UNQL) read FcustomerPersonMiddleName write SetcustomerPersonMiddleName stored customerPersonMiddleName_Specified;
    property customerPersonFamilyName:      string                       Index (IS_OPTN or IS_UNQL) read FcustomerPersonFamilyName write SetcustomerPersonFamilyName stored customerPersonFamilyName_Specified;
    property destination_title:             string                       Index (IS_OPTN or IS_UNQL) read Fdestination_title write Setdestination_title stored destination_title_Specified;
    property is_read:                       string                       Index (IS_OPTN or IS_UNQL) read Fis_read write Setis_read stored is_read_Specified;
    property is_archieved:                  string                       Index (IS_OPTN or IS_UNQL) read Fis_archieved write Setis_archieved stored is_archieved_Specified;
    property is_accounted:                  string                       Index (IS_OPTN or IS_UNQL) read Fis_accounted write Setis_accounted stored is_accounted_Specified;
    property is_transferred:                string                       Index (IS_OPTN or IS_UNQL) read Fis_transferred write Setis_transferred stored is_transferred_Specified;
    property is_printed:                    string                       Index (IS_OPTN or IS_UNQL) read Fis_printed write Setis_printed stored is_printed_Specified;
    property local_id:                      string                       Index (IS_OPTN or IS_UNQL) read Flocal_id write Setlocal_id stored local_id_Specified;
    property sendingType:                   string                       Index (IS_OPTN or IS_UNQL) read FsendingType write SetsendingType stored sendingType_Specified;
    property buyerCustomerPartyName:        string                       Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPartyName write SetbuyerCustomerPartyName stored buyerCustomerPartyName_Specified;
    property buyerCustomerPersonName:       string                       Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPersonName write SetbuyerCustomerPersonName stored buyerCustomerPersonName_Specified;
    property buyerCustomerPersonFamilyName: string                       Index (IS_OPTN or IS_UNQL) read FbuyerCustomerPersonFamilyName write SetbuyerCustomerPersonFamilyName stored buyerCustomerPersonFamilyName_Specified;
    property report_no:                     string                       Index (IS_OPTN or IS_UNQL) read Freport_no write Setreport_no stored report_no_Specified;
    property cancel_report_no:              string                       Index (IS_OPTN or IS_UNQL) read Fcancel_report_no write Setcancel_report_no stored cancel_report_no_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://queryinvoiceservice.entegrator.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : QueryDocumentWSPortBinding
  // service   : QueryDocumentWS
  // port      : QueryDocumentWSPort
  // URL       : http://servis.smartdonusum.com/QueryInvoiceService/QueryDocumentWS
  // ************************************************************************ //
  QueryDocumentWS = interface(IInvokable)
  ['{B8AA9EFC-AD43-4105-7525-7AEB76830374}']
    function  QueryOutboxArchivedDocumentsWithDocumentDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const minRecordId: string
                                                           ): DocumentQueryResponse; stdcall;
    function  QueryInboxArchivedDocumentsWithDocumentDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const takenFromEntegrator: string; 
                                                          const minRecordId: string): DocumentQueryResponse; stdcall;
    function  QueryInboxDocumentsWithReceivedDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const takenFromEntegrator: string; 
                                                  const minRecordId: string): DocumentQueryResponse; stdcall;
    function  QueryInboxDocumentsWithDocumentDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const takenFromEntegrator: string; 
                                                  const minRecordId: string): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentsWithReceivedDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const minRecordId: string
                                                   ): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentsWithDocumentDate(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const minRecordId: string
                                                   ): DocumentQueryResponse; stdcall;
    function  QueryAppResponseOfInboxDocument(const document_UUID: string; const withXML: string): DocumentQueryResponse; stdcall;
    function  GetLastInvoiceIdAndDate(const source_id: string; const documentIdPrefix: QueryOutboxResponseDocument): DocumentQueryResponse; stdcall;
    function  QueryInboxDocumentsWithGUIDList(const guidList: QueryOutboxResponseDocument; const documentType: string): DocumentQueryResponse; stdcall;
    function  QueryUsersByTitle(const title: string): UserQueryResponse; stdcall;
    function  GetUserPKListInfo: UserListInfo; stdcall;
    function  QueryOutboxResponseDocument(const documentUuid: QueryOutboxResponseDocument): DocumentQueryResponse; stdcall;
    function  QueryAppResponseOfOutboxDocument(const document_UUID: string; const withXML: string): DocumentQueryResponse; stdcall;
    function  GetInboxAttachment(const documentUUID: string; const fileName: string): AttachmentResponse; stdcall;
    function  SetTakenFromEntegrator(const documentUuid: QueryOutboxResponseDocument): DocumentQueryResponse; stdcall;
    function  QueryArchivedInboxDocument(const paramType: string; const parameter: string; const withXML: string; const fiscalYear: Integer): DocumentQueryResponse; stdcall;
    function  QueryInboxDocument(const paramType: string; const parameter: string; const withXML: string): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocument(const paramType: string; const parameter: string; const withXML: string): DocumentQueryResponse; stdcall;
    function  QueryArchivedOutboxDocument(const paramType: string; const parameter: string; const withXML: string; const fiscalYear: Integer): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentWithLocalId(const localId: string): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentsWithWithGUIDList(const guidList: QueryOutboxResponseDocument; const documentType: string): DocumentQueryResponse; stdcall;
    function  QueryUsers(const startdate: string; const finishDate: string; const vkn_tckn: string): UserQueryResponse; stdcall;
    function  GetNewUserGBList: UserListDocument; stdcall;
    function  GetPKList(const vknTckn: string): UserQueryResponse; stdcall;
    function  GetUserGBList: UserListDocument; stdcall;
    function  GetNewUserPKList: UserListDocument; stdcall;
    function  GetUserPKList: UserListDocument; stdcall;
    function  QueryEnvelope(const envelopeUUID: string): DocumentQueryResponse; stdcall;
    function  QueryInboxDocumentsWithDocumentDateAndSearchParams(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const takenFromEntegrator: string; 
                                                                 const minRecordId: string; const searchParams: searchParams2): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentsWithReceivedDateWithSearchParams(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const minRecordId: string; 
                                                                   const searchParams: searchParams4): DocumentQueryResponse; stdcall;
    function  QueryInboxDocumentsWithReceivedDateWithSearchParams(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const takenFromEntegrator: string; 
                                                                  const minRecordId: string; const searchParams: searchParams): DocumentQueryResponse; stdcall;
    function  QueryOutboxDocumentsWithDocumentDateAndSearchParams(const startDate: string; const endDate: string; const documentType: string; const queried: string; const withXML: string; const minRecordId: string; 
                                                                  const searchParams: searchParams3): DocumentQueryResponse; stdcall;
  end;

function GetQueryDocumentWS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): QueryDocumentWS;


implementation
  uses System.SysUtils;

function GetQueryDocumentWS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): QueryDocumentWS;
const
  defWSDL = 'QueryDocumentWS.wsdl';
  defURL  = 'http://servis.smartdonusum.com/QueryInvoiceService/QueryDocumentWS';
  defSvc  = 'QueryDocumentWS';
  defPrt  = 'QueryDocumentWSPort';
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
    Result := (RIO as QueryDocumentWS);
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

procedure UserListInfo.SetmaxFirstCreationTime(Index: Integer; const Astring: string);
begin
  FmaxFirstCreationTime := Astring;
  FmaxFirstCreationTime_Specified := True;
end;

function UserListInfo.maxFirstCreationTime_Specified(Index: Integer): boolean;
begin
  Result := FmaxFirstCreationTime_Specified;
end;

procedure UserListInfo.SetmaxAliasCreationTime(Index: Integer; const Astring: string);
begin
  FmaxAliasCreationTime := Astring;
  FmaxAliasCreationTime_Specified := True;
end;

function UserListInfo.maxAliasCreationTime_Specified(Index: Integer): boolean;
begin
  Result := FmaxAliasCreationTime_Specified;
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

procedure AttachmentResponse.SetstateExplanation(Index: Integer; const Astring: string);
begin
  FstateExplanation := Astring;
  FstateExplanation_Specified := True;
end;

function AttachmentResponse.stateExplanation_Specified(Index: Integer): boolean;
begin
  Result := FstateExplanation_Specified;
end;

procedure AttachmentResponse.SetattachmentContent(Index: Integer; const Astring: string);
begin
  FattachmentContent := Astring;
  FattachmentContent_Specified := True;
end;

function AttachmentResponse.attachmentContent_Specified(Index: Integer): boolean;
begin
  Result := FattachmentContent_Specified;
end;

procedure UserListDocument.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function UserListDocument.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure UserListDocument.Setexplanation(Index: Integer; const Astring: string);
begin
  Fexplanation := Astring;
  Fexplanation_Specified := True;
end;

function UserListDocument.explanation_Specified(Index: Integer): boolean;
begin
  Result := Fexplanation_Specified;
end;

procedure UserListDocument.SetfileName(Index: Integer; const Astring: string);
begin
  FfileName := Astring;
  FfileName_Specified := True;
end;

function UserListDocument.fileName_Specified(Index: Integer): boolean;
begin
  Result := FfileName_Specified;
end;

procedure UserListDocument.SetfileContent(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FfileContent := ATByteDynArray;
  FfileContent_Specified := True;
end;

function UserListDocument.fileContent_Specified(Index: Integer): boolean;
begin
  Result := FfileContent_Specified;
end;

procedure entry3.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry3.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry3.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function entry3.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
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

procedure entry4.Setkey(Index: Integer; const Astring: string);
begin
  Fkey := Astring;
  Fkey_Specified := True;
end;

function entry4.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry4.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function entry4.value_Specified(Index: Integer): boolean;
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

procedure ResponseDocument.Setnotes(Index: Integer; const AQueryOutboxResponseDocument: QueryOutboxResponseDocument);
begin
  Fnotes := AQueryOutboxResponseDocument;
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

initialization
  { QueryDocumentWS }
  InvRegistry.RegisterInterface(TypeInfo(QueryDocumentWS), 'http://queryinvoiceservice.entegrator.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(QueryDocumentWS), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(QueryDocumentWS), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(QueryDocumentWS), ioSOAP12);
  { QueryDocumentWS.QueryOutboxArchivedDocumentsWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxArchivedDocumentsWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxArchivedDocumentsWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'takenFromEntegrator', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxArchivedDocumentsWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocumentsWithReceivedDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'takenFromEntegrator', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocumentsWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'takenFromEntegrator', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentsWithReceivedDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentsWithDocumentDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryAppResponseOfInboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfInboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfInboxDocument', 'document_UUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfInboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfInboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetLastInvoiceIdAndDate }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetLastInvoiceIdAndDate', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetLastInvoiceIdAndDate', 'source_id', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetLastInvoiceIdAndDate', 'documentIdPrefix', '',
                                '[ArrayItemName="documentUuid"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetLastInvoiceIdAndDate', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocumentsWithGUIDList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithGUIDList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithGUIDList', 'guidList', '',
                                '[ArrayItemName="documentUuid"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithGUIDList', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithGUIDList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryUsersByTitle }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryUsersByTitle', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsersByTitle', 'title', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsersByTitle', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetUserPKListInfo }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetUserPKListInfo', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetUserPKListInfo', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxResponseDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxResponseDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxResponseDocument', 'documentUuid', '',
                                '[ArrayItemName="documentUuid"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxResponseDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryAppResponseOfOutboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfOutboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfOutboxDocument', 'document_UUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfOutboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryAppResponseOfOutboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetInboxAttachment }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetInboxAttachment', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetInboxAttachment', 'documentUUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetInboxAttachment', 'fileName', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetInboxAttachment', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.SetTakenFromEntegrator }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'SetTakenFromEntegrator', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'SetTakenFromEntegrator', 'documentUuid', '',
                                '[ArrayItemName="documentUuid"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'SetTakenFromEntegrator', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryArchivedInboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', 'fiscalYear', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedInboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocument', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocument', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocument', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocument', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryArchivedOutboxDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', 'paramType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', 'parameter', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', 'fiscalYear', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryArchivedOutboxDocument', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentWithLocalId }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentWithLocalId', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentWithLocalId', 'localId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentWithLocalId', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentsWithWithGUIDList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithWithGUIDList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithWithGUIDList', 'guidList', '',
                                '[ArrayItemName="documentUuid"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithWithGUIDList', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithWithGUIDList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryUsers }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryUsers', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsers', 'startdate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsers', 'finishDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsers', 'vkn_tckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryUsers', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetNewUserGBList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetNewUserGBList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetNewUserGBList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetPKList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetPKList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetPKList', 'vknTckn', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetPKList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetUserGBList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetUserGBList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetUserGBList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetNewUserPKList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetNewUserPKList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetNewUserPKList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.GetUserPKList }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'GetUserPKList', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'GetUserPKList', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryEnvelope }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryEnvelope', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryEnvelope', 'envelopeUUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryEnvelope', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocumentsWithDocumentDateAndSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'takenFromEntegrator', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithDocumentDateAndSearchParams', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentsWithReceivedDateWithSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithReceivedDateWithSearchParams', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryInboxDocumentsWithReceivedDateWithSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'takenFromEntegrator', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryInboxDocumentsWithReceivedDateWithSearchParams', 'return', '',
                                '', IS_UNQL);
  { QueryDocumentWS.QueryOutboxDocumentsWithDocumentDateAndSearchParams }
  InvRegistry.RegisterMethodInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'startDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'endDate', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'documentType', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'queried', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'withXML', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'minRecordId', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'searchParams', '',
                                '[ArrayItemName="entry"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(QueryDocumentWS), 'QueryOutboxDocumentsWithDocumentDateAndSearchParams', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_TaxInfo), 'http://queryinvoiceservice.entegrator.com/', 'Array_Of_TaxInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ResponseUser), 'http://queryinvoiceservice.entegrator.com/', 'Array_Of_ResponseUser');
  RemClassRegistry.RegisterXSClass(DocumentInfo, 'http://queryinvoiceservice.entegrator.com/', 'DocumentInfo');
  RemClassRegistry.RegisterXSClass(UserListInfo, 'http://queryinvoiceservice.entegrator.com/', 'UserListInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ResponseDocument), 'http://queryinvoiceservice.entegrator.com/', 'Array_Of_ResponseDocument');
  RemClassRegistry.RegisterXSClass(DocumentQueryResponse, 'http://queryinvoiceservice.entegrator.com/', 'DocumentQueryResponse');
  RemClassRegistry.RegisterXSClass(entry, 'http://queryinvoiceservice.entegrator.com/', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_DocumentInfo), 'http://queryinvoiceservice.entegrator.com/', 'Array_Of_DocumentInfo');
  RemClassRegistry.RegisterXSClass(TaxInfo, 'http://queryinvoiceservice.entegrator.com/', 'TaxInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams), 'http://queryinvoiceservice.entegrator.com/', 'searchParams');
  RemClassRegistry.RegisterXSClass(entry2, 'http://queryinvoiceservice.entegrator.com/', 'entry2', 'entry');
  RemClassRegistry.RegisterXSClass(AttachmentResponse, 'http://queryinvoiceservice.entegrator.com/', 'AttachmentResponse');
  RemClassRegistry.RegisterXSClass(UserListDocument, 'http://queryinvoiceservice.entegrator.com/', 'UserListDocument');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams2), 'http://queryinvoiceservice.entegrator.com/', 'searchParams2', 'searchParams');
  RemClassRegistry.RegisterXSClass(entry3, 'http://queryinvoiceservice.entegrator.com/', 'entry3', 'entry');
  RemClassRegistry.RegisterXSClass(ResponseUser, 'http://queryinvoiceservice.entegrator.com/', 'ResponseUser');
  RemClassRegistry.RegisterXSClass(UserQueryResponse, 'http://queryinvoiceservice.entegrator.com/', 'UserQueryResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams3), 'http://queryinvoiceservice.entegrator.com/', 'searchParams3', 'searchParams');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchParams4), 'http://queryinvoiceservice.entegrator.com/', 'searchParams4', 'searchParams');
  RemClassRegistry.RegisterXSClass(entry4, 'http://queryinvoiceservice.entegrator.com/', 'entry4', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(QueryOutboxResponseDocument), 'http://queryinvoiceservice.entegrator.com/', 'QueryOutboxResponseDocument');
  RemClassRegistry.RegisterXSClass(ResponseDocument, 'http://queryinvoiceservice.entegrator.com/', 'ResponseDocument');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ResponseDocument), 'notes', '[ArrayItemName="documentUuid"]');

end.