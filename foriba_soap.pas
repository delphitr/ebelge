// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\Mustafa\Desktop\sil\Foriba Bulut e-Fatura Müþteri WS API\Bulut e-Fatura WS API v2.1\EK1 - Teknik Belgeler\ClientEInvoiceServices-2.0.wsdl
//  >Import : C:\Users\Mustafa\Desktop\sil\Foriba Bulut e-Fatura Müþteri WS API\Bulut e-Fatura WS API v2.1\EK1 - Teknik Belgeler\ClientEInvoiceServices-2.0.wsdl>0
//  >Import : C:\Users\Mustafa\Desktop\sil\Foriba Bulut e-Fatura Müþteri WS API\Bulut e-Fatura WS API v2.1\EK1 - Teknik Belgeler\ClientEInvoiceServicesTypes-2.0.xsd
//  >Import : C:\Users\Mustafa\Desktop\sil\Foriba Bulut e-Fatura Müþteri WS API\Bulut e-Fatura WS API v2.1\EK1 - Teknik Belgeler\EInvoiceServicesCommonTypes-1.0.xsd
// Encoding : UTF-8
// Codegen  : [wfUseSettersAndGetters+]
// Version  : 1.0
// (07.06.2019 13:13:44 - - $Rev: 90173 $)
// ************************************************************************ //

unit foriba_soap;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  SendUBLResponseType  = class;                 { "http:/fitcons.com/eInvoice/"[GblCplx] }
  GetUBLListResponseType = class;               { "http:/fitcons.com/eInvoice/"[GblCplx] }
  getUserListRequest   = class;                 { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  ProcessingFault      = class;                 { "http:/fitcons.com/eInvoice/"[Flt][GblElm] }
  getUBLRequest        = class;                 { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getEnvelopeStatusRequest = class;             { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getInvoiceViewRequest = class;                { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getUBLListRequest    = class;                 { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  sendUBLRequest       = class;                 { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getEnvelopeStatusResponseType = class;        { "http:/fitcons.com/eInvoice/"[GblCplx] }
  getInvoiceViewResponse = class;               { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  UserType             = class;                 { "http:/fitcons.com/eInvoice/"[GblCplx] }

  getEnvelopeStatusResponse = array of getEnvelopeStatusResponseType;   { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getUserListResponse = array of UserType;      { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }
  getUBLListResponse = array of GetUBLListResponseType;   { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SendUBLResponseType, global, <complexType>
  // Namespace : http:/fitcons.com/eInvoice/
  // ************************************************************************ //
  SendUBLResponseType = class(TRemotable)
  private
    FEnvUUID: string;
    FUUID: string;
    FID: string;
    FCustInvID: string;
    FCustInvID_Specified: boolean;
    function  GetEnvUUID: string;
    procedure SetEnvUUID(const Astring: string);
    function  GetUUID: string;
    procedure SetUUID(const Astring: string);
    function  GetID: string;
    procedure SetID(const Astring: string);
    function  GetCustInvID(Index: Integer): string;
    procedure SetCustInvID(Index: Integer; const Astring: string);
    function  CustInvID_Specified(Index: Integer): boolean;
  published
    property EnvUUID:   string  read GetEnvUUID write SetEnvUUID;
    property UUID:      string  read GetUUID write SetUUID;
    property ID:        string  read GetID write SetID;
    property CustInvID: string  Index (IS_OPTN) read GetCustInvID write SetCustInvID stored CustInvID_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUBLListResponseType, global, <complexType>
  // Namespace : http:/fitcons.com/eInvoice/
  // ************************************************************************ //
  GetUBLListResponseType = class(TRemotable)
  private
    FUUID: string;
    FIdentifier: string;
    FVKN_TCKN: string;
    FEnvType: string;
    FEnvType_Specified: boolean;
    FEnvUUID: string;
    FEnvUUID_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FCustInvID: string;
    FCustInvID_Specified: boolean;
    FInsertDateTime: TXSDateTime;
    function  GetUUID: string;
    procedure SetUUID(const Astring: string);
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetEnvType(Index: Integer): string;
    procedure SetEnvType(Index: Integer; const Astring: string);
    function  EnvType_Specified(Index: Integer): boolean;
    function  GetEnvUUID(Index: Integer): string;
    procedure SetEnvUUID(Index: Integer; const Astring: string);
    function  EnvUUID_Specified(Index: Integer): boolean;
    function  GetID(Index: Integer): string;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    function  GetCustInvID(Index: Integer): string;
    procedure SetCustInvID(Index: Integer; const Astring: string);
    function  CustInvID_Specified(Index: Integer): boolean;
    function  GetInsertDateTime: TXSDateTime;
    procedure SetInsertDateTime(const ATXSDateTime: TXSDateTime);
  public
    destructor Destroy; override;
  published
    property UUID:           string       read GetUUID write SetUUID;
    property Identifier:     string       read GetIdentifier write SetIdentifier;
    property VKN_TCKN:       string       read GetVKN_TCKN write SetVKN_TCKN;
    property EnvType:        string       Index (IS_OPTN) read GetEnvType write SetEnvType stored EnvType_Specified;
    property EnvUUID:        string       Index (IS_OPTN) read GetEnvUUID write SetEnvUUID stored EnvUUID_Specified;
    property ID:             string       Index (IS_OPTN) read GetID write SetID stored ID_Specified;
    property CustInvID:      string       Index (IS_OPTN) read GetCustInvID write SetCustInvID stored CustInvID_Specified;
    property InsertDateTime: TXSDateTime  read GetInsertDateTime write SetInsertDateTime;
  end;



  // ************************************************************************ //
  // XML       : getUserListRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getUserListRequest = class(TRemotable)
  private
    FIdentifier: string;
    FVKN_TCKN: string;
    FRole: string;
    FRegisteredAfter: TXSDateTime;
    FRegisteredAfter_Specified: boolean;
    FFilter_VKN_TCKN: string;
    FFilter_VKN_TCKN_Specified: boolean;
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetRole: string;
    procedure SetRole(const Astring: string);
    function  GetRegisteredAfter(Index: Integer): TXSDateTime;
    procedure SetRegisteredAfter(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  RegisteredAfter_Specified(Index: Integer): boolean;
    function  GetFilter_VKN_TCKN(Index: Integer): string;
    procedure SetFilter_VKN_TCKN(Index: Integer; const Astring: string);
    function  Filter_VKN_TCKN_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Identifier:      string       read GetIdentifier write SetIdentifier;
    property VKN_TCKN:        string       read GetVKN_TCKN write SetVKN_TCKN;
    property Role:            string       read GetRole write SetRole;
    property RegisteredAfter: TXSDateTime  Index (IS_OPTN) read GetRegisteredAfter write SetRegisteredAfter stored RegisteredAfter_Specified;
    property Filter_VKN_TCKN: string       Index (IS_OPTN) read GetFilter_VKN_TCKN write SetFilter_VKN_TCKN stored Filter_VKN_TCKN_Specified;
  end;



  // ************************************************************************ //
  // XML       : ProcessingFault, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Info      : Fault
  // ************************************************************************ //
  ProcessingFault = class(ERemotableException)
  private
    FCode: Integer;
    FMessage_: string;
    function  GetCode: Integer;
    procedure SetCode(const AInteger: Integer);
    function  GetMessage_: string;
    procedure SetMessage_(const Astring: string);
  published
    property Code:     Integer  read GetCode write SetCode;
    property Message_: string   read GetMessage_ write SetMessage_;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : getUBLRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getUBLRequest = class(TRemotable)
  private
    FIdentifier: string;
    FVKN_TCKN: string;
    FUUID: Array_Of_string;
    FDocType: string;
    FType_: string;
    FParameters: Array_Of_string;
    FParameters_Specified: boolean;
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetUUID(Index: Integer): Array_Of_string;
    procedure SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  GetDocType: string;
    procedure SetDocType(const Astring: string);
    function  GetType_: string;
    procedure SetType_(const Astring: string);
    function  GetParameters(Index: Integer): Array_Of_string;
    procedure SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  Parameters_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property Identifier: string           read GetIdentifier write SetIdentifier;
    property VKN_TCKN:   string           read GetVKN_TCKN write SetVKN_TCKN;
    property UUID:       Array_Of_string  Index (IS_UNBD) read GetUUID write SetUUID;
    property DocType:    string           read GetDocType write SetDocType;
    property Type_:      string           read GetType_ write SetType_;
    property Parameters: Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetParameters write SetParameters stored Parameters_Specified;
  end;



  // ************************************************************************ //
  // XML       : getEnvelopeStatusRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getEnvelopeStatusRequest = class(TRemotable)
  private
    FIdentifier: string;
    FVKN_TCKN: string;
    FUUID: Array_Of_string;
    FParameters: Array_Of_string;
    FParameters_Specified: boolean;
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetUUID(Index: Integer): Array_Of_string;
    procedure SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  GetParameters(Index: Integer): Array_Of_string;
    procedure SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  Parameters_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property Identifier: string           read GetIdentifier write SetIdentifier;
    property VKN_TCKN:   string           read GetVKN_TCKN write SetVKN_TCKN;
    property UUID:       Array_Of_string  Index (IS_UNBD) read GetUUID write SetUUID;
    property Parameters: Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetParameters write SetParameters stored Parameters_Specified;
  end;



  // ************************************************************************ //
  // XML       : getInvoiceViewRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getInvoiceViewRequest = class(TRemotable)
  private
    FUUID: string;
    FCustInvID: string;
    FIdentifier: string;
    FVKN_TCKN: string;
    FType_: string;
    FDocType: string;
    function  GetUUID: string;
    procedure SetUUID(const Astring: string);
    function  GetCustInvID: string;
    procedure SetCustInvID(const Astring: string);
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetType_: string;
    procedure SetType_(const Astring: string);
    function  GetDocType: string;
    procedure SetDocType(const Astring: string);
  public
    constructor Create; override;
  published
    property UUID:       string  read GetUUID write SetUUID;
    property CustInvID:  string  read GetCustInvID write SetCustInvID;
    property Identifier: string  read GetIdentifier write SetIdentifier;
    property VKN_TCKN:   string  read GetVKN_TCKN write SetVKN_TCKN;
    property Type_:      string  read GetType_ write SetType_;
    property DocType:    string  read GetDocType write SetDocType;
  end;

  sendUBLResponse = array of SendUBLResponseType;   { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : getUBLListRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getUBLListRequest = class(TRemotable)
  private
    FIdentifier: string;
    FVKN_TCKN: string;
    FUUID: Array_Of_string;
    FUUID_Specified: boolean;
    FDocType: string;
    FType_: string;
    FParameters: Array_Of_string;
    FParameters_Specified: boolean;
    FFromDate: TXSDateTime;
    FFromDate_Specified: boolean;
    FToDate: TXSDateTime;
    FToDate_Specified: boolean;
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetUUID(Index: Integer): Array_Of_string;
    procedure SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  UUID_Specified(Index: Integer): boolean;
    function  GetDocType: string;
    procedure SetDocType(const Astring: string);
    function  GetType_: string;
    procedure SetType_(const Astring: string);
    function  GetParameters(Index: Integer): Array_Of_string;
    procedure SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  Parameters_Specified(Index: Integer): boolean;
    function  GetFromDate(Index: Integer): TXSDateTime;
    procedure SetFromDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  FromDate_Specified(Index: Integer): boolean;
    function  GetToDate(Index: Integer): TXSDateTime;
    procedure SetToDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  ToDate_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Identifier: string           read GetIdentifier write SetIdentifier;
    property VKN_TCKN:   string           read GetVKN_TCKN write SetVKN_TCKN;
    property UUID:       Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetUUID write SetUUID stored UUID_Specified;
    property DocType:    string           read GetDocType write SetDocType;
    property Type_:      string           read GetType_ write SetType_;
    property Parameters: Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetParameters write SetParameters stored Parameters_Specified;
    property FromDate:   TXSDateTime      Index (IS_OPTN) read GetFromDate write SetFromDate stored FromDate_Specified;
    property ToDate:     TXSDateTime      Index (IS_OPTN) read GetToDate write SetToDate stored ToDate_Specified;
  end;



  // ************************************************************************ //
  // XML       : sendUBLRequest, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  sendUBLRequest = class(TRemotable)
  private
    FVKN_TCKN: string;
    FSenderIdentifier: string;
    FSenderIdentifier_Specified: boolean;
    FReceiverIdentifier: string;
    FReceiverIdentifier_Specified: boolean;
    FDocType: string;
    FParameters: Array_Of_string;
    FParameters_Specified: boolean;
    FDocData: TByteDynArray;
    function  GetVKN_TCKN: string;
    procedure SetVKN_TCKN(const Astring: string);
    function  GetSenderIdentifier(Index: Integer): string;
    procedure SetSenderIdentifier(Index: Integer; const Astring: string);
    function  SenderIdentifier_Specified(Index: Integer): boolean;
    function  GetReceiverIdentifier(Index: Integer): string;
    procedure SetReceiverIdentifier(Index: Integer; const Astring: string);
    function  ReceiverIdentifier_Specified(Index: Integer): boolean;
    function  GetDocType: string;
    procedure SetDocType(const Astring: string);
    function  GetParameters(Index: Integer): Array_Of_string;
    procedure SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  Parameters_Specified(Index: Integer): boolean;
    function  GetDocData: TByteDynArray;
    procedure SetDocData(const ATByteDynArray: TByteDynArray);
  public
    constructor Create; override;
  published
    property VKN_TCKN:           string           read GetVKN_TCKN write SetVKN_TCKN;
    property SenderIdentifier:   string           Index (IS_OPTN) read GetSenderIdentifier write SetSenderIdentifier stored SenderIdentifier_Specified;
    property ReceiverIdentifier: string           Index (IS_OPTN) read GetReceiverIdentifier write SetReceiverIdentifier stored ReceiverIdentifier_Specified;
    property DocType:            string           read GetDocType write SetDocType;
    property Parameters:         Array_Of_string  Index (IS_OPTN or IS_UNBD) read GetParameters write SetParameters stored Parameters_Specified;
    property DocData:            TByteDynArray    read GetDocData write SetDocData;
  end;



  // ************************************************************************ //
  // XML       : getEnvelopeStatusResponseType, global, <complexType>
  // Namespace : http:/fitcons.com/eInvoice/
  // ************************************************************************ //
  getEnvelopeStatusResponseType = class(TRemotable)
  private
    FUUID: string;
    FIssueDate: TXSDate;
    FDocumentTypeCode: string;
    FDocumentTypeCode_Specified: boolean;
    FDocumentType: string;
    FDocumentType_Specified: boolean;
    FResponseCode: string;
    FResponseCode_Specified: boolean;
    FDescription: string;
    FDescription_Specified: boolean;
    FDocData: TByteDynArray;
    FDocData_Specified: boolean;
    function  GetUUID: string;
    procedure SetUUID(const Astring: string);
    function  GetIssueDate: TXSDate;
    procedure SetIssueDate(const ATXSDate: TXSDate);
    function  GetDocumentTypeCode(Index: Integer): string;
    procedure SetDocumentTypeCode(Index: Integer; const Astring: string);
    function  DocumentTypeCode_Specified(Index: Integer): boolean;
    function  GetDocumentType(Index: Integer): string;
    procedure SetDocumentType(Index: Integer; const Astring: string);
    function  DocumentType_Specified(Index: Integer): boolean;
    function  GetResponseCode(Index: Integer): string;
    procedure SetResponseCode(Index: Integer; const Astring: string);
    function  ResponseCode_Specified(Index: Integer): boolean;
    function  GetDescription(Index: Integer): string;
    procedure SetDescription(Index: Integer; const Astring: string);
    function  Description_Specified(Index: Integer): boolean;
    function  GetDocData(Index: Integer): TByteDynArray;
    procedure SetDocData(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  DocData_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UUID:             string         read GetUUID write SetUUID;
    property IssueDate:        TXSDate        read GetIssueDate write SetIssueDate;
    property DocumentTypeCode: string         Index (IS_OPTN) read GetDocumentTypeCode write SetDocumentTypeCode stored DocumentTypeCode_Specified;
    property DocumentType:     string         Index (IS_OPTN) read GetDocumentType write SetDocumentType stored DocumentType_Specified;
    property ResponseCode:     string         Index (IS_OPTN) read GetResponseCode write SetResponseCode stored ResponseCode_Specified;
    property Description:      string         Index (IS_OPTN) read GetDescription write SetDescription stored Description_Specified;
    property DocData:          TByteDynArray  Index (IS_OPTN) read GetDocData write SetDocData stored DocData_Specified;
  end;



  // ************************************************************************ //
  // XML       : getInvoiceViewResponse, global, <element>
  // Namespace : http:/fitcons.com/eInvoice/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  getInvoiceViewResponse = class(TRemotable)
  private
    FDocData: TByteDynArray;
    function  GetDocData: TByteDynArray;
    procedure SetDocData(const ATByteDynArray: TByteDynArray);
  public
    constructor Create; override;
  published
    property DocData: TByteDynArray  read GetDocData write SetDocData;
  end;

  getUBLResponse = array of TByteDynArray;      { "http:/fitcons.com/eInvoice/"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : UserType, global, <complexType>
  // Namespace : http:/fitcons.com/eInvoice/
  // ************************************************************************ //
  UserType = class(TRemotable)
  private
    FIdentifier: string;
    FAlias: string;
    FTitle: string;
    FType_: string;
    FRegisterTime: TXSDateTime;
    FFirstCreationTime: TXSDateTime;
    function  GetIdentifier: string;
    procedure SetIdentifier(const Astring: string);
    function  GetAlias: string;
    procedure SetAlias(const Astring: string);
    function  GetTitle: string;
    procedure SetTitle(const Astring: string);
    function  GetType_: string;
    procedure SetType_(const Astring: string);
    function  GetRegisterTime: TXSDateTime;
    procedure SetRegisterTime(const ATXSDateTime: TXSDateTime);
    function  GetFirstCreationTime: TXSDateTime;
    procedure SetFirstCreationTime(const ATXSDateTime: TXSDateTime);
  public
    destructor Destroy; override;
  published
    property Identifier:        string       read GetIdentifier write SetIdentifier;
    property Alias:             string       read GetAlias write SetAlias;
    property Title:             string       read GetTitle write SetTitle;
    property Type_:             string       read GetType_ write SetType_;
    property RegisterTime:      TXSDateTime  read GetRegisterTime write SetRegisterTime;
    property FirstCreationTime: TXSDateTime  read GetFirstCreationTime write SetFirstCreationTime;
  end;


  // ************************************************************************ //
  // Namespace : http:/fitcons.com/eInvoice/
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ClientEInvoiceServicesBinding
  // service   : ClientEInvoiceServices
  // port      : ClientEInvoiceServicesPort
  // URL       : http://fitcons.com/eInvoice/
  // ************************************************************************ //
  ClientEInvoiceServicesPort = interface(IInvokable)
  ['{FE159D7A-1B10-D5B1-03C4-2943E7470E2D}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  sendUBL(const parameter: sendUBLRequest): sendUBLResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  getUBLList(const parameter: getUBLListRequest): getUBLListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  getUBL(const parameter: getUBLRequest): getUBLResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  getEnvelopeStatus(const parameter: getEnvelopeStatusRequest): getEnvelopeStatusResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  getInvoiceView(const parameter: getInvoiceViewRequest): getInvoiceViewResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  getUserList(const parameter: getUserListRequest): getUserListResponse; stdcall;
  end;

function GetClientEInvoiceServicesPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ClientEInvoiceServicesPort;


implementation
  uses System.SysUtils;

function GetClientEInvoiceServicesPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ClientEInvoiceServicesPort;
const
  defWSDL = 'ClientEInvoiceServices-2.0.wsdl';
  defURL  = 'http://fitcons.com/eInvoice/';
  defSvc  = 'ClientEInvoiceServices';
  defPrt  = 'ClientEInvoiceServicesPort';
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
    Result := (RIO as ClientEInvoiceServicesPort);
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


function SendUBLResponseType.GetEnvUUID: string;
begin
  Result := FEnvUUID;
end;

procedure SendUBLResponseType.SetEnvUUID(const Astring: string);
begin
  FEnvUUID := Astring;
end;

function SendUBLResponseType.GetUUID: string;
begin
  Result := FUUID;
end;

procedure SendUBLResponseType.SetUUID(const Astring: string);
begin
  FUUID := Astring;
end;

function SendUBLResponseType.GetID: string;
begin
  Result := FID;
end;

procedure SendUBLResponseType.SetID(const Astring: string);
begin
  FID := Astring;
end;

function SendUBLResponseType.GetCustInvID(Index: Integer): string;
begin
  Result := FCustInvID;
end;

procedure SendUBLResponseType.SetCustInvID(Index: Integer; const Astring: string);
begin
  FCustInvID := Astring;
  FCustInvID_Specified := True;
end;

function SendUBLResponseType.CustInvID_Specified(Index: Integer): boolean;
begin
  Result := FCustInvID_Specified;
end;

destructor GetUBLListResponseType.Destroy;
begin
  System.SysUtils.FreeAndNil(FInsertDateTime);
  inherited Destroy;
end;

function GetUBLListResponseType.GetUUID: string;
begin
  Result := FUUID;
end;

procedure GetUBLListResponseType.SetUUID(const Astring: string);
begin
  FUUID := Astring;
end;

function GetUBLListResponseType.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure GetUBLListResponseType.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function GetUBLListResponseType.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure GetUBLListResponseType.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function GetUBLListResponseType.GetEnvType(Index: Integer): string;
begin
  Result := FEnvType;
end;

procedure GetUBLListResponseType.SetEnvType(Index: Integer; const Astring: string);
begin
  FEnvType := Astring;
  FEnvType_Specified := True;
end;

function GetUBLListResponseType.EnvType_Specified(Index: Integer): boolean;
begin
  Result := FEnvType_Specified;
end;

function GetUBLListResponseType.GetEnvUUID(Index: Integer): string;
begin
  Result := FEnvUUID;
end;

procedure GetUBLListResponseType.SetEnvUUID(Index: Integer; const Astring: string);
begin
  FEnvUUID := Astring;
  FEnvUUID_Specified := True;
end;

function GetUBLListResponseType.EnvUUID_Specified(Index: Integer): boolean;
begin
  Result := FEnvUUID_Specified;
end;

function GetUBLListResponseType.GetID(Index: Integer): string;
begin
  Result := FID;
end;

procedure GetUBLListResponseType.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function GetUBLListResponseType.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

function GetUBLListResponseType.GetCustInvID(Index: Integer): string;
begin
  Result := FCustInvID;
end;

procedure GetUBLListResponseType.SetCustInvID(Index: Integer; const Astring: string);
begin
  FCustInvID := Astring;
  FCustInvID_Specified := True;
end;

function GetUBLListResponseType.CustInvID_Specified(Index: Integer): boolean;
begin
  Result := FCustInvID_Specified;
end;

function GetUBLListResponseType.GetInsertDateTime: TXSDateTime;
begin
  Result := FInsertDateTime;
end;

procedure GetUBLListResponseType.SetInsertDateTime(const ATXSDateTime: TXSDateTime);
begin
  FInsertDateTime := ATXSDateTime;
end;

constructor getUserListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor getUserListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FRegisteredAfter);
  inherited Destroy;
end;

function getUserListRequest.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure getUserListRequest.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function getUserListRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure getUserListRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function getUserListRequest.GetRole: string;
begin
  Result := FRole;
end;

procedure getUserListRequest.SetRole(const Astring: string);
begin
  FRole := Astring;
end;

function getUserListRequest.GetRegisteredAfter(Index: Integer): TXSDateTime;
begin
  Result := FRegisteredAfter;
end;

procedure getUserListRequest.SetRegisteredAfter(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FRegisteredAfter := ATXSDateTime;
  FRegisteredAfter_Specified := True;
end;

function getUserListRequest.RegisteredAfter_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredAfter_Specified;
end;

function getUserListRequest.GetFilter_VKN_TCKN(Index: Integer): string;
begin
  Result := FFilter_VKN_TCKN;
end;

procedure getUserListRequest.SetFilter_VKN_TCKN(Index: Integer; const Astring: string);
begin
  FFilter_VKN_TCKN := Astring;
  FFilter_VKN_TCKN_Specified := True;
end;

function getUserListRequest.Filter_VKN_TCKN_Specified(Index: Integer): boolean;
begin
  Result := FFilter_VKN_TCKN_Specified;
end;

function ProcessingFault.GetCode: Integer;
begin
  Result := FCode;
end;

procedure ProcessingFault.SetCode(const AInteger: Integer);
begin
  FCode := AInteger;
end;

function ProcessingFault.GetMessage_: string;
begin
  Result := FMessage_;
end;

procedure ProcessingFault.SetMessage_(const Astring: string);
begin
  FMessage_ := Astring;
end;

constructor getUBLRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

function getUBLRequest.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure getUBLRequest.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function getUBLRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure getUBLRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function getUBLRequest.GetUUID(Index: Integer): Array_Of_string;
begin
  Result := FUUID;
end;

procedure getUBLRequest.SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FUUID := AArray_Of_string;
end;

function getUBLRequest.GetDocType: string;
begin
  Result := FDocType;
end;

procedure getUBLRequest.SetDocType(const Astring: string);
begin
  FDocType := Astring;
end;

function getUBLRequest.GetType_: string;
begin
  Result := FType_;
end;

procedure getUBLRequest.SetType_(const Astring: string);
begin
  FType_ := Astring;
end;

function getUBLRequest.GetParameters(Index: Integer): Array_Of_string;
begin
  Result := FParameters;
end;

procedure getUBLRequest.SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FParameters := AArray_Of_string;
  FParameters_Specified := True;
end;

function getUBLRequest.Parameters_Specified(Index: Integer): boolean;
begin
  Result := FParameters_Specified;
end;

constructor getEnvelopeStatusRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

function getEnvelopeStatusRequest.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure getEnvelopeStatusRequest.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function getEnvelopeStatusRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure getEnvelopeStatusRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function getEnvelopeStatusRequest.GetUUID(Index: Integer): Array_Of_string;
begin
  Result := FUUID;
end;

procedure getEnvelopeStatusRequest.SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FUUID := AArray_Of_string;
end;

function getEnvelopeStatusRequest.GetParameters(Index: Integer): Array_Of_string;
begin
  Result := FParameters;
end;

procedure getEnvelopeStatusRequest.SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FParameters := AArray_Of_string;
  FParameters_Specified := True;
end;

function getEnvelopeStatusRequest.Parameters_Specified(Index: Integer): boolean;
begin
  Result := FParameters_Specified;
end;

constructor getInvoiceViewRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

function getInvoiceViewRequest.GetUUID: string;
begin
  Result := FUUID;
end;

procedure getInvoiceViewRequest.SetUUID(const Astring: string);
begin
  FUUID := Astring;
end;

function getInvoiceViewRequest.GetCustInvID: string;
begin
  Result := FCustInvID;
end;

procedure getInvoiceViewRequest.SetCustInvID(const Astring: string);
begin
  FCustInvID := Astring;
end;

function getInvoiceViewRequest.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure getInvoiceViewRequest.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function getInvoiceViewRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure getInvoiceViewRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function getInvoiceViewRequest.GetType_: string;
begin
  Result := FType_;
end;

procedure getInvoiceViewRequest.SetType_(const Astring: string);
begin
  FType_ := Astring;
end;

function getInvoiceViewRequest.GetDocType: string;
begin
  Result := FDocType;
end;

procedure getInvoiceViewRequest.SetDocType(const Astring: string);
begin
  FDocType := Astring;
end;

constructor getUBLListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor getUBLListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FFromDate);
  System.SysUtils.FreeAndNil(FToDate);
  inherited Destroy;
end;

function getUBLListRequest.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure getUBLListRequest.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function getUBLListRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure getUBLListRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function getUBLListRequest.GetUUID(Index: Integer): Array_Of_string;
begin
  Result := FUUID;
end;

procedure getUBLListRequest.SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FUUID := AArray_Of_string;
  FUUID_Specified := True;
end;

function getUBLListRequest.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

function getUBLListRequest.GetDocType: string;
begin
  Result := FDocType;
end;

procedure getUBLListRequest.SetDocType(const Astring: string);
begin
  FDocType := Astring;
end;

function getUBLListRequest.GetType_: string;
begin
  Result := FType_;
end;

procedure getUBLListRequest.SetType_(const Astring: string);
begin
  FType_ := Astring;
end;

function getUBLListRequest.GetParameters(Index: Integer): Array_Of_string;
begin
  Result := FParameters;
end;

procedure getUBLListRequest.SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FParameters := AArray_Of_string;
  FParameters_Specified := True;
end;

function getUBLListRequest.Parameters_Specified(Index: Integer): boolean;
begin
  Result := FParameters_Specified;
end;

function getUBLListRequest.GetFromDate(Index: Integer): TXSDateTime;
begin
  Result := FFromDate;
end;

procedure getUBLListRequest.SetFromDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FFromDate := ATXSDateTime;
  FFromDate_Specified := True;
end;

function getUBLListRequest.FromDate_Specified(Index: Integer): boolean;
begin
  Result := FFromDate_Specified;
end;

function getUBLListRequest.GetToDate(Index: Integer): TXSDateTime;
begin
  Result := FToDate;
end;

procedure getUBLListRequest.SetToDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FToDate := ATXSDateTime;
  FToDate_Specified := True;
end;

function getUBLListRequest.ToDate_Specified(Index: Integer): boolean;
begin
  Result := FToDate_Specified;
end;

constructor sendUBLRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

function sendUBLRequest.GetVKN_TCKN: string;
begin
  Result := FVKN_TCKN;
end;

procedure sendUBLRequest.SetVKN_TCKN(const Astring: string);
begin
  FVKN_TCKN := Astring;
end;

function sendUBLRequest.GetSenderIdentifier(Index: Integer): string;
begin
  Result := FSenderIdentifier;
end;

procedure sendUBLRequest.SetSenderIdentifier(Index: Integer; const Astring: string);
begin
  FSenderIdentifier := Astring;
  FSenderIdentifier_Specified := True;
end;

function sendUBLRequest.SenderIdentifier_Specified(Index: Integer): boolean;
begin
  Result := FSenderIdentifier_Specified;
end;

function sendUBLRequest.GetReceiverIdentifier(Index: Integer): string;
begin
  Result := FReceiverIdentifier;
end;

procedure sendUBLRequest.SetReceiverIdentifier(Index: Integer; const Astring: string);
begin
  FReceiverIdentifier := Astring;
  FReceiverIdentifier_Specified := True;
end;

function sendUBLRequest.ReceiverIdentifier_Specified(Index: Integer): boolean;
begin
  Result := FReceiverIdentifier_Specified;
end;

function sendUBLRequest.GetDocType: string;
begin
  Result := FDocType;
end;

procedure sendUBLRequest.SetDocType(const Astring: string);
begin
  FDocType := Astring;
end;

function sendUBLRequest.GetParameters(Index: Integer): Array_Of_string;
begin
  Result := FParameters;
end;

procedure sendUBLRequest.SetParameters(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FParameters := AArray_Of_string;
  FParameters_Specified := True;
end;

function sendUBLRequest.Parameters_Specified(Index: Integer): boolean;
begin
  Result := FParameters_Specified;
end;

function sendUBLRequest.GetDocData: TByteDynArray;
begin
  Result := FDocData;
end;

procedure sendUBLRequest.SetDocData(const ATByteDynArray: TByteDynArray);
begin
  FDocData := ATByteDynArray;
end;

destructor getEnvelopeStatusResponseType.Destroy;
begin
  System.SysUtils.FreeAndNil(FIssueDate);
  inherited Destroy;
end;

function getEnvelopeStatusResponseType.GetUUID: string;
begin
  Result := FUUID;
end;

procedure getEnvelopeStatusResponseType.SetUUID(const Astring: string);
begin
  FUUID := Astring;
end;

function getEnvelopeStatusResponseType.GetIssueDate: TXSDate;
begin
  Result := FIssueDate;
end;

procedure getEnvelopeStatusResponseType.SetIssueDate(const ATXSDate: TXSDate);
begin
  FIssueDate := ATXSDate;
end;

function getEnvelopeStatusResponseType.GetDocumentTypeCode(Index: Integer): string;
begin
  Result := FDocumentTypeCode;
end;

procedure getEnvelopeStatusResponseType.SetDocumentTypeCode(Index: Integer; const Astring: string);
begin
  FDocumentTypeCode := Astring;
  FDocumentTypeCode_Specified := True;
end;

function getEnvelopeStatusResponseType.DocumentTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FDocumentTypeCode_Specified;
end;

function getEnvelopeStatusResponseType.GetDocumentType(Index: Integer): string;
begin
  Result := FDocumentType;
end;

procedure getEnvelopeStatusResponseType.SetDocumentType(Index: Integer; const Astring: string);
begin
  FDocumentType := Astring;
  FDocumentType_Specified := True;
end;

function getEnvelopeStatusResponseType.DocumentType_Specified(Index: Integer): boolean;
begin
  Result := FDocumentType_Specified;
end;

function getEnvelopeStatusResponseType.GetResponseCode(Index: Integer): string;
begin
  Result := FResponseCode;
end;

procedure getEnvelopeStatusResponseType.SetResponseCode(Index: Integer; const Astring: string);
begin
  FResponseCode := Astring;
  FResponseCode_Specified := True;
end;

function getEnvelopeStatusResponseType.ResponseCode_Specified(Index: Integer): boolean;
begin
  Result := FResponseCode_Specified;
end;

function getEnvelopeStatusResponseType.GetDescription(Index: Integer): string;
begin
  Result := FDescription;
end;

procedure getEnvelopeStatusResponseType.SetDescription(Index: Integer; const Astring: string);
begin
  FDescription := Astring;
  FDescription_Specified := True;
end;

function getEnvelopeStatusResponseType.Description_Specified(Index: Integer): boolean;
begin
  Result := FDescription_Specified;
end;

function getEnvelopeStatusResponseType.GetDocData(Index: Integer): TByteDynArray;
begin
  Result := FDocData;
end;

procedure getEnvelopeStatusResponseType.SetDocData(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FDocData := ATByteDynArray;
  FDocData_Specified := True;
end;

function getEnvelopeStatusResponseType.DocData_Specified(Index: Integer): boolean;
begin
  Result := FDocData_Specified;
end;

constructor getInvoiceViewResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

function getInvoiceViewResponse.GetDocData: TByteDynArray;
begin
  Result := FDocData;
end;

procedure getInvoiceViewResponse.SetDocData(const ATByteDynArray: TByteDynArray);
begin
  FDocData := ATByteDynArray;
end;

destructor UserType.Destroy;
begin
  System.SysUtils.FreeAndNil(FRegisterTime);
  System.SysUtils.FreeAndNil(FFirstCreationTime);
  inherited Destroy;
end;

function UserType.GetIdentifier: string;
begin
  Result := FIdentifier;
end;

procedure UserType.SetIdentifier(const Astring: string);
begin
  FIdentifier := Astring;
end;

function UserType.GetAlias: string;
begin
  Result := FAlias;
end;

procedure UserType.SetAlias(const Astring: string);
begin
  FAlias := Astring;
end;

function UserType.GetTitle: string;
begin
  Result := FTitle;
end;

procedure UserType.SetTitle(const Astring: string);
begin
  FTitle := Astring;
end;

function UserType.GetType_: string;
begin
  Result := FType_;
end;

procedure UserType.SetType_(const Astring: string);
begin
  FType_ := Astring;
end;

function UserType.GetRegisterTime: TXSDateTime;
begin
  Result := FRegisterTime;
end;

procedure UserType.SetRegisterTime(const ATXSDateTime: TXSDateTime);
begin
  FRegisterTime := ATXSDateTime;
end;

function UserType.GetFirstCreationTime: TXSDateTime;
begin
  Result := FFirstCreationTime;
end;

procedure UserType.SetFirstCreationTime(const ATXSDateTime: TXSDateTime);
begin
  FFirstCreationTime := ATXSDateTime;
end;

initialization
  { ClientEInvoiceServicesPort }
  InvRegistry.RegisterInterface(TypeInfo(ClientEInvoiceServicesPort), 'http:/fitcons.com/eInvoice/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ClientEInvoiceServicesPort), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ClientEInvoiceServicesPort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ClientEInvoiceServicesPort), ioLiteral);
  { ClientEInvoiceServicesPort.sendUBL }
  InvRegistry.RegisterParamInfo(TypeInfo(ClientEInvoiceServicesPort), 'sendUBL', 'parameter', '',
                                '[ArrayItemName="Response"]');
  { ClientEInvoiceServicesPort.getUBLList }
  InvRegistry.RegisterParamInfo(TypeInfo(ClientEInvoiceServicesPort), 'getUBLList', 'parameter', '',
                                '[ArrayItemName="UBLList"]');
  { ClientEInvoiceServicesPort.getUBL }
  InvRegistry.RegisterParamInfo(TypeInfo(ClientEInvoiceServicesPort), 'getUBL', 'parameter', '',
                                '[ArrayItemName="DocData"]');
  { ClientEInvoiceServicesPort.getEnvelopeStatus }
  InvRegistry.RegisterParamInfo(TypeInfo(ClientEInvoiceServicesPort), 'getEnvelopeStatus', 'parameter', '',
                                '[ArrayItemName="Response"]');
  { ClientEInvoiceServicesPort.getUserList }
  InvRegistry.RegisterParamInfo(TypeInfo(ClientEInvoiceServicesPort), 'getUserList', 'parameter', '',
                                '[ArrayItemName="User"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getEnvelopeStatusResponse), 'http:/fitcons.com/eInvoice/', 'getEnvelopeStatusResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(getEnvelopeStatusResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(getUserListResponse), 'http:/fitcons.com/eInvoice/', 'getUserListResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(getUserListResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(getUBLListResponse), 'http:/fitcons.com/eInvoice/', 'getUBLListResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(getUBLListResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendUBLResponseType, 'http:/fitcons.com/eInvoice/', 'SendUBLResponseType');
  RemClassRegistry.RegisterXSClass(GetUBLListResponseType, 'http:/fitcons.com/eInvoice/', 'GetUBLListResponseType');
  RemClassRegistry.RegisterXSClass(getUserListRequest, 'http:/fitcons.com/eInvoice/', 'getUserListRequest');
  RemClassRegistry.RegisterSerializeOptions(getUserListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProcessingFault, 'http:/fitcons.com/eInvoice/', 'ProcessingFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProcessingFault), 'Message_', '[ExtName="Message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(getUBLRequest, 'http:/fitcons.com/eInvoice/', 'getUBLRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(getUBLRequest), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterSerializeOptions(getUBLRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(getEnvelopeStatusRequest, 'http:/fitcons.com/eInvoice/', 'getEnvelopeStatusRequest');
  RemClassRegistry.RegisterSerializeOptions(getEnvelopeStatusRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(getInvoiceViewRequest, 'http:/fitcons.com/eInvoice/', 'getInvoiceViewRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(getInvoiceViewRequest), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterSerializeOptions(getInvoiceViewRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(sendUBLResponse), 'http:/fitcons.com/eInvoice/', 'sendUBLResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(sendUBLResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(getUBLListRequest, 'http:/fitcons.com/eInvoice/', 'getUBLListRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(getUBLListRequest), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterSerializeOptions(getUBLListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(sendUBLRequest, 'http:/fitcons.com/eInvoice/', 'sendUBLRequest');
  RemClassRegistry.RegisterSerializeOptions(sendUBLRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(getEnvelopeStatusResponseType, 'http:/fitcons.com/eInvoice/', 'getEnvelopeStatusResponseType');
  RemClassRegistry.RegisterXSClass(getInvoiceViewResponse, 'http:/fitcons.com/eInvoice/', 'getInvoiceViewResponse');
  RemClassRegistry.RegisterSerializeOptions(getInvoiceViewResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(getUBLResponse), 'http:/fitcons.com/eInvoice/', 'getUBLResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(getUBLResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UserType, 'http:/fitcons.com/eInvoice/', 'UserType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UserType), 'Type_', '[ExtName="Type"]');

end.