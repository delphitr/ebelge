
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 2/5/2023 8:03:05 PM                                    }
{       Generated from: xsd\maindoc\UBL-DespatchAdvice-2.1.xsd   }
{   Settings stored in: UBL-DespatchAdvice-2.1.xdb               }
{                                                                              }
{******************************************************************************}

unit UBLDespatchAdvice21;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLDespatchAdviceType = interface;
  IXMLUBLExtensionsType_ext = interface;
  IXMLUBLExtensionType_ext = interface;
  IXMLExtensionContentType = interface;
  IXMLUBLVersionIDType_cbc = interface;
  IXMLCustomizationIDType_cbc = interface;
  IXMLProfileIDType_cbc = interface;
  IXMLIDType_cbc = interface;
  IXMLCopyIndicatorType_cbc = interface;
  IXMLUUIDType_cbc = interface;
  IXMLIssueDateType_cbc = interface;
  IXMLIssueTimeType_cbc = interface;
  IXMLDespatchAdviceTypeCodeType_cbc = interface;
  IXMLNoteType_cbc = interface;
  IXMLNoteType_cbcList = interface;
  IXMLLineCountNumericType_cbc = interface;
  IXMLOrderReferenceType_cac = interface;
  IXMLOrderReferenceType_cacList = interface;
  IXMLSalesOrderIDType_cbc = interface;
  IXMLOrderTypeCodeType_cbc = interface;
  IXMLDocumentReferenceType_cac = interface;
  IXMLDocumentReferenceType_cacList = interface;
  IXMLDocumentTypeCodeType_cbc = interface;
  IXMLDocumentTypeType_cbc = interface;
  IXMLDocumentDescriptionType_cbc = interface;
  IXMLDocumentDescriptionType_cbcList = interface;
  IXMLAttachmentType_cac = interface;
  IXMLEmbeddedDocumentBinaryObjectType_cbc = interface;
  IXMLExternalReferenceType_cac = interface;
  IXMLURIType_cbc = interface;
  IXMLPeriodType_cac = interface;
  IXMLStartDateType_cbc = interface;
  IXMLStartTimeType_cbc = interface;
  IXMLEndDateType_cbc = interface;
  IXMLEndTimeType_cbc = interface;
  IXMLDurationMeasureType_cbc = interface;
  IXMLDescriptionType_cbc = interface;
  IXMLDescriptionType_cbcList = interface;
  IXMLPartyType_cac = interface;
  IXMLWebsiteURIType_cbc = interface;
  IXMLEndpointIDType_cbc = interface;
  IXMLIndustryClassificationCodeType_cbc = interface;
  IXMLPartyIdentificationType_cac = interface;
  IXMLPartyIdentificationType_cacList = interface;
  IXMLPartyNameType_cac = interface;
  IXMLNameType_cbc = interface;
  IXMLAddressType_cac = interface;
  IXMLAddressType_cacList = interface;
  IXMLPostboxType_cbc = interface;
  IXMLRoomType_cbc = interface;
  IXMLStreetNameType_cbc = interface;
  IXMLBlockNameType_cbc = interface;
  IXMLBuildingNameType_cbc = interface;
  IXMLBuildingNumberType_cbc = interface;
  IXMLCitySubdivisionNameType_cbc = interface;
  IXMLCityNameType_cbc = interface;
  IXMLPostalZoneType_cbc = interface;
  IXMLRegionType_cbc = interface;
  IXMLDistrictType_cbc = interface;
  IXMLCountryType_cac = interface;
  IXMLIdentificationCodeType_cbc = interface;
  IXMLLocationType_cac = interface;
  IXMLPartyTaxSchemeType_cac = interface;
  IXMLRegistrationNameType_cbc = interface;
  IXMLCompanyIDType_cbc = interface;
  IXMLTaxSchemeType_cac = interface;
  IXMLTaxTypeCodeType_cbc = interface;
  IXMLPartyLegalEntityType_cac = interface;
  IXMLPartyLegalEntityType_cacList = interface;
  IXMLRegistrationDateType_cbc = interface;
  IXMLSoleProprietorshipIndicatorType_cbc = interface;
  IXMLCorporateStockAmountType_cbc = interface;
  IXMLFullyPaidSharesIndicatorType_cbc = interface;
  IXMLCorporateRegistrationSchemeType_cac = interface;
  IXMLCorporateRegistrationTypeCodeType_cbc = interface;
  IXMLContactType_cac = interface;
  IXMLTelephoneType_cbc = interface;
  IXMLTelefaxType_cbc = interface;
  IXMLElectronicMailType_cbc = interface;
  IXMLCommunicationType_cac = interface;
  IXMLCommunicationType_cacList = interface;
  IXMLChannelCodeType_cbc = interface;
  IXMLChannelType_cbc = interface;
  IXMLValueType_cbc = interface;
  IXMLPersonType_cac = interface;
  IXMLPersonType_cacList = interface;
  IXMLFirstNameType_cbc = interface;
  IXMLFamilyNameType_cbc = interface;
  IXMLTitleType_cbc = interface;
  IXMLMiddleNameType_cbc = interface;
  IXMLNameSuffixType_cbc = interface;
  IXMLNationalityIDType_cbc = interface;
  IXMLFinancialAccountType_cac = interface;
  IXMLCurrencyCodeType_cbc = interface;
  IXMLPaymentNoteType_cbc = interface;
  IXMLBranchType_cac = interface;
  IXMLFinancialInstitutionType_cac = interface;
  IXMLSignatureType_cac = interface;
  IXMLSignatureType_cacList = interface;
  IXMLSupplierPartyType_cac = interface;
  IXMLCustomerPartyType_cac = interface;
  IXMLShipmentType_cac = interface;
  IXMLShipmentType_cacList = interface;
  IXMLHandlingCodeType_cbc = interface;
  IXMLHandlingInstructionsType_cbc = interface;
  IXMLGrossWeightMeasureType_cbc = interface;
  IXMLNetWeightMeasureType_cbc = interface;
  IXMLGrossVolumeMeasureType_cbc = interface;
  IXMLNetVolumeMeasureType_cbc = interface;
  IXMLTotalGoodsItemQuantityType_cbc = interface;
  IXMLTotalTransportHandlingUnitQuantityType_cbc = interface;
  IXMLInsuranceValueAmountType_cbc = interface;
  IXMLDeclaredCustomsValueAmountType_cbc = interface;
  IXMLDeclaredForCarriageValueAmountType_cbc = interface;
  IXMLDeclaredStatisticsValueAmountType_cbc = interface;
  IXMLFreeOnBoardValueAmountType_cbc = interface;
  IXMLSpecialInstructionsType_cbc = interface;
  IXMLSpecialInstructionsType_cbcList = interface;
  IXMLGoodsItemType_cac = interface;
  IXMLGoodsItemType_cacList = interface;
  IXMLHazardousRiskIndicatorType_cbc = interface;
  IXMLValueAmountType_cbc = interface;
  IXMLChargeableWeightMeasureType_cbc = interface;
  IXMLQuantityType_cbc = interface;
  IXMLRequiredCustomsIDType_cbc = interface;
  IXMLCustomsStatusCodeType_cbc = interface;
  IXMLCustomsTariffQuantityType_cbc = interface;
  IXMLCustomsImportClassifiedIndicatorType_cbc = interface;
  IXMLChargeableQuantityType_cbc = interface;
  IXMLReturnableQuantityType_cbc = interface;
  IXMLTraceIDType_cbc = interface;
  IXMLItemType_cac = interface;
  IXMLItemType_cacList = interface;
  IXMLKeywordType_cbc = interface;
  IXMLBrandNameType_cbc = interface;
  IXMLModelNameType_cbc = interface;
  IXMLItemIdentificationType_cac = interface;
  IXMLItemIdentificationType_cacList = interface;
  IXMLCommodityClassificationType_cac = interface;
  IXMLCommodityClassificationType_cacList = interface;
  IXMLItemClassificationCodeType_cbc = interface;
  IXMLItemInstanceType_cac = interface;
  IXMLItemInstanceType_cacList = interface;
  IXMLProductTraceIDType_cbc = interface;
  IXMLManufactureDateType_cbc = interface;
  IXMLManufactureTimeType_cbc = interface;
  IXMLBestBeforeDateType_cbc = interface;
  IXMLRegistrationIDType_cbc = interface;
  IXMLSerialIDType_cbc = interface;
  IXMLItemPropertyType_cac = interface;
  IXMLItemPropertyType_cacList = interface;
  IXMLNameCodeType_cbc = interface;
  IXMLTestMethodType_cbc = interface;
  IXMLValueQuantityType_cbc = interface;
  IXMLValueQualifierType_cbc = interface;
  IXMLValueQualifierType_cbcList = interface;
  IXMLImportanceCodeType_cbc = interface;
  IXMLListValueType_cbc = interface;
  IXMLListValueType_cbcList = interface;
  IXMLItemPropertyGroupType_cac = interface;
  IXMLItemPropertyGroupType_cacList = interface;
  IXMLDimensionType_cac = interface;
  IXMLDimensionType_cacList = interface;
  IXMLAttributeIDType_cbc = interface;
  IXMLMeasureType_cbc = interface;
  IXMLMinimumMeasureType_cbc = interface;
  IXMLMaximumMeasureType_cbc = interface;
  IXMLItemPropertyRangeType_cac = interface;
  IXMLMinimumValueType_cbc = interface;
  IXMLMaximumValueType_cbc = interface;
  IXMLLotIdentificationType_cac = interface;
  IXMLLotNumberIDType_cbc = interface;
  IXMLExpiryDateType_cbc = interface;
  IXMLAllowanceChargeType_cac = interface;
  IXMLAllowanceChargeType_cacList = interface;
  IXMLChargeIndicatorType_cbc = interface;
  IXMLAllowanceChargeReasonType_cbc = interface;
  IXMLMultiplierFactorNumericType_cbc = interface;
  IXMLSequenceNumericType_cbc = interface;
  IXMLAmountType_cbc = interface;
  IXMLBaseAmountType_cbc = interface;
  IXMLPerUnitAmountType_cbc = interface;
  IXMLInvoiceLineType_cac = interface;
  IXMLInvoiceLineType_cacList = interface;
  IXMLInvoicedQuantityType_cbc = interface;
  IXMLLineExtensionAmountType_cbc = interface;
  IXMLOrderLineReferenceType_cac = interface;
  IXMLOrderLineReferenceType_cacList = interface;
  IXMLLineIDType_cbc = interface;
  IXMLSalesOrderLineIDType_cbc = interface;
  IXMLLineStatusCodeType_cbc = interface;
  IXMLLineReferenceType_cac = interface;
  IXMLLineReferenceType_cacList = interface;
  IXMLDeliveryType_cac = interface;
  IXMLDeliveryType_cacList = interface;
  IXMLActualDeliveryDateType_cbc = interface;
  IXMLActualDeliveryTimeType_cbc = interface;
  IXMLLatestDeliveryDateType_cbc = interface;
  IXMLLatestDeliveryTimeType_cbc = interface;
  IXMLTrackingIDType_cbc = interface;
  IXMLDespatchType_cac = interface;
  IXMLActualDespatchDateType_cbc = interface;
  IXMLActualDespatchTimeType_cbc = interface;
  IXMLInstructionsType_cbc = interface;
  IXMLInstructionsType_cbcList = interface;
  IXMLDeliveryTermsType_cac = interface;
  IXMLDeliveryTermsType_cacList = interface;
  IXMLSpecialTermsType_cbc = interface;
  IXMLTaxTotalType_cac = interface;
  IXMLTaxTotalType_cacList = interface;
  IXMLTaxAmountType_cbc = interface;
  IXMLTaxSubtotalType_cac = interface;
  IXMLTaxSubtotalType_cacList = interface;
  IXMLTaxableAmountType_cbc = interface;
  IXMLCalculationSequenceNumericType_cbc = interface;
  IXMLTransactionCurrencyTaxAmountType_cbc = interface;
  IXMLPercentType_cbc = interface;
  IXMLBaseUnitMeasureType_cbc = interface;
  IXMLTaxCategoryType_cac = interface;
  IXMLTaxExemptionReasonCodeType_cbc = interface;
  IXMLTaxExemptionReasonType_cbc = interface;
  IXMLPriceType_cac = interface;
  IXMLPriceAmountType_cbc = interface;
  IXMLTemperatureType_cac = interface;
  IXMLTemperatureType_cacList = interface;
  IXMLShipmentStageType_cac = interface;
  IXMLShipmentStageType_cacList = interface;
  IXMLTransportModeCodeType_cbc = interface;
  IXMLTransportMeansTypeCodeType_cbc = interface;
  IXMLTransitDirectionCodeType_cbc = interface;
  IXMLTransportMeansType_cac = interface;
  IXMLTransportMeansType_cacList = interface;
  IXMLJourneyIDType_cbc = interface;
  IXMLRegistrationNationalityIDType_cbc = interface;
  IXMLRegistrationNationalityType_cbc = interface;
  IXMLRegistrationNationalityType_cbcList = interface;
  IXMLDirectionCodeType_cbc = interface;
  IXMLTradeServiceCodeType_cbc = interface;
  IXMLStowageType_cac = interface;
  IXMLLocationIDType_cbc = interface;
  IXMLLocationType_cbc = interface;
  IXMLLocationType_cbcList = interface;
  IXMLAirTransportType_cac = interface;
  IXMLAircraftIDType_cbc = interface;
  IXMLRoadTransportType_cac = interface;
  IXMLLicensePlateIDType_cbc = interface;
  IXMLRailTransportType_cac = interface;
  IXMLTrainIDType_cbc = interface;
  IXMLRailCarIDType_cbc = interface;
  IXMLMaritimeTransportType_cac = interface;
  IXMLVesselIDType_cbc = interface;
  IXMLVesselNameType_cbc = interface;
  IXMLRadioCallSignIDType_cbc = interface;
  IXMLShipsRequirementsType_cbc = interface;
  IXMLShipsRequirementsType_cbcList = interface;
  IXMLGrossTonnageMeasureType_cbc = interface;
  IXMLNetTonnageMeasureType_cbc = interface;
  IXMLTransportHandlingUnitType_cac = interface;
  IXMLTransportHandlingUnitType_cacList = interface;
  IXMLTransportHandlingUnitTypeCodeType_cbc = interface;
  IXMLTotalPackageQuantityType_cbc = interface;
  IXMLDamageRemarksType_cbc = interface;
  IXMLDamageRemarksType_cbcList = interface;
  IXMLPackageType_cac = interface;
  IXMLPackageType_cacList = interface;
  IXMLReturnableMaterialIndicatorType_cbc = interface;
  IXMLPackageLevelCodeType_cbc = interface;
  IXMLPackagingTypeCodeType_cbc = interface;
  IXMLPackingMaterialType_cbc = interface;
  IXMLPackingMaterialType_cbcList = interface;
  IXMLTransportEquipmentType_cac = interface;
  IXMLTransportEquipmentType_cacList = interface;
  IXMLTransportEquipmentTypeCodeType_cbc = interface;
  IXMLHazardousGoodsTransitType_cac = interface;
  IXMLHazardousGoodsTransitType_cacList = interface;
  IXMLTransportEmergencyCardCodeType_cbc = interface;
  IXMLPackingCriteriaCodeType_cbc = interface;
  IXMLHazardousRegulationCodeType_cbc = interface;
  IXMLInhalationToxicityZoneCodeType_cbc = interface;
  IXMLTransportAuthorizationCodeType_cbc = interface;
  IXMLCustomsDeclarationType_cac = interface;
  IXMLCustomsDeclarationType_cacList = interface;
  IXMLDespatchLineType_cac = interface;
  IXMLDespatchLineType_cacList = interface;
  IXMLDeliveredQuantityType_cbc = interface;
  IXMLOutstandingQuantityType_cbc = interface;
  IXMLOutstandingReasonType_cbc = interface;
  IXMLOutstandingReasonType_cbcList = interface;
  IXMLOversupplyQuantityType_cbc = interface;

{ IXMLDespatchAdviceType }

  IXMLDespatchAdviceType = interface(IXMLNode)
    ['{0D8101E3-AFA0-4A64-8540-E8AB88229F92}']
    { Property Accessors }
    function Get_UBLExtensions: IXMLUBLExtensionsType_ext;
    function Get_UBLVersionID: IXMLUBLVersionIDType_cbc;
    function Get_CustomizationID: IXMLCustomizationIDType_cbc;
    function Get_ProfileID: IXMLProfileIDType_cbc;
    function Get_ID: IXMLIDType_cbc;
    function Get_CopyIndicator: IXMLCopyIndicatorType_cbc;
    function Get_UUID: IXMLUUIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_IssueTime: IXMLIssueTimeType_cbc;
    function Get_DespatchAdviceTypeCode: IXMLDespatchAdviceTypeCodeType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
    function Get_OrderReference: IXMLOrderReferenceType_cacList;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Signature: IXMLSignatureType_cacList;
    function Get_DespatchSupplierParty: IXMLSupplierPartyType_cac;
    function Get_DeliveryCustomerParty: IXMLCustomerPartyType_cac;
    function Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
    function Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
    function Get_OriginatorCustomerParty: IXMLCustomerPartyType_cac;
    function Get_Shipment: IXMLShipmentType_cac;
    function Get_DespatchLine: IXMLDespatchLineType_cacList;
    { Methods & Properties }
    property UBLExtensions: IXMLUBLExtensionsType_ext read Get_UBLExtensions;
    property UBLVersionID: IXMLUBLVersionIDType_cbc read Get_UBLVersionID;
    property CustomizationID: IXMLCustomizationIDType_cbc read Get_CustomizationID;
    property ProfileID: IXMLProfileIDType_cbc read Get_ProfileID;
    property ID: IXMLIDType_cbc read Get_ID;
    property CopyIndicator: IXMLCopyIndicatorType_cbc read Get_CopyIndicator;
    property UUID: IXMLUUIDType_cbc read Get_UUID;
    property IssueDate: IXMLIssueDateType_cbc read Get_IssueDate;
    property IssueTime: IXMLIssueTimeType_cbc read Get_IssueTime;
    property DespatchAdviceTypeCode: IXMLDespatchAdviceTypeCodeType_cbc read Get_DespatchAdviceTypeCode;
    property Note: IXMLNoteType_cbcList read Get_Note;
    property LineCountNumeric: IXMLLineCountNumericType_cbc read Get_LineCountNumeric;
    property OrderReference: IXMLOrderReferenceType_cacList read Get_OrderReference;
    property AdditionalDocumentReference: IXMLDocumentReferenceType_cacList read Get_AdditionalDocumentReference;
    property Signature: IXMLSignatureType_cacList read Get_Signature;
    property DespatchSupplierParty: IXMLSupplierPartyType_cac read Get_DespatchSupplierParty;
    property DeliveryCustomerParty: IXMLCustomerPartyType_cac read Get_DeliveryCustomerParty;
    property BuyerCustomerParty: IXMLCustomerPartyType_cac read Get_BuyerCustomerParty;
    property SellerSupplierParty: IXMLSupplierPartyType_cac read Get_SellerSupplierParty;
    property OriginatorCustomerParty: IXMLCustomerPartyType_cac read Get_OriginatorCustomerParty;
    property Shipment: IXMLShipmentType_cac read Get_Shipment;
    property DespatchLine: IXMLDespatchLineType_cacList read Get_DespatchLine;
  end;

{ IXMLUBLExtensionsType_ext }

  IXMLUBLExtensionsType_ext = interface(IXMLNodeCollection)
    ['{01A8E5EA-C0C6-4E4D-995B-2C25570D76EF}']
    { Property Accessors }
    function Get_UBLExtension(Index: Integer): IXMLUBLExtensionType_ext;
    { Methods & Properties }
    function Add: IXMLUBLExtensionType_ext;
    function Insert(const Index: Integer): IXMLUBLExtensionType_ext;
    property UBLExtension[Index: Integer]: IXMLUBLExtensionType_ext read Get_UBLExtension; default;
  end;

{ IXMLUBLExtensionType_ext }

  IXMLUBLExtensionType_ext = interface(IXMLNode)
    ['{6723A56A-E1A4-4701-B716-DA433B857876}']
    { Property Accessors }
    function Get_ExtensionContent: IXMLExtensionContentType;
    { Methods & Properties }
    property ExtensionContent: IXMLExtensionContentType read Get_ExtensionContent;
  end;

{ IXMLExtensionContentType }

  IXMLExtensionContentType = interface(IXMLNode)
    ['{5762D310-9BB2-4D5A-9DB0-110C21ABD7FF}']
  end;

{ IXMLUBLVersionIDType_cbc }

  IXMLUBLVersionIDType_cbc = interface(IXMLNode)
    ['{8448226A-EB8A-4BC1-B610-8F40BFBD99C5}']
  end;

{ IXMLCustomizationIDType_cbc }

  IXMLCustomizationIDType_cbc = interface(IXMLNode)
    ['{F0651EC6-DB2D-4DDE-8243-335B1CAA9A18}']
  end;

{ IXMLProfileIDType_cbc }

  IXMLProfileIDType_cbc = interface(IXMLNode)
    ['{175E99C3-3ACA-46CF-9AA5-A2E6AADE6275}']
  end;

{ IXMLIDType_cbc }

  IXMLIDType_cbc = interface(IXMLNode)
    ['{A840017F-C065-4B98-84F3-3D57D5BFB003}']
  end;

{ IXMLCopyIndicatorType_cbc }

  IXMLCopyIndicatorType_cbc = interface(IXMLNode)
    ['{C40735F9-DE26-41A0-A539-96A5815A5776}']
  end;

{ IXMLUUIDType_cbc }

  IXMLUUIDType_cbc = interface(IXMLNode)
    ['{874C9C0C-BF9F-4187-A85B-8A70E9CBD9F0}']
  end;

{ IXMLIssueDateType_cbc }

  IXMLIssueDateType_cbc = interface(IXMLNode)
    ['{A48654C3-956C-4E34-9899-F2BC33BD70F3}']
  end;

{ IXMLIssueTimeType_cbc }

  IXMLIssueTimeType_cbc = interface(IXMLNode)
    ['{6D9E2875-A6A3-4FA0-B63B-5FFDEC9E0FD4}']
  end;

{ IXMLDespatchAdviceTypeCodeType_cbc }

  IXMLDespatchAdviceTypeCodeType_cbc = interface(IXMLNode)
    ['{10FEA861-BD9F-4561-9B21-66DD2827B889}']
  end;

{ IXMLNoteType_cbc }

  IXMLNoteType_cbc = interface(IXMLNode)
    ['{3C3B6C8D-4FAA-4F24-97B1-4A9AA3689D95}']
  end;

{ IXMLNoteType_cbcList }

  IXMLNoteType_cbcList = interface(IXMLNodeCollection)
    ['{7DB2ADAC-FFC4-41B7-8C80-5720071FE268}']
    { Methods & Properties }
    function Add: IXMLNoteType_cbc;
    function Insert(const Index: Integer): IXMLNoteType_cbc;

    function Get_Item(Index: Integer): IXMLNoteType_cbc;
    property Items[Index: Integer]: IXMLNoteType_cbc read Get_Item; default;
  end;

{ IXMLLineCountNumericType_cbc }

  IXMLLineCountNumericType_cbc = interface(IXMLNode)
    ['{75B4C294-EEF7-44A5-9960-39027E33C84C}']
  end;

{ IXMLOrderReferenceType_cac }

  IXMLOrderReferenceType_cac = interface(IXMLNode)
    ['{12BA4C5C-2052-4205-9AD8-545E67386FCA}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_SalesOrderID: IXMLSalesOrderIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_OrderTypeCode: IXMLOrderTypeCodeType_cbc;
    function Get_DocumentReference: IXMLDocumentReferenceType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property SalesOrderID: IXMLSalesOrderIDType_cbc read Get_SalesOrderID;
    property IssueDate: IXMLIssueDateType_cbc read Get_IssueDate;
    property OrderTypeCode: IXMLOrderTypeCodeType_cbc read Get_OrderTypeCode;
    property DocumentReference: IXMLDocumentReferenceType_cac read Get_DocumentReference;
  end;

{ IXMLOrderReferenceType_cacList }

  IXMLOrderReferenceType_cacList = interface(IXMLNodeCollection)
    ['{41C1383B-44C7-472D-9586-358CD816FB36}']
    { Methods & Properties }
    function Add: IXMLOrderReferenceType_cac;
    function Insert(const Index: Integer): IXMLOrderReferenceType_cac;

    function Get_Item(Index: Integer): IXMLOrderReferenceType_cac;
    property Items[Index: Integer]: IXMLOrderReferenceType_cac read Get_Item; default;
  end;

{ IXMLSalesOrderIDType_cbc }

  IXMLSalesOrderIDType_cbc = interface(IXMLNode)
    ['{A2ECDA4A-B452-4E14-85CD-ACCA0B501360}']
  end;

{ IXMLOrderTypeCodeType_cbc }

  IXMLOrderTypeCodeType_cbc = interface(IXMLNode)
    ['{47CE13B9-B07B-4D94-B90C-7573E808664F}']
  end;

{ IXMLDocumentReferenceType_cac }

  IXMLDocumentReferenceType_cac = interface(IXMLNode)
    ['{B3EC064E-F51A-4784-ABD6-317D78F033F2}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_DocumentTypeCode: IXMLDocumentTypeCodeType_cbc;
    function Get_DocumentType: IXMLDocumentTypeType_cbc;
    function Get_DocumentDescription: IXMLDocumentDescriptionType_cbcList;
    function Get_Attachment: IXMLAttachmentType_cac;
    function Get_ValidityPeriod: IXMLPeriodType_cac;
    function Get_IssuerParty: IXMLPartyType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property IssueDate: IXMLIssueDateType_cbc read Get_IssueDate;
    property DocumentTypeCode: IXMLDocumentTypeCodeType_cbc read Get_DocumentTypeCode;
    property DocumentType: IXMLDocumentTypeType_cbc read Get_DocumentType;
    property DocumentDescription: IXMLDocumentDescriptionType_cbcList read Get_DocumentDescription;
    property Attachment: IXMLAttachmentType_cac read Get_Attachment;
    property ValidityPeriod: IXMLPeriodType_cac read Get_ValidityPeriod;
    property IssuerParty: IXMLPartyType_cac read Get_IssuerParty;
  end;

{ IXMLDocumentReferenceType_cacList }

  IXMLDocumentReferenceType_cacList = interface(IXMLNodeCollection)
    ['{541F16AC-4F45-4B87-A885-83FFDAB5FEAC}']
    { Methods & Properties }
    function Add: IXMLDocumentReferenceType_cac;
    function Insert(const Index: Integer): IXMLDocumentReferenceType_cac;

    function Get_Item(Index: Integer): IXMLDocumentReferenceType_cac;
    property Items[Index: Integer]: IXMLDocumentReferenceType_cac read Get_Item; default;
  end;

{ IXMLDocumentTypeCodeType_cbc }

  IXMLDocumentTypeCodeType_cbc = interface(IXMLNode)
    ['{0FE2F6DD-56F8-48F6-8FEB-19ED7282B98B}']
  end;

{ IXMLDocumentTypeType_cbc }

  IXMLDocumentTypeType_cbc = interface(IXMLNode)
    ['{C464FBE7-822C-479A-9EF6-53CCF6750AB8}']
  end;

{ IXMLDocumentDescriptionType_cbc }

  IXMLDocumentDescriptionType_cbc = interface(IXMLNode)
    ['{7E51CBD0-FA76-43D4-A82E-F1AD3F3DBC3E}']
  end;

{ IXMLDocumentDescriptionType_cbcList }

  IXMLDocumentDescriptionType_cbcList = interface(IXMLNodeCollection)
    ['{16E43A13-6856-46A5-BB8E-1421F69A0B3D}']
    { Methods & Properties }
    function Add: IXMLDocumentDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDocumentDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDocumentDescriptionType_cbc;
    property Items[Index: Integer]: IXMLDocumentDescriptionType_cbc read Get_Item; default;
  end;

{ IXMLAttachmentType_cac }

  IXMLAttachmentType_cac = interface(IXMLNode)
    ['{4B6CAC77-4FA0-4532-9D06-6EDA907D7F71}']
    { Property Accessors }
    function Get_EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc;
    function Get_ExternalReference: IXMLExternalReferenceType_cac;
    { Methods & Properties }
    property EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc read Get_EmbeddedDocumentBinaryObject;
    property ExternalReference: IXMLExternalReferenceType_cac read Get_ExternalReference;
  end;

{ IXMLEmbeddedDocumentBinaryObjectType_cbc }

  IXMLEmbeddedDocumentBinaryObjectType_cbc = interface(IXMLNode)
    ['{8B710F50-EF70-4D3D-87DB-699BC47D4DCE}']
  end;

{ IXMLExternalReferenceType_cac }

  IXMLExternalReferenceType_cac = interface(IXMLNode)
    ['{D9787A92-9D45-4A6D-8F7A-0F754B98CC2F}']
    { Property Accessors }
    function Get_URI: IXMLURIType_cbc;
    { Methods & Properties }
    property URI: IXMLURIType_cbc read Get_URI;
  end;

{ IXMLURIType_cbc }

  IXMLURIType_cbc = interface(IXMLNode)
    ['{470BB1C8-C03C-435A-9DE9-8832C79B7AB9}']
  end;

{ IXMLPeriodType_cac }

  IXMLPeriodType_cac = interface(IXMLNode)
    ['{98BF6B70-08F0-4499-B684-AE4305188768}']
    { Property Accessors }
    function Get_StartDate: IXMLStartDateType_cbc;
    function Get_StartTime: IXMLStartTimeType_cbc;
    function Get_EndDate: IXMLEndDateType_cbc;
    function Get_EndTime: IXMLEndTimeType_cbc;
    function Get_DurationMeasure: IXMLDurationMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbc;
    { Methods & Properties }
    property StartDate: IXMLStartDateType_cbc read Get_StartDate;
    property StartTime: IXMLStartTimeType_cbc read Get_StartTime;
    property EndDate: IXMLEndDateType_cbc read Get_EndDate;
    property EndTime: IXMLEndTimeType_cbc read Get_EndTime;
    property DurationMeasure: IXMLDurationMeasureType_cbc read Get_DurationMeasure;
    property Description: IXMLDescriptionType_cbc read Get_Description;
  end;

{ IXMLStartDateType_cbc }

  IXMLStartDateType_cbc = interface(IXMLNode)
    ['{B4B60114-344B-4791-9D0B-B37C8C91B0DC}']
  end;

{ IXMLStartTimeType_cbc }

  IXMLStartTimeType_cbc = interface(IXMLNode)
    ['{23A2F4C1-277F-4A82-8CA5-7AC5B5AA1788}']
  end;

{ IXMLEndDateType_cbc }

  IXMLEndDateType_cbc = interface(IXMLNode)
    ['{ADA70A9D-9671-448B-8CE3-B16707FEBF0A}']
  end;

{ IXMLEndTimeType_cbc }

  IXMLEndTimeType_cbc = interface(IXMLNode)
    ['{549DA030-B389-4965-ABF0-5455CFBF4537}']
  end;

{ IXMLDurationMeasureType_cbc }

  IXMLDurationMeasureType_cbc = interface(IXMLNode)
    ['{6273106C-B997-43C4-A464-21929560C535}']
  end;

{ IXMLDescriptionType_cbc }

  IXMLDescriptionType_cbc = interface(IXMLNode)
    ['{D9EE32FA-AB87-4983-BB1B-F614CC441149}']
  end;

{ IXMLDescriptionType_cbcList }

  IXMLDescriptionType_cbcList = interface(IXMLNodeCollection)
    ['{8D79999D-CF3F-4D5B-8375-8164AC86215F}']
    { Methods & Properties }
    function Add: IXMLDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDescriptionType_cbc;
    property Items[Index: Integer]: IXMLDescriptionType_cbc read Get_Item; default;
  end;

{ IXMLPartyType_cac }

  IXMLPartyType_cac = interface(IXMLNode)
    ['{373DAB5B-FA9A-445A-80EF-E6B490D470D2}']
    { Property Accessors }
    function Get_WebsiteURI: IXMLWebsiteURIType_cbc;
    function Get_EndpointID: IXMLEndpointIDType_cbc;
    function Get_IndustryClassificationCode: IXMLIndustryClassificationCodeType_cbc;
    function Get_PartyIdentification: IXMLPartyIdentificationType_cacList;
    function Get_PartyName: IXMLPartyNameType_cac;
    function Get_PostalAddress: IXMLAddressType_cac;
    function Get_PhysicalLocation: IXMLLocationType_cac;
    function Get_PartyTaxScheme: IXMLPartyTaxSchemeType_cac;
    function Get_PartyLegalEntity: IXMLPartyLegalEntityType_cacList;
    function Get_Contact: IXMLContactType_cac;
    function Get_Person: IXMLPersonType_cac;
    function Get_AgentParty: IXMLPartyType_cac;
    { Methods & Properties }
    property WebsiteURI: IXMLWebsiteURIType_cbc read Get_WebsiteURI;
    property EndpointID: IXMLEndpointIDType_cbc read Get_EndpointID;
    property IndustryClassificationCode: IXMLIndustryClassificationCodeType_cbc read Get_IndustryClassificationCode;
    property PartyIdentification: IXMLPartyIdentificationType_cacList read Get_PartyIdentification;
    property PartyName: IXMLPartyNameType_cac read Get_PartyName;
    property PostalAddress: IXMLAddressType_cac read Get_PostalAddress;
    property PhysicalLocation: IXMLLocationType_cac read Get_PhysicalLocation;
    property PartyTaxScheme: IXMLPartyTaxSchemeType_cac read Get_PartyTaxScheme;
    property PartyLegalEntity: IXMLPartyLegalEntityType_cacList read Get_PartyLegalEntity;
    property Contact: IXMLContactType_cac read Get_Contact;
    property Person: IXMLPersonType_cac read Get_Person;
    property AgentParty: IXMLPartyType_cac read Get_AgentParty;
  end;

{ IXMLWebsiteURIType_cbc }

  IXMLWebsiteURIType_cbc = interface(IXMLNode)
    ['{1F0D436F-9D20-4AD6-AEBE-82C743A39BEB}']
  end;

{ IXMLEndpointIDType_cbc }

  IXMLEndpointIDType_cbc = interface(IXMLNode)
    ['{D373D9D7-C028-4FC4-9BAE-FDACDC56CCF9}']
  end;

{ IXMLIndustryClassificationCodeType_cbc }

  IXMLIndustryClassificationCodeType_cbc = interface(IXMLNode)
    ['{F9358159-3173-4723-B149-A60401693DD5}']
  end;

{ IXMLPartyIdentificationType_cac }

  IXMLPartyIdentificationType_cac = interface(IXMLNode)
    ['{AB034E6D-837E-466C-ADD9-42E399F78DC5}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
  end;

{ IXMLPartyIdentificationType_cacList }

  IXMLPartyIdentificationType_cacList = interface(IXMLNodeCollection)
    ['{A9ECD7E8-B2EC-4841-B4FB-52CF3BA4CC6D}']
    { Methods & Properties }
    function Add: IXMLPartyIdentificationType_cac;
    function Insert(const Index: Integer): IXMLPartyIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLPartyIdentificationType_cac;
    property Items[Index: Integer]: IXMLPartyIdentificationType_cac read Get_Item; default;
  end;

{ IXMLPartyNameType_cac }

  IXMLPartyNameType_cac = interface(IXMLNode)
    ['{9E65D66F-61AE-42EC-A7A2-605DED124F28}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLNameType_cbc }

  IXMLNameType_cbc = interface(IXMLNode)
    ['{3CF1B103-E490-462B-AF2A-3F955B2BFCEE}']
  end;

{ IXMLAddressType_cac }

  IXMLAddressType_cac = interface(IXMLNode)
    ['{BDABE0A5-3954-4BF2-9C89-016FFEDBFA30}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Postbox: IXMLPostboxType_cbc;
    function Get_Room: IXMLRoomType_cbc;
    function Get_StreetName: IXMLStreetNameType_cbc;
    function Get_BlockName: IXMLBlockNameType_cbc;
    function Get_BuildingName: IXMLBuildingNameType_cbc;
    function Get_BuildingNumber: IXMLBuildingNumberType_cbc;
    function Get_CitySubdivisionName: IXMLCitySubdivisionNameType_cbc;
    function Get_CityName: IXMLCityNameType_cbc;
    function Get_PostalZone: IXMLPostalZoneType_cbc;
    function Get_Region: IXMLRegionType_cbc;
    function Get_District: IXMLDistrictType_cbc;
    function Get_Country: IXMLCountryType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Postbox: IXMLPostboxType_cbc read Get_Postbox;
    property Room: IXMLRoomType_cbc read Get_Room;
    property StreetName: IXMLStreetNameType_cbc read Get_StreetName;
    property BlockName: IXMLBlockNameType_cbc read Get_BlockName;
    property BuildingName: IXMLBuildingNameType_cbc read Get_BuildingName;
    property BuildingNumber: IXMLBuildingNumberType_cbc read Get_BuildingNumber;
    property CitySubdivisionName: IXMLCitySubdivisionNameType_cbc read Get_CitySubdivisionName;
    property CityName: IXMLCityNameType_cbc read Get_CityName;
    property PostalZone: IXMLPostalZoneType_cbc read Get_PostalZone;
    property Region: IXMLRegionType_cbc read Get_Region;
    property District: IXMLDistrictType_cbc read Get_District;
    property Country: IXMLCountryType_cac read Get_Country;
  end;

{ IXMLAddressType_cacList }

  IXMLAddressType_cacList = interface(IXMLNodeCollection)
    ['{F3D31514-2EAC-414B-BEA2-9F458A45F3D1}']
    { Methods & Properties }
    function Add: IXMLAddressType_cac;
    function Insert(const Index: Integer): IXMLAddressType_cac;

    function Get_Item(Index: Integer): IXMLAddressType_cac;
    property Items[Index: Integer]: IXMLAddressType_cac read Get_Item; default;
  end;

{ IXMLPostboxType_cbc }

  IXMLPostboxType_cbc = interface(IXMLNode)
    ['{5C6F61A9-1D1E-4BC8-BE83-12DB5439E5BA}']
  end;

{ IXMLRoomType_cbc }

  IXMLRoomType_cbc = interface(IXMLNode)
    ['{2FEF1F70-8A82-4A12-B67C-C381DEAC867B}']
  end;

{ IXMLStreetNameType_cbc }

  IXMLStreetNameType_cbc = interface(IXMLNode)
    ['{5C7F9524-3D99-469B-AF15-0FF8AA1295A6}']
  end;

{ IXMLBlockNameType_cbc }

  IXMLBlockNameType_cbc = interface(IXMLNode)
    ['{DE0104ED-FA39-4C25-B021-2AB468E51CB8}']
  end;

{ IXMLBuildingNameType_cbc }

  IXMLBuildingNameType_cbc = interface(IXMLNode)
    ['{FB033E99-C52C-487A-B90B-BC88732D4350}']
  end;

{ IXMLBuildingNumberType_cbc }

  IXMLBuildingNumberType_cbc = interface(IXMLNode)
    ['{6FDAA302-E5FA-47FD-BE2B-024DC3DB0BD3}']
  end;

{ IXMLCitySubdivisionNameType_cbc }

  IXMLCitySubdivisionNameType_cbc = interface(IXMLNode)
    ['{7CDC52E4-2663-4A4F-BB58-1A78E0499C31}']
  end;

{ IXMLCityNameType_cbc }

  IXMLCityNameType_cbc = interface(IXMLNode)
    ['{F0CE398E-18E3-47D2-AD1A-3E73294B4BF9}']
  end;

{ IXMLPostalZoneType_cbc }

  IXMLPostalZoneType_cbc = interface(IXMLNode)
    ['{FDE8FA8B-6B4A-4525-A8C6-73213E5A0CB4}']
  end;

{ IXMLRegionType_cbc }

  IXMLRegionType_cbc = interface(IXMLNode)
    ['{FAE01AFC-ECDC-4B2F-96D4-61E848427ABF}']
  end;

{ IXMLDistrictType_cbc }

  IXMLDistrictType_cbc = interface(IXMLNode)
    ['{4B66D996-CBDB-4ABA-96EC-E50B2DBB8578}']
  end;

{ IXMLCountryType_cac }

  IXMLCountryType_cac = interface(IXMLNode)
    ['{B028F97E-2C22-454A-9EC2-EC647610C622}']
    { Property Accessors }
    function Get_IdentificationCode: IXMLIdentificationCodeType_cbc;
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property IdentificationCode: IXMLIdentificationCodeType_cbc read Get_IdentificationCode;
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLIdentificationCodeType_cbc }

  IXMLIdentificationCodeType_cbc = interface(IXMLNode)
    ['{B8ED9116-9600-460D-B73A-7E6F34596297}']
  end;

{ IXMLLocationType_cac }

  IXMLLocationType_cac = interface(IXMLNode)
    ['{451AD06C-32F0-4530-884F-7336E85346E4}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Address: IXMLAddressType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Address: IXMLAddressType_cac read Get_Address;
  end;

{ IXMLPartyTaxSchemeType_cac }

  IXMLPartyTaxSchemeType_cac = interface(IXMLNode)
    ['{AC9A8513-1032-4701-8DBE-D495BDAF2E1C}']
    { Property Accessors }
    function Get_RegistrationName: IXMLRegistrationNameType_cbc;
    function Get_CompanyID: IXMLCompanyIDType_cbc;
    function Get_TaxScheme: IXMLTaxSchemeType_cac;
    { Methods & Properties }
    property RegistrationName: IXMLRegistrationNameType_cbc read Get_RegistrationName;
    property CompanyID: IXMLCompanyIDType_cbc read Get_CompanyID;
    property TaxScheme: IXMLTaxSchemeType_cac read Get_TaxScheme;
  end;

{ IXMLRegistrationNameType_cbc }

  IXMLRegistrationNameType_cbc = interface(IXMLNode)
    ['{F77836B9-DCBC-486A-A0A9-F286E574BFF4}']
  end;

{ IXMLCompanyIDType_cbc }

  IXMLCompanyIDType_cbc = interface(IXMLNode)
    ['{5FF505C4-C827-4CB0-9F0F-413AC44666D9}']
  end;

{ IXMLTaxSchemeType_cac }

  IXMLTaxSchemeType_cac = interface(IXMLNode)
    ['{973333E4-69D0-4784-812B-BF7B1523DF21}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_TaxTypeCode: IXMLTaxTypeCodeType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Name: IXMLNameType_cbc read Get_Name;
    property TaxTypeCode: IXMLTaxTypeCodeType_cbc read Get_TaxTypeCode;
  end;

{ IXMLTaxTypeCodeType_cbc }

  IXMLTaxTypeCodeType_cbc = interface(IXMLNode)
    ['{074528C0-8BF8-4678-AD64-61618D66C037}']
  end;

{ IXMLPartyLegalEntityType_cac }

  IXMLPartyLegalEntityType_cac = interface(IXMLNode)
    ['{E44D39B6-A11C-47CB-8431-E1BF4E0A10E6}']
    { Property Accessors }
    function Get_RegistrationName: IXMLRegistrationNameType_cbc;
    function Get_CompanyID: IXMLCompanyIDType_cbc;
    function Get_RegistrationDate: IXMLRegistrationDateType_cbc;
    function Get_SoleProprietorshipIndicator: IXMLSoleProprietorshipIndicatorType_cbc;
    function Get_CorporateStockAmount: IXMLCorporateStockAmountType_cbc;
    function Get_FullyPaidSharesIndicator: IXMLFullyPaidSharesIndicatorType_cbc;
    function Get_CorporateRegistrationScheme: IXMLCorporateRegistrationSchemeType_cac;
    function Get_HeadOfficeParty: IXMLPartyType_cac;
    { Methods & Properties }
    property RegistrationName: IXMLRegistrationNameType_cbc read Get_RegistrationName;
    property CompanyID: IXMLCompanyIDType_cbc read Get_CompanyID;
    property RegistrationDate: IXMLRegistrationDateType_cbc read Get_RegistrationDate;
    property SoleProprietorshipIndicator: IXMLSoleProprietorshipIndicatorType_cbc read Get_SoleProprietorshipIndicator;
    property CorporateStockAmount: IXMLCorporateStockAmountType_cbc read Get_CorporateStockAmount;
    property FullyPaidSharesIndicator: IXMLFullyPaidSharesIndicatorType_cbc read Get_FullyPaidSharesIndicator;
    property CorporateRegistrationScheme: IXMLCorporateRegistrationSchemeType_cac read Get_CorporateRegistrationScheme;
    property HeadOfficeParty: IXMLPartyType_cac read Get_HeadOfficeParty;
  end;

{ IXMLPartyLegalEntityType_cacList }

  IXMLPartyLegalEntityType_cacList = interface(IXMLNodeCollection)
    ['{F555A68C-16CD-4F38-97D6-ED4DEE3AD4C7}']
    { Methods & Properties }
    function Add: IXMLPartyLegalEntityType_cac;
    function Insert(const Index: Integer): IXMLPartyLegalEntityType_cac;

    function Get_Item(Index: Integer): IXMLPartyLegalEntityType_cac;
    property Items[Index: Integer]: IXMLPartyLegalEntityType_cac read Get_Item; default;
  end;

{ IXMLRegistrationDateType_cbc }

  IXMLRegistrationDateType_cbc = interface(IXMLNode)
    ['{E60D4D51-D150-40A8-B538-94DD459C65EC}']
  end;

{ IXMLSoleProprietorshipIndicatorType_cbc }

  IXMLSoleProprietorshipIndicatorType_cbc = interface(IXMLNode)
    ['{0897219D-43F9-4423-A6CA-2680F8337A60}']
  end;

{ IXMLCorporateStockAmountType_cbc }

  IXMLCorporateStockAmountType_cbc = interface(IXMLNode)
    ['{FD85960B-DD62-4E5B-85B6-071CC20FEC0D}']
  end;

{ IXMLFullyPaidSharesIndicatorType_cbc }

  IXMLFullyPaidSharesIndicatorType_cbc = interface(IXMLNode)
    ['{A6B6BED1-B5E9-4D50-925D-D19C46EC405F}']
  end;

{ IXMLCorporateRegistrationSchemeType_cac }

  IXMLCorporateRegistrationSchemeType_cac = interface(IXMLNode)
    ['{95A3BD34-ECAD-4CC9-83E7-A68AA274A6E4}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_CorporateRegistrationTypeCode: IXMLCorporateRegistrationTypeCodeType_cbc;
    function Get_JurisdictionRegionAddress: IXMLAddressType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Name: IXMLNameType_cbc read Get_Name;
    property CorporateRegistrationTypeCode: IXMLCorporateRegistrationTypeCodeType_cbc read Get_CorporateRegistrationTypeCode;
    property JurisdictionRegionAddress: IXMLAddressType_cacList read Get_JurisdictionRegionAddress;
  end;

{ IXMLCorporateRegistrationTypeCodeType_cbc }

  IXMLCorporateRegistrationTypeCodeType_cbc = interface(IXMLNode)
    ['{46A93CDA-93CA-4A80-A457-A151DD6CC136}']
  end;

{ IXMLContactType_cac }

  IXMLContactType_cac = interface(IXMLNode)
    ['{FFF9F198-673E-4748-AC2E-5A9ECC22510D}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_Telephone: IXMLTelephoneType_cbc;
    function Get_Telefax: IXMLTelefaxType_cbc;
    function Get_ElectronicMail: IXMLElectronicMailType_cbc;
    function Get_Note: IXMLNoteType_cbc;
    function Get_OtherCommunication: IXMLCommunicationType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Name: IXMLNameType_cbc read Get_Name;
    property Telephone: IXMLTelephoneType_cbc read Get_Telephone;
    property Telefax: IXMLTelefaxType_cbc read Get_Telefax;
    property ElectronicMail: IXMLElectronicMailType_cbc read Get_ElectronicMail;
    property Note: IXMLNoteType_cbc read Get_Note;
    property OtherCommunication: IXMLCommunicationType_cacList read Get_OtherCommunication;
  end;

{ IXMLTelephoneType_cbc }

  IXMLTelephoneType_cbc = interface(IXMLNode)
    ['{58C5264B-170E-4E2E-9163-BEB94ED2E712}']
  end;

{ IXMLTelefaxType_cbc }

  IXMLTelefaxType_cbc = interface(IXMLNode)
    ['{028DF69B-1A47-47C6-AAAF-DA0FD4241BB8}']
  end;

{ IXMLElectronicMailType_cbc }

  IXMLElectronicMailType_cbc = interface(IXMLNode)
    ['{0370425D-C49E-4410-99D6-FBFF2C9DB29C}']
  end;

{ IXMLCommunicationType_cac }

  IXMLCommunicationType_cac = interface(IXMLNode)
    ['{6325DC90-187D-4FDD-93B7-9AEC66C0E7DE}']
    { Property Accessors }
    function Get_ChannelCode: IXMLChannelCodeType_cbc;
    function Get_Channel: IXMLChannelType_cbc;
    function Get_Value: IXMLValueType_cbc;
    { Methods & Properties }
    property ChannelCode: IXMLChannelCodeType_cbc read Get_ChannelCode;
    property Channel: IXMLChannelType_cbc read Get_Channel;
    property Value: IXMLValueType_cbc read Get_Value;
  end;

{ IXMLCommunicationType_cacList }

  IXMLCommunicationType_cacList = interface(IXMLNodeCollection)
    ['{E4D3EBE8-3A8C-4475-8D68-2B5C504F4F25}']
    { Methods & Properties }
    function Add: IXMLCommunicationType_cac;
    function Insert(const Index: Integer): IXMLCommunicationType_cac;

    function Get_Item(Index: Integer): IXMLCommunicationType_cac;
    property Items[Index: Integer]: IXMLCommunicationType_cac read Get_Item; default;
  end;

{ IXMLChannelCodeType_cbc }

  IXMLChannelCodeType_cbc = interface(IXMLNode)
    ['{E20054CB-9315-4B67-82FB-8BE264B83D1B}']
  end;

{ IXMLChannelType_cbc }

  IXMLChannelType_cbc = interface(IXMLNode)
    ['{967AF3E0-1143-4934-8F4C-0B3775E3E552}']
  end;

{ IXMLValueType_cbc }

  IXMLValueType_cbc = interface(IXMLNode)
    ['{B64A850E-C80C-4C74-BB09-647CDC495B4A}']
  end;

{ IXMLPersonType_cac }

  IXMLPersonType_cac = interface(IXMLNode)
    ['{5D4798BA-9447-43B4-BDE1-E2048A9AB384}']
    { Property Accessors }
    function Get_FirstName: IXMLFirstNameType_cbc;
    function Get_FamilyName: IXMLFamilyNameType_cbc;
    function Get_Title: IXMLTitleType_cbc;
    function Get_MiddleName: IXMLMiddleNameType_cbc;
    function Get_NameSuffix: IXMLNameSuffixType_cbc;
    function Get_NationalityID: IXMLNationalityIDType_cbc;
    function Get_FinancialAccount: IXMLFinancialAccountType_cac;
    function Get_IdentityDocumentReference: IXMLDocumentReferenceType_cac;
    { Methods & Properties }
    property FirstName: IXMLFirstNameType_cbc read Get_FirstName;
    property FamilyName: IXMLFamilyNameType_cbc read Get_FamilyName;
    property Title: IXMLTitleType_cbc read Get_Title;
    property MiddleName: IXMLMiddleNameType_cbc read Get_MiddleName;
    property NameSuffix: IXMLNameSuffixType_cbc read Get_NameSuffix;
    property NationalityID: IXMLNationalityIDType_cbc read Get_NationalityID;
    property FinancialAccount: IXMLFinancialAccountType_cac read Get_FinancialAccount;
    property IdentityDocumentReference: IXMLDocumentReferenceType_cac read Get_IdentityDocumentReference;
  end;

{ IXMLPersonType_cacList }

  IXMLPersonType_cacList = interface(IXMLNodeCollection)
    ['{F35EB2F1-DCEB-4A19-8961-96B7914BD291}']
    { Methods & Properties }
    function Add: IXMLPersonType_cac;
    function Insert(const Index: Integer): IXMLPersonType_cac;

    function Get_Item(Index: Integer): IXMLPersonType_cac;
    property Items[Index: Integer]: IXMLPersonType_cac read Get_Item; default;
  end;

{ IXMLFirstNameType_cbc }

  IXMLFirstNameType_cbc = interface(IXMLNode)
    ['{3D776230-8984-42A3-AE8A-013A7463FC9B}']
  end;

{ IXMLFamilyNameType_cbc }

  IXMLFamilyNameType_cbc = interface(IXMLNode)
    ['{7E635922-F44C-4FBF-866C-AFBADCDAC8E1}']
  end;

{ IXMLTitleType_cbc }

  IXMLTitleType_cbc = interface(IXMLNode)
    ['{57D0DE42-CFD1-4FAE-8A09-CE8B422CB3FF}']
  end;

{ IXMLMiddleNameType_cbc }

  IXMLMiddleNameType_cbc = interface(IXMLNode)
    ['{42E14C41-AD63-4290-A065-72A24E3FFE5E}']
  end;

{ IXMLNameSuffixType_cbc }

  IXMLNameSuffixType_cbc = interface(IXMLNode)
    ['{CA53D2AB-4C4D-4008-8E2E-4045A968065A}']
  end;

{ IXMLNationalityIDType_cbc }

  IXMLNationalityIDType_cbc = interface(IXMLNode)
    ['{E6A77FE3-514B-4515-84E9-B227D503246C}']
  end;

{ IXMLFinancialAccountType_cac }

  IXMLFinancialAccountType_cac = interface(IXMLNode)
    ['{07472531-F627-47EC-BA94-90194DA29174}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_CurrencyCode: IXMLCurrencyCodeType_cbc;
    function Get_PaymentNote: IXMLPaymentNoteType_cbc;
    function Get_FinancialInstitutionBranch: IXMLBranchType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property CurrencyCode: IXMLCurrencyCodeType_cbc read Get_CurrencyCode;
    property PaymentNote: IXMLPaymentNoteType_cbc read Get_PaymentNote;
    property FinancialInstitutionBranch: IXMLBranchType_cac read Get_FinancialInstitutionBranch;
  end;

{ IXMLCurrencyCodeType_cbc }

  IXMLCurrencyCodeType_cbc = interface(IXMLNode)
    ['{4002F6F3-692F-4AA4-8FAD-3021F66E2183}']
  end;

{ IXMLPaymentNoteType_cbc }

  IXMLPaymentNoteType_cbc = interface(IXMLNode)
    ['{F62D092D-2AC3-437D-A471-EE9B88CB7485}']
  end;

{ IXMLBranchType_cac }

  IXMLBranchType_cac = interface(IXMLNode)
    ['{93794124-1FB0-416F-AAF7-E691D7761079}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    function Get_FinancialInstitution: IXMLFinancialInstitutionType_cac;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
    property FinancialInstitution: IXMLFinancialInstitutionType_cac read Get_FinancialInstitution;
  end;

{ IXMLFinancialInstitutionType_cac }

  IXMLFinancialInstitutionType_cac = interface(IXMLNode)
    ['{C9BC6FCF-9356-44EB-B005-F72C15468DE8}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLSignatureType_cac }

  IXMLSignatureType_cac = interface(IXMLNode)
    ['{B17C4960-9F9E-4D7F-B463-5ED84E7B4F1C}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_SignatoryParty: IXMLPartyType_cac;
    function Get_DigitalSignatureAttachment: IXMLAttachmentType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property SignatoryParty: IXMLPartyType_cac read Get_SignatoryParty;
    property DigitalSignatureAttachment: IXMLAttachmentType_cac read Get_DigitalSignatureAttachment;
  end;

{ IXMLSignatureType_cacList }

  IXMLSignatureType_cacList = interface(IXMLNodeCollection)
    ['{A554617C-0660-4E5C-B25D-32FA1AD034A1}']
    { Methods & Properties }
    function Add: IXMLSignatureType_cac;
    function Insert(const Index: Integer): IXMLSignatureType_cac;

    function Get_Item(Index: Integer): IXMLSignatureType_cac;
    property Items[Index: Integer]: IXMLSignatureType_cac read Get_Item; default;
  end;

{ IXMLSupplierPartyType_cac }

  IXMLSupplierPartyType_cac = interface(IXMLNode)
    ['{05F77AA2-1953-46D4-A689-5B13CEFB2B44}']
    { Property Accessors }
    function Get_Party: IXMLPartyType_cac;
    function Get_DespatchContact: IXMLContactType_cac;
    { Methods & Properties }
    property Party: IXMLPartyType_cac read Get_Party;
    property DespatchContact: IXMLContactType_cac read Get_DespatchContact;
  end;

{ IXMLCustomerPartyType_cac }

  IXMLCustomerPartyType_cac = interface(IXMLNode)
    ['{F702BA8E-96C5-4238-BB36-0346BAD5E842}']
    { Property Accessors }
    function Get_Party: IXMLPartyType_cac;
    function Get_DeliveryContact: IXMLContactType_cac;
    { Methods & Properties }
    property Party: IXMLPartyType_cac read Get_Party;
    property DeliveryContact: IXMLContactType_cac read Get_DeliveryContact;
  end;

{ IXMLShipmentType_cac }

  IXMLShipmentType_cac = interface(IXMLNode)
    ['{CB7F9A92-C643-4A9E-B429-69FDA6BBF12B}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_HandlingCode: IXMLHandlingCodeType_cbc;
    function Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
    function Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
    function Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
    function Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
    function Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
    function Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
    function Get_TotalTransportHandlingUnitQuantity: IXMLTotalTransportHandlingUnitQuantityType_cbc;
    function Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
    function Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
    function Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
    function Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
    function Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
    function Get_SpecialInstructions: IXMLSpecialInstructionsType_cbcList;
    function Get_GoodsItem: IXMLGoodsItemType_cacList;
    function Get_ShipmentStage: IXMLShipmentStageType_cacList;
    function Get_Delivery: IXMLDeliveryType_cac;
    function Get_TransportHandlingUnit: IXMLTransportHandlingUnitType_cacList;
    function Get_ReturnAddress: IXMLAddressType_cac;
    function Get_FirstArrivalPortLocation: IXMLLocationType_cac;
    function Get_LastExitPortLocation: IXMLLocationType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property HandlingCode: IXMLHandlingCodeType_cbc read Get_HandlingCode;
    property HandlingInstructions: IXMLHandlingInstructionsType_cbc read Get_HandlingInstructions;
    property GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc read Get_GrossWeightMeasure;
    property NetWeightMeasure: IXMLNetWeightMeasureType_cbc read Get_NetWeightMeasure;
    property GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc read Get_GrossVolumeMeasure;
    property NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc read Get_NetVolumeMeasure;
    property TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc read Get_TotalGoodsItemQuantity;
    property TotalTransportHandlingUnitQuantity: IXMLTotalTransportHandlingUnitQuantityType_cbc read Get_TotalTransportHandlingUnitQuantity;
    property InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc read Get_InsuranceValueAmount;
    property DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc read Get_DeclaredCustomsValueAmount;
    property DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc read Get_DeclaredForCarriageValueAmount;
    property DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc read Get_DeclaredStatisticsValueAmount;
    property FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc read Get_FreeOnBoardValueAmount;
    property SpecialInstructions: IXMLSpecialInstructionsType_cbcList read Get_SpecialInstructions;
    property GoodsItem: IXMLGoodsItemType_cacList read Get_GoodsItem;
    property ShipmentStage: IXMLShipmentStageType_cacList read Get_ShipmentStage;
    property Delivery: IXMLDeliveryType_cac read Get_Delivery;
    property TransportHandlingUnit: IXMLTransportHandlingUnitType_cacList read Get_TransportHandlingUnit;
    property ReturnAddress: IXMLAddressType_cac read Get_ReturnAddress;
    property FirstArrivalPortLocation: IXMLLocationType_cac read Get_FirstArrivalPortLocation;
    property LastExitPortLocation: IXMLLocationType_cac read Get_LastExitPortLocation;
  end;

{ IXMLShipmentType_cacList }

  IXMLShipmentType_cacList = interface(IXMLNodeCollection)
    ['{49C45E70-3B00-49CA-B827-697EC44E0EEA}']
    { Methods & Properties }
    function Add: IXMLShipmentType_cac;
    function Insert(const Index: Integer): IXMLShipmentType_cac;

    function Get_Item(Index: Integer): IXMLShipmentType_cac;
    property Items[Index: Integer]: IXMLShipmentType_cac read Get_Item; default;
  end;

{ IXMLHandlingCodeType_cbc }

  IXMLHandlingCodeType_cbc = interface(IXMLNode)
    ['{7E7059DB-4CDD-4139-8E6E-5625479BB759}']
  end;

{ IXMLHandlingInstructionsType_cbc }

  IXMLHandlingInstructionsType_cbc = interface(IXMLNode)
    ['{E4C9FFF4-4EE0-4972-B5DD-3B851B353A64}']
  end;

{ IXMLGrossWeightMeasureType_cbc }

  IXMLGrossWeightMeasureType_cbc = interface(IXMLNode)
    ['{E0C32E4C-8074-42CB-8626-7B052855A132}']
  end;

{ IXMLNetWeightMeasureType_cbc }

  IXMLNetWeightMeasureType_cbc = interface(IXMLNode)
    ['{1D883AEE-9B54-45EC-AD20-53D6EA56A923}']
  end;

{ IXMLGrossVolumeMeasureType_cbc }

  IXMLGrossVolumeMeasureType_cbc = interface(IXMLNode)
    ['{764DAEF9-251D-483B-ABB7-2E1D3741217D}']
  end;

{ IXMLNetVolumeMeasureType_cbc }

  IXMLNetVolumeMeasureType_cbc = interface(IXMLNode)
    ['{9DC44EBD-8935-477F-B0C9-B3265130FFFA}']
  end;

{ IXMLTotalGoodsItemQuantityType_cbc }

  IXMLTotalGoodsItemQuantityType_cbc = interface(IXMLNode)
    ['{8DBECEE2-4080-4BE3-9426-A9A4EBEF8D77}']
  end;

{ IXMLTotalTransportHandlingUnitQuantityType_cbc }

  IXMLTotalTransportHandlingUnitQuantityType_cbc = interface(IXMLNode)
    ['{627DEE3C-5B19-4C3A-9298-59BE9745290C}']
  end;

{ IXMLInsuranceValueAmountType_cbc }

  IXMLInsuranceValueAmountType_cbc = interface(IXMLNode)
    ['{01DABFF6-2AB3-4D12-BBB3-6B74E4D1341D}']
  end;

{ IXMLDeclaredCustomsValueAmountType_cbc }

  IXMLDeclaredCustomsValueAmountType_cbc = interface(IXMLNode)
    ['{576270A0-2EDC-4ECD-B2FF-B853AF6964E1}']
  end;

{ IXMLDeclaredForCarriageValueAmountType_cbc }

  IXMLDeclaredForCarriageValueAmountType_cbc = interface(IXMLNode)
    ['{9BAD20CF-9107-4C08-8182-5536E648F920}']
  end;

{ IXMLDeclaredStatisticsValueAmountType_cbc }

  IXMLDeclaredStatisticsValueAmountType_cbc = interface(IXMLNode)
    ['{F1E7B419-7C35-4A48-9162-3079E9E26996}']
  end;

{ IXMLFreeOnBoardValueAmountType_cbc }

  IXMLFreeOnBoardValueAmountType_cbc = interface(IXMLNode)
    ['{11F3E310-518C-44D5-BCDB-36E018B483E0}']
  end;

{ IXMLSpecialInstructionsType_cbc }

  IXMLSpecialInstructionsType_cbc = interface(IXMLNode)
    ['{DEA9EAE5-F4D0-4F58-A03C-380D60DEBAAD}']
  end;

{ IXMLSpecialInstructionsType_cbcList }

  IXMLSpecialInstructionsType_cbcList = interface(IXMLNodeCollection)
    ['{E3E1C34D-93AD-415B-9D32-04F9C18D4D4B}']
    { Methods & Properties }
    function Add: IXMLSpecialInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLSpecialInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLSpecialInstructionsType_cbc;
    property Items[Index: Integer]: IXMLSpecialInstructionsType_cbc read Get_Item; default;
  end;

{ IXMLGoodsItemType_cac }

  IXMLGoodsItemType_cac = interface(IXMLNode)
    ['{F50FC65F-BD04-43FC-B21D-EE98B66B09F9}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
    function Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
    function Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
    function Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
    function Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
    function Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
    function Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
    function Get_ValueAmount: IXMLValueAmountType_cbc;
    function Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
    function Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
    function Get_ChargeableWeightMeasure: IXMLChargeableWeightMeasureType_cbc;
    function Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
    function Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_RequiredCustomsID: IXMLRequiredCustomsIDType_cbc;
    function Get_CustomsStatusCode: IXMLCustomsStatusCodeType_cbc;
    function Get_CustomsTariffQuantity: IXMLCustomsTariffQuantityType_cbc;
    function Get_CustomsImportClassifiedIndicator: IXMLCustomsImportClassifiedIndicatorType_cbc;
    function Get_ChargeableQuantity: IXMLChargeableQuantityType_cbc;
    function Get_ReturnableQuantity: IXMLReturnableQuantityType_cbc;
    function Get_TraceID: IXMLTraceIDType_cbc;
    function Get_Item: IXMLItemType_cacList;
    function Get_FreightAllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_InvoiceLine: IXMLInvoiceLineType_cacList;
    function Get_Temperature: IXMLTemperatureType_cacList;
    function Get_OriginAddress: IXMLAddressType_cac;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Description: IXMLDescriptionType_cbcList read Get_Description;
    property HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc read Get_HazardousRiskIndicator;
    property DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc read Get_DeclaredCustomsValueAmount;
    property DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc read Get_DeclaredForCarriageValueAmount;
    property DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc read Get_DeclaredStatisticsValueAmount;
    property FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc read Get_FreeOnBoardValueAmount;
    property InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc read Get_InsuranceValueAmount;
    property ValueAmount: IXMLValueAmountType_cbc read Get_ValueAmount;
    property GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc read Get_GrossWeightMeasure;
    property NetWeightMeasure: IXMLNetWeightMeasureType_cbc read Get_NetWeightMeasure;
    property ChargeableWeightMeasure: IXMLChargeableWeightMeasureType_cbc read Get_ChargeableWeightMeasure;
    property GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc read Get_GrossVolumeMeasure;
    property NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc read Get_NetVolumeMeasure;
    property Quantity: IXMLQuantityType_cbc read Get_Quantity;
    property RequiredCustomsID: IXMLRequiredCustomsIDType_cbc read Get_RequiredCustomsID;
    property CustomsStatusCode: IXMLCustomsStatusCodeType_cbc read Get_CustomsStatusCode;
    property CustomsTariffQuantity: IXMLCustomsTariffQuantityType_cbc read Get_CustomsTariffQuantity;
    property CustomsImportClassifiedIndicator: IXMLCustomsImportClassifiedIndicatorType_cbc read Get_CustomsImportClassifiedIndicator;
    property ChargeableQuantity: IXMLChargeableQuantityType_cbc read Get_ChargeableQuantity;
    property ReturnableQuantity: IXMLReturnableQuantityType_cbc read Get_ReturnableQuantity;
    property TraceID: IXMLTraceIDType_cbc read Get_TraceID;
    property Item: IXMLItemType_cacList read Get_Item;
    property FreightAllowanceCharge: IXMLAllowanceChargeType_cacList read Get_FreightAllowanceCharge;
    property InvoiceLine: IXMLInvoiceLineType_cacList read Get_InvoiceLine;
    property Temperature: IXMLTemperatureType_cacList read Get_Temperature;
    property OriginAddress: IXMLAddressType_cac read Get_OriginAddress;
    property MeasurementDimension: IXMLDimensionType_cacList read Get_MeasurementDimension;
  end;

{ IXMLGoodsItemType_cacList }

  IXMLGoodsItemType_cacList = interface(IXMLNodeCollection)
    ['{656C5C41-27FE-4737-A7AF-23FFBE55152A}']
    { Methods & Properties }
    function Add: IXMLGoodsItemType_cac;
    function Insert(const Index: Integer): IXMLGoodsItemType_cac;

    function Get_Item(Index: Integer): IXMLGoodsItemType_cac;
    property Items[Index: Integer]: IXMLGoodsItemType_cac read Get_Item; default;
  end;

{ IXMLHazardousRiskIndicatorType_cbc }

  IXMLHazardousRiskIndicatorType_cbc = interface(IXMLNode)
    ['{D4A0C6B3-AAA6-4FB3-BF50-7A6B310F755A}']
  end;

{ IXMLValueAmountType_cbc }

  IXMLValueAmountType_cbc = interface(IXMLNode)
    ['{24652B65-A989-48D0-B1FD-9F2C4461DC11}']
  end;

{ IXMLChargeableWeightMeasureType_cbc }

  IXMLChargeableWeightMeasureType_cbc = interface(IXMLNode)
    ['{8A103328-DF11-40F7-9390-5C0BF60548EC}']
  end;

{ IXMLQuantityType_cbc }

  IXMLQuantityType_cbc = interface(IXMLNode)
    ['{8BDAFD96-8A9A-4DC4-A234-D8A1ABE203B9}']
  end;

{ IXMLRequiredCustomsIDType_cbc }

  IXMLRequiredCustomsIDType_cbc = interface(IXMLNode)
    ['{D234F7A3-A815-4386-8C35-F684DF126539}']
  end;

{ IXMLCustomsStatusCodeType_cbc }

  IXMLCustomsStatusCodeType_cbc = interface(IXMLNode)
    ['{FE84AABD-A801-4A05-B12D-8DDFA6A3DE46}']
  end;

{ IXMLCustomsTariffQuantityType_cbc }

  IXMLCustomsTariffQuantityType_cbc = interface(IXMLNode)
    ['{3D2AD663-4F6B-4BE9-9E79-8FC08A5FD0DE}']
  end;

{ IXMLCustomsImportClassifiedIndicatorType_cbc }

  IXMLCustomsImportClassifiedIndicatorType_cbc = interface(IXMLNode)
    ['{51D40AA5-237E-453E-91AB-CF1FA583AB05}']
  end;

{ IXMLChargeableQuantityType_cbc }

  IXMLChargeableQuantityType_cbc = interface(IXMLNode)
    ['{999BB0B7-E519-4C60-B52F-3321CEEF18E2}']
  end;

{ IXMLReturnableQuantityType_cbc }

  IXMLReturnableQuantityType_cbc = interface(IXMLNode)
    ['{E074554A-3FDA-49A4-8A0D-9B807C1BFF74}']
  end;

{ IXMLTraceIDType_cbc }

  IXMLTraceIDType_cbc = interface(IXMLNode)
    ['{C1B5F0D0-D8FE-47E8-A048-FBF7386DC29E}']
  end;

{ IXMLItemType_cac }

  IXMLItemType_cac = interface(IXMLNode)
    ['{BF3F3D77-1E15-4F44-9EC6-24D7D2042BC1}']
    { Property Accessors }
    function Get_Description: IXMLDescriptionType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_Keyword: IXMLKeywordType_cbc;
    function Get_BrandName: IXMLBrandNameType_cbc;
    function Get_ModelName: IXMLModelNameType_cbc;
    function Get_BuyersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_SellersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_ManufacturersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_AdditionalItemIdentification: IXMLItemIdentificationType_cacList;
    function Get_OriginCountry: IXMLCountryType_cac;
    function Get_CommodityClassification: IXMLCommodityClassificationType_cacList;
    function Get_ItemInstance: IXMLItemInstanceType_cacList;
    { Methods & Properties }
    property Description: IXMLDescriptionType_cbc read Get_Description;
    property Name: IXMLNameType_cbc read Get_Name;
    property Keyword: IXMLKeywordType_cbc read Get_Keyword;
    property BrandName: IXMLBrandNameType_cbc read Get_BrandName;
    property ModelName: IXMLModelNameType_cbc read Get_ModelName;
    property BuyersItemIdentification: IXMLItemIdentificationType_cac read Get_BuyersItemIdentification;
    property SellersItemIdentification: IXMLItemIdentificationType_cac read Get_SellersItemIdentification;
    property ManufacturersItemIdentification: IXMLItemIdentificationType_cac read Get_ManufacturersItemIdentification;
    property AdditionalItemIdentification: IXMLItemIdentificationType_cacList read Get_AdditionalItemIdentification;
    property OriginCountry: IXMLCountryType_cac read Get_OriginCountry;
    property CommodityClassification: IXMLCommodityClassificationType_cacList read Get_CommodityClassification;
    property ItemInstance: IXMLItemInstanceType_cacList read Get_ItemInstance;
  end;

{ IXMLItemType_cacList }

  IXMLItemType_cacList = interface(IXMLNodeCollection)
    ['{6E1EA4BD-B34D-44F9-ADAD-15AEB540AB1D}']
    { Methods & Properties }
    function Add: IXMLItemType_cac;
    function Insert(const Index: Integer): IXMLItemType_cac;

    function Get_Item(Index: Integer): IXMLItemType_cac;
    property Items[Index: Integer]: IXMLItemType_cac read Get_Item; default;
  end;

{ IXMLKeywordType_cbc }

  IXMLKeywordType_cbc = interface(IXMLNode)
    ['{4C674A25-5DD3-473D-B6E5-4C7DDB36794D}']
  end;

{ IXMLBrandNameType_cbc }

  IXMLBrandNameType_cbc = interface(IXMLNode)
    ['{553DC35A-7081-41C5-82D9-CC4CFE497E86}']
  end;

{ IXMLModelNameType_cbc }

  IXMLModelNameType_cbc = interface(IXMLNode)
    ['{9E3A48CC-E3F5-4A88-A349-4EAB338C75E1}']
  end;

{ IXMLItemIdentificationType_cac }

  IXMLItemIdentificationType_cac = interface(IXMLNode)
    ['{C70D68BE-89EA-470C-A2BB-B8343DD4DDB3}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
  end;

{ IXMLItemIdentificationType_cacList }

  IXMLItemIdentificationType_cacList = interface(IXMLNodeCollection)
    ['{64F3EC29-41AD-410B-97C4-AF0F0E0B19DE}']
    { Methods & Properties }
    function Add: IXMLItemIdentificationType_cac;
    function Insert(const Index: Integer): IXMLItemIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLItemIdentificationType_cac;
    property Items[Index: Integer]: IXMLItemIdentificationType_cac read Get_Item; default;
  end;

{ IXMLCommodityClassificationType_cac }

  IXMLCommodityClassificationType_cac = interface(IXMLNode)
    ['{3E71570C-EE93-4448-8566-6423538AFDD2}']
    { Property Accessors }
    function Get_ItemClassificationCode: IXMLItemClassificationCodeType_cbc;
    { Methods & Properties }
    property ItemClassificationCode: IXMLItemClassificationCodeType_cbc read Get_ItemClassificationCode;
  end;

{ IXMLCommodityClassificationType_cacList }

  IXMLCommodityClassificationType_cacList = interface(IXMLNodeCollection)
    ['{EF451058-79B1-4E7B-B50A-D4FBEF634224}']
    { Methods & Properties }
    function Add: IXMLCommodityClassificationType_cac;
    function Insert(const Index: Integer): IXMLCommodityClassificationType_cac;

    function Get_Item(Index: Integer): IXMLCommodityClassificationType_cac;
    property Items[Index: Integer]: IXMLCommodityClassificationType_cac read Get_Item; default;
  end;

{ IXMLItemClassificationCodeType_cbc }

  IXMLItemClassificationCodeType_cbc = interface(IXMLNode)
    ['{78480862-6928-4311-8C12-931600C1B54B}']
  end;

{ IXMLItemInstanceType_cac }

  IXMLItemInstanceType_cac = interface(IXMLNode)
    ['{2F067044-A0C0-4BB1-856A-F06EAF50DF3B}']
    { Property Accessors }
    function Get_ProductTraceID: IXMLProductTraceIDType_cbc;
    function Get_ManufactureDate: IXMLManufactureDateType_cbc;
    function Get_ManufactureTime: IXMLManufactureTimeType_cbc;
    function Get_BestBeforeDate: IXMLBestBeforeDateType_cbc;
    function Get_RegistrationID: IXMLRegistrationIDType_cbc;
    function Get_SerialID: IXMLSerialIDType_cbc;
    function Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
    function Get_LotIdentification: IXMLLotIdentificationType_cac;
    { Methods & Properties }
    property ProductTraceID: IXMLProductTraceIDType_cbc read Get_ProductTraceID;
    property ManufactureDate: IXMLManufactureDateType_cbc read Get_ManufactureDate;
    property ManufactureTime: IXMLManufactureTimeType_cbc read Get_ManufactureTime;
    property BestBeforeDate: IXMLBestBeforeDateType_cbc read Get_BestBeforeDate;
    property RegistrationID: IXMLRegistrationIDType_cbc read Get_RegistrationID;
    property SerialID: IXMLSerialIDType_cbc read Get_SerialID;
    property AdditionalItemProperty: IXMLItemPropertyType_cacList read Get_AdditionalItemProperty;
    property LotIdentification: IXMLLotIdentificationType_cac read Get_LotIdentification;
  end;

{ IXMLItemInstanceType_cacList }

  IXMLItemInstanceType_cacList = interface(IXMLNodeCollection)
    ['{D05F3110-674D-4F69-A18E-EE1EB298F315}']
    { Methods & Properties }
    function Add: IXMLItemInstanceType_cac;
    function Insert(const Index: Integer): IXMLItemInstanceType_cac;

    function Get_Item(Index: Integer): IXMLItemInstanceType_cac;
    property Items[Index: Integer]: IXMLItemInstanceType_cac read Get_Item; default;
  end;

{ IXMLProductTraceIDType_cbc }

  IXMLProductTraceIDType_cbc = interface(IXMLNode)
    ['{F091365D-B23E-4609-8F17-C41128B2C156}']
  end;

{ IXMLManufactureDateType_cbc }

  IXMLManufactureDateType_cbc = interface(IXMLNode)
    ['{7C795D10-4952-4C03-A9D8-C5B748B03742}']
  end;

{ IXMLManufactureTimeType_cbc }

  IXMLManufactureTimeType_cbc = interface(IXMLNode)
    ['{D260E2DE-9D6F-48FD-BA5A-1F2B49FCC6B8}']
  end;

{ IXMLBestBeforeDateType_cbc }

  IXMLBestBeforeDateType_cbc = interface(IXMLNode)
    ['{1CC5EE67-51E2-456C-B961-F90E81CFE179}']
  end;

{ IXMLRegistrationIDType_cbc }

  IXMLRegistrationIDType_cbc = interface(IXMLNode)
    ['{34673EA0-B1A4-4ED2-9569-29129C0FAAAF}']
  end;

{ IXMLSerialIDType_cbc }

  IXMLSerialIDType_cbc = interface(IXMLNode)
    ['{BDD32345-8FF5-4C14-BBBB-F11042140780}']
  end;

{ IXMLItemPropertyType_cac }

  IXMLItemPropertyType_cac = interface(IXMLNode)
    ['{140DD1D3-A127-4761-9061-75F6117E3750}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_NameCode: IXMLNameCodeType_cbc;
    function Get_TestMethod: IXMLTestMethodType_cbc;
    function Get_Value: IXMLValueType_cbc;
    function Get_ValueQuantity: IXMLValueQuantityType_cbc;
    function Get_ValueQualifier: IXMLValueQualifierType_cbcList;
    function Get_ImportanceCode: IXMLImportanceCodeType_cbc;
    function Get_ListValue: IXMLListValueType_cbcList;
    function Get_UsabilityPeriod: IXMLPeriodType_cac;
    function Get_ItemPropertyGroup: IXMLItemPropertyGroupType_cacList;
    function Get_RangeDimension: IXMLDimensionType_cac;
    function Get_ItemPropertyRange: IXMLItemPropertyRangeType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Name: IXMLNameType_cbc read Get_Name;
    property NameCode: IXMLNameCodeType_cbc read Get_NameCode;
    property TestMethod: IXMLTestMethodType_cbc read Get_TestMethod;
    property Value: IXMLValueType_cbc read Get_Value;
    property ValueQuantity: IXMLValueQuantityType_cbc read Get_ValueQuantity;
    property ValueQualifier: IXMLValueQualifierType_cbcList read Get_ValueQualifier;
    property ImportanceCode: IXMLImportanceCodeType_cbc read Get_ImportanceCode;
    property ListValue: IXMLListValueType_cbcList read Get_ListValue;
    property UsabilityPeriod: IXMLPeriodType_cac read Get_UsabilityPeriod;
    property ItemPropertyGroup: IXMLItemPropertyGroupType_cacList read Get_ItemPropertyGroup;
    property RangeDimension: IXMLDimensionType_cac read Get_RangeDimension;
    property ItemPropertyRange: IXMLItemPropertyRangeType_cac read Get_ItemPropertyRange;
  end;

{ IXMLItemPropertyType_cacList }

  IXMLItemPropertyType_cacList = interface(IXMLNodeCollection)
    ['{6204C595-392E-40E2-876A-5EDEE6C227ED}']
    { Methods & Properties }
    function Add: IXMLItemPropertyType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyType_cac;
    property Items[Index: Integer]: IXMLItemPropertyType_cac read Get_Item; default;
  end;

{ IXMLNameCodeType_cbc }

  IXMLNameCodeType_cbc = interface(IXMLNode)
    ['{818973AC-8D37-4D04-986D-B5E29D370F3E}']
  end;

{ IXMLTestMethodType_cbc }

  IXMLTestMethodType_cbc = interface(IXMLNode)
    ['{A981FBBE-C390-46BE-8EDB-18B228123E5F}']
  end;

{ IXMLValueQuantityType_cbc }

  IXMLValueQuantityType_cbc = interface(IXMLNode)
    ['{EA0B487E-0C5F-4565-9558-DB5D24325A3A}']
  end;

{ IXMLValueQualifierType_cbc }

  IXMLValueQualifierType_cbc = interface(IXMLNode)
    ['{45A5DB86-3A1F-48B9-9DD6-8B88551E6762}']
  end;

{ IXMLValueQualifierType_cbcList }

  IXMLValueQualifierType_cbcList = interface(IXMLNodeCollection)
    ['{E8006EAB-6D6C-4E62-8DAC-D7C566B63DC2}']
    { Methods & Properties }
    function Add: IXMLValueQualifierType_cbc;
    function Insert(const Index: Integer): IXMLValueQualifierType_cbc;

    function Get_Item(Index: Integer): IXMLValueQualifierType_cbc;
    property Items[Index: Integer]: IXMLValueQualifierType_cbc read Get_Item; default;
  end;

{ IXMLImportanceCodeType_cbc }

  IXMLImportanceCodeType_cbc = interface(IXMLNode)
    ['{B60636E2-2990-4F59-8A55-DD8F85632426}']
  end;

{ IXMLListValueType_cbc }

  IXMLListValueType_cbc = interface(IXMLNode)
    ['{2EB145EB-F7DA-47FA-AFB3-6B138658E890}']
  end;

{ IXMLListValueType_cbcList }

  IXMLListValueType_cbcList = interface(IXMLNodeCollection)
    ['{3BD73838-C1BA-4802-BA50-CAA6237DA72D}']
    { Methods & Properties }
    function Add: IXMLListValueType_cbc;
    function Insert(const Index: Integer): IXMLListValueType_cbc;

    function Get_Item(Index: Integer): IXMLListValueType_cbc;
    property Items[Index: Integer]: IXMLListValueType_cbc read Get_Item; default;
  end;

{ IXMLItemPropertyGroupType_cac }

  IXMLItemPropertyGroupType_cac = interface(IXMLNode)
    ['{5DCB4DA7-0911-4D93-85FF-B78B3BF38FF3}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_ImportanceCode: IXMLImportanceCodeType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Name: IXMLNameType_cbc read Get_Name;
    property ImportanceCode: IXMLImportanceCodeType_cbc read Get_ImportanceCode;
  end;

{ IXMLItemPropertyGroupType_cacList }

  IXMLItemPropertyGroupType_cacList = interface(IXMLNodeCollection)
    ['{3C7A0447-6375-426E-B890-F36487F1325B}']
    { Methods & Properties }
    function Add: IXMLItemPropertyGroupType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyGroupType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyGroupType_cac;
    property Items[Index: Integer]: IXMLItemPropertyGroupType_cac read Get_Item; default;
  end;

{ IXMLDimensionType_cac }

  IXMLDimensionType_cac = interface(IXMLNode)
    ['{B78A207A-A554-43B3-A1D0-9DE8DAAEBD81}']
    { Property Accessors }
    function Get_AttributeID: IXMLAttributeIDType_cbc;
    function Get_Measure: IXMLMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
    function Get_MinimumMeasure: IXMLMinimumMeasureType_cbc;
    function Get_MaximumMeasure: IXMLMaximumMeasureType_cbc;
    { Methods & Properties }
    property AttributeID: IXMLAttributeIDType_cbc read Get_AttributeID;
    property Measure: IXMLMeasureType_cbc read Get_Measure;
    property Description: IXMLDescriptionType_cbcList read Get_Description;
    property MinimumMeasure: IXMLMinimumMeasureType_cbc read Get_MinimumMeasure;
    property MaximumMeasure: IXMLMaximumMeasureType_cbc read Get_MaximumMeasure;
  end;

{ IXMLDimensionType_cacList }

  IXMLDimensionType_cacList = interface(IXMLNodeCollection)
    ['{B44D778C-6583-4328-BD7A-C5D00D8EA5B6}']
    { Methods & Properties }
    function Add: IXMLDimensionType_cac;
    function Insert(const Index: Integer): IXMLDimensionType_cac;

    function Get_Item(Index: Integer): IXMLDimensionType_cac;
    property Items[Index: Integer]: IXMLDimensionType_cac read Get_Item; default;
  end;

{ IXMLAttributeIDType_cbc }

  IXMLAttributeIDType_cbc = interface(IXMLNode)
    ['{47DD42E1-2AF3-4A5E-A335-3322C0523CEC}']
  end;

{ IXMLMeasureType_cbc }

  IXMLMeasureType_cbc = interface(IXMLNode)
    ['{9675E9BE-2589-4F2C-8549-57B964774FC1}']
  end;

{ IXMLMinimumMeasureType_cbc }

  IXMLMinimumMeasureType_cbc = interface(IXMLNode)
    ['{EE7EA1DA-566C-4F4B-AE79-6217A0BEF791}']
  end;

{ IXMLMaximumMeasureType_cbc }

  IXMLMaximumMeasureType_cbc = interface(IXMLNode)
    ['{E033D03D-7826-4E12-85C9-377A756347BE}']
  end;

{ IXMLItemPropertyRangeType_cac }

  IXMLItemPropertyRangeType_cac = interface(IXMLNode)
    ['{CDA3CE71-2719-45F3-9EAD-E1380FD04DF0}']
    { Property Accessors }
    function Get_MinimumValue: IXMLMinimumValueType_cbc;
    function Get_MaximumValue: IXMLMaximumValueType_cbc;
    { Methods & Properties }
    property MinimumValue: IXMLMinimumValueType_cbc read Get_MinimumValue;
    property MaximumValue: IXMLMaximumValueType_cbc read Get_MaximumValue;
  end;

{ IXMLMinimumValueType_cbc }

  IXMLMinimumValueType_cbc = interface(IXMLNode)
    ['{6E8F1EB6-1989-4D9B-A7C1-E80A11478618}']
  end;

{ IXMLMaximumValueType_cbc }

  IXMLMaximumValueType_cbc = interface(IXMLNode)
    ['{340306D3-25FE-413B-A853-EBE283E3013A}']
  end;

{ IXMLLotIdentificationType_cac }

  IXMLLotIdentificationType_cac = interface(IXMLNode)
    ['{AC349D1C-9EC4-4AA2-A417-888F27E2C40B}']
    { Property Accessors }
    function Get_LotNumberID: IXMLLotNumberIDType_cbc;
    function Get_ExpiryDate: IXMLExpiryDateType_cbc;
    function Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
    { Methods & Properties }
    property LotNumberID: IXMLLotNumberIDType_cbc read Get_LotNumberID;
    property ExpiryDate: IXMLExpiryDateType_cbc read Get_ExpiryDate;
    property AdditionalItemProperty: IXMLItemPropertyType_cacList read Get_AdditionalItemProperty;
  end;

{ IXMLLotNumberIDType_cbc }

  IXMLLotNumberIDType_cbc = interface(IXMLNode)
    ['{244ED523-7093-431C-BBA4-8B4D9A04C7FA}']
  end;

{ IXMLExpiryDateType_cbc }

  IXMLExpiryDateType_cbc = interface(IXMLNode)
    ['{0CDA6F7E-2B69-4CB5-B2C2-A14885E6551A}']
  end;

{ IXMLAllowanceChargeType_cac }

  IXMLAllowanceChargeType_cac = interface(IXMLNode)
    ['{9ACA1B27-3D47-4315-9096-F2FF06E7063E}']
    { Property Accessors }
    function Get_ChargeIndicator: IXMLChargeIndicatorType_cbc;
    function Get_AllowanceChargeReason: IXMLAllowanceChargeReasonType_cbc;
    function Get_MultiplierFactorNumeric: IXMLMultiplierFactorNumericType_cbc;
    function Get_SequenceNumeric: IXMLSequenceNumericType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_BaseAmount: IXMLBaseAmountType_cbc;
    function Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
    { Methods & Properties }
    property ChargeIndicator: IXMLChargeIndicatorType_cbc read Get_ChargeIndicator;
    property AllowanceChargeReason: IXMLAllowanceChargeReasonType_cbc read Get_AllowanceChargeReason;
    property MultiplierFactorNumeric: IXMLMultiplierFactorNumericType_cbc read Get_MultiplierFactorNumeric;
    property SequenceNumeric: IXMLSequenceNumericType_cbc read Get_SequenceNumeric;
    property Amount: IXMLAmountType_cbc read Get_Amount;
    property BaseAmount: IXMLBaseAmountType_cbc read Get_BaseAmount;
    property PerUnitAmount: IXMLPerUnitAmountType_cbc read Get_PerUnitAmount;
  end;

{ IXMLAllowanceChargeType_cacList }

  IXMLAllowanceChargeType_cacList = interface(IXMLNodeCollection)
    ['{950C0193-119D-49C7-ABBF-7B3F652A1757}']
    { Methods & Properties }
    function Add: IXMLAllowanceChargeType_cac;
    function Insert(const Index: Integer): IXMLAllowanceChargeType_cac;

    function Get_Item(Index: Integer): IXMLAllowanceChargeType_cac;
    property Items[Index: Integer]: IXMLAllowanceChargeType_cac read Get_Item; default;
  end;

{ IXMLChargeIndicatorType_cbc }

  IXMLChargeIndicatorType_cbc = interface(IXMLNode)
    ['{A28033F6-C27A-42BE-BEFD-614D2E13D25E}']
  end;

{ IXMLAllowanceChargeReasonType_cbc }

  IXMLAllowanceChargeReasonType_cbc = interface(IXMLNode)
    ['{D47D9B0F-C8EA-42AC-B358-7FF887A72E9F}']
  end;

{ IXMLMultiplierFactorNumericType_cbc }

  IXMLMultiplierFactorNumericType_cbc = interface(IXMLNode)
    ['{DAD385CC-2D34-4624-9DCE-B28E334B0E92}']
  end;

{ IXMLSequenceNumericType_cbc }

  IXMLSequenceNumericType_cbc = interface(IXMLNode)
    ['{23674D21-3355-4E4F-AE33-675F53103DA6}']
  end;

{ IXMLAmountType_cbc }

  IXMLAmountType_cbc = interface(IXMLNode)
    ['{1A3CB684-3826-4B91-9913-ACE83773A26A}']
  end;

{ IXMLBaseAmountType_cbc }

  IXMLBaseAmountType_cbc = interface(IXMLNode)
    ['{6174DF04-0E7B-49CC-8D29-EBF7842EC7E0}']
  end;

{ IXMLPerUnitAmountType_cbc }

  IXMLPerUnitAmountType_cbc = interface(IXMLNode)
    ['{F85E6D47-A1C9-4465-8A19-EE71FFE11583}']
  end;

{ IXMLInvoiceLineType_cac }

  IXMLInvoiceLineType_cac = interface(IXMLNode)
    ['{D052F59E-E6F1-467C-BAFD-30AE587CE220}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_InvoicedQuantity: IXMLInvoicedQuantityType_cbc;
    function Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
    function Get_OrderLineReference: IXMLOrderLineReferenceType_cacList;
    function Get_DespatchLineReference: IXMLLineReferenceType_cacList;
    function Get_ReceiptLineReference: IXMLLineReferenceType_cacList;
    function Get_Delivery: IXMLDeliveryType_cacList;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_TaxTotal: IXMLTaxTotalType_cac;
    function Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
    function Get_Item: IXMLItemType_cac;
    function Get_Price: IXMLPriceType_cac;
    function Get_SubInvoiceLine: IXMLInvoiceLineType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Note: IXMLNoteType_cbcList read Get_Note;
    property InvoicedQuantity: IXMLInvoicedQuantityType_cbc read Get_InvoicedQuantity;
    property LineExtensionAmount: IXMLLineExtensionAmountType_cbc read Get_LineExtensionAmount;
    property OrderLineReference: IXMLOrderLineReferenceType_cacList read Get_OrderLineReference;
    property DespatchLineReference: IXMLLineReferenceType_cacList read Get_DespatchLineReference;
    property ReceiptLineReference: IXMLLineReferenceType_cacList read Get_ReceiptLineReference;
    property Delivery: IXMLDeliveryType_cacList read Get_Delivery;
    property AllowanceCharge: IXMLAllowanceChargeType_cacList read Get_AllowanceCharge;
    property TaxTotal: IXMLTaxTotalType_cac read Get_TaxTotal;
    property WithholdingTaxTotal: IXMLTaxTotalType_cacList read Get_WithholdingTaxTotal;
    property Item: IXMLItemType_cac read Get_Item;
    property Price: IXMLPriceType_cac read Get_Price;
    property SubInvoiceLine: IXMLInvoiceLineType_cacList read Get_SubInvoiceLine;
  end;

{ IXMLInvoiceLineType_cacList }

  IXMLInvoiceLineType_cacList = interface(IXMLNodeCollection)
    ['{7F928B66-C6FD-424F-8476-353871334D37}']
    { Methods & Properties }
    function Add: IXMLInvoiceLineType_cac;
    function Insert(const Index: Integer): IXMLInvoiceLineType_cac;

    function Get_Item(Index: Integer): IXMLInvoiceLineType_cac;
    property Items[Index: Integer]: IXMLInvoiceLineType_cac read Get_Item; default;
  end;

{ IXMLInvoicedQuantityType_cbc }

  IXMLInvoicedQuantityType_cbc = interface(IXMLNode)
    ['{36107632-EE45-43C4-A2D8-B15CBE01D4A3}']
  end;

{ IXMLLineExtensionAmountType_cbc }

  IXMLLineExtensionAmountType_cbc = interface(IXMLNode)
    ['{E5959E78-FD8E-4CDD-9329-204C920FCED4}']
  end;

{ IXMLOrderLineReferenceType_cac }

  IXMLOrderLineReferenceType_cac = interface(IXMLNode)
    ['{88B54242-9224-4437-93E6-D966D606CAE6}']
    { Property Accessors }
    function Get_LineID: IXMLLineIDType_cbc;
    function Get_SalesOrderLineID: IXMLSalesOrderLineIDType_cbc;
    function Get_UUID: IXMLUUIDType_cbc;
    function Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
    function Get_OrderReference: IXMLOrderReferenceType_cac;
    { Methods & Properties }
    property LineID: IXMLLineIDType_cbc read Get_LineID;
    property SalesOrderLineID: IXMLSalesOrderLineIDType_cbc read Get_SalesOrderLineID;
    property UUID: IXMLUUIDType_cbc read Get_UUID;
    property LineStatusCode: IXMLLineStatusCodeType_cbc read Get_LineStatusCode;
    property OrderReference: IXMLOrderReferenceType_cac read Get_OrderReference;
  end;

{ IXMLOrderLineReferenceType_cacList }

  IXMLOrderLineReferenceType_cacList = interface(IXMLNodeCollection)
    ['{D9B382B5-183F-482D-8ABD-E3983D01607E}']
    { Methods & Properties }
    function Add: IXMLOrderLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLOrderLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLOrderLineReferenceType_cac;
    property Items[Index: Integer]: IXMLOrderLineReferenceType_cac read Get_Item; default;
  end;

{ IXMLLineIDType_cbc }

  IXMLLineIDType_cbc = interface(IXMLNode)
    ['{4161665D-3F32-4D77-A97C-C80F30B92535}']
  end;

{ IXMLSalesOrderLineIDType_cbc }

  IXMLSalesOrderLineIDType_cbc = interface(IXMLNode)
    ['{CC872001-5151-46E4-81EE-8FA2BD0020E0}']
  end;

{ IXMLLineStatusCodeType_cbc }

  IXMLLineStatusCodeType_cbc = interface(IXMLNode)
    ['{378F22AE-BF32-4F7D-954C-B52572444497}']
  end;

{ IXMLLineReferenceType_cac }

  IXMLLineReferenceType_cac = interface(IXMLNode)
    ['{00F394FA-4C77-4F79-95CE-E25DC20911B5}']
    { Property Accessors }
    function Get_LineID: IXMLLineIDType_cbc;
    function Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
    function Get_DocumentReference: IXMLDocumentReferenceType_cac;
    { Methods & Properties }
    property LineID: IXMLLineIDType_cbc read Get_LineID;
    property LineStatusCode: IXMLLineStatusCodeType_cbc read Get_LineStatusCode;
    property DocumentReference: IXMLDocumentReferenceType_cac read Get_DocumentReference;
  end;

{ IXMLLineReferenceType_cacList }

  IXMLLineReferenceType_cacList = interface(IXMLNodeCollection)
    ['{F7D53BD8-B8EB-4904-ADDD-AE47DD2CE2BC}']
    { Methods & Properties }
    function Add: IXMLLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLLineReferenceType_cac;
    property Items[Index: Integer]: IXMLLineReferenceType_cac read Get_Item; default;
  end;

{ IXMLDeliveryType_cac }

  IXMLDeliveryType_cac = interface(IXMLNode)
    ['{C889A5E7-6FBB-4078-A5F4-318AB6F4FE61}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_ActualDeliveryDate: IXMLActualDeliveryDateType_cbc;
    function Get_ActualDeliveryTime: IXMLActualDeliveryTimeType_cbc;
    function Get_LatestDeliveryDate: IXMLLatestDeliveryDateType_cbc;
    function Get_LatestDeliveryTime: IXMLLatestDeliveryTimeType_cbc;
    function Get_TrackingID: IXMLTrackingIDType_cbc;
    function Get_DeliveryAddress: IXMLAddressType_cac;
    function Get_AlternativeDeliveryLocation: IXMLLocationType_cac;
    function Get_EstimatedDeliveryPeriod: IXMLPeriodType_cac;
    function Get_CarrierParty: IXMLPartyType_cac;
    function Get_DeliveryParty: IXMLPartyType_cac;
    function Get_Despatch: IXMLDespatchType_cac;
    function Get_DeliveryTerms: IXMLDeliveryTermsType_cacList;
    function Get_Shipment: IXMLShipmentType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Quantity: IXMLQuantityType_cbc read Get_Quantity;
    property ActualDeliveryDate: IXMLActualDeliveryDateType_cbc read Get_ActualDeliveryDate;
    property ActualDeliveryTime: IXMLActualDeliveryTimeType_cbc read Get_ActualDeliveryTime;
    property LatestDeliveryDate: IXMLLatestDeliveryDateType_cbc read Get_LatestDeliveryDate;
    property LatestDeliveryTime: IXMLLatestDeliveryTimeType_cbc read Get_LatestDeliveryTime;
    property TrackingID: IXMLTrackingIDType_cbc read Get_TrackingID;
    property DeliveryAddress: IXMLAddressType_cac read Get_DeliveryAddress;
    property AlternativeDeliveryLocation: IXMLLocationType_cac read Get_AlternativeDeliveryLocation;
    property EstimatedDeliveryPeriod: IXMLPeriodType_cac read Get_EstimatedDeliveryPeriod;
    property CarrierParty: IXMLPartyType_cac read Get_CarrierParty;
    property DeliveryParty: IXMLPartyType_cac read Get_DeliveryParty;
    property Despatch: IXMLDespatchType_cac read Get_Despatch;
    property DeliveryTerms: IXMLDeliveryTermsType_cacList read Get_DeliveryTerms;
    property Shipment: IXMLShipmentType_cac read Get_Shipment;
  end;

{ IXMLDeliveryType_cacList }

  IXMLDeliveryType_cacList = interface(IXMLNodeCollection)
    ['{F9F53092-9699-4C7F-88B1-1722E0AE9F1C}']
    { Methods & Properties }
    function Add: IXMLDeliveryType_cac;
    function Insert(const Index: Integer): IXMLDeliveryType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryType_cac;
    property Items[Index: Integer]: IXMLDeliveryType_cac read Get_Item; default;
  end;

{ IXMLActualDeliveryDateType_cbc }

  IXMLActualDeliveryDateType_cbc = interface(IXMLNode)
    ['{D771EF1F-B31F-420F-A86D-0C7AD8A0CCB3}']
  end;

{ IXMLActualDeliveryTimeType_cbc }

  IXMLActualDeliveryTimeType_cbc = interface(IXMLNode)
    ['{C9A340B0-CA21-48C1-8201-9B82497F39B6}']
  end;

{ IXMLLatestDeliveryDateType_cbc }

  IXMLLatestDeliveryDateType_cbc = interface(IXMLNode)
    ['{FF064325-39D0-440F-A62B-84BEDCDD4F8E}']
  end;

{ IXMLLatestDeliveryTimeType_cbc }

  IXMLLatestDeliveryTimeType_cbc = interface(IXMLNode)
    ['{36D5B028-766C-400E-A852-613BF12858E2}']
  end;

{ IXMLTrackingIDType_cbc }

  IXMLTrackingIDType_cbc = interface(IXMLNode)
    ['{2C651D89-ABAE-45B5-84F4-6B81E7B09454}']
  end;

{ IXMLDespatchType_cac }

  IXMLDespatchType_cac = interface(IXMLNode)
    ['{595C45ED-1FAE-4D93-8F17-151EFD135C65}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_ActualDespatchDate: IXMLActualDespatchDateType_cbc;
    function Get_ActualDespatchTime: IXMLActualDespatchTimeType_cbc;
    function Get_Instructions: IXMLInstructionsType_cbc;
    function Get_DespatchAddress: IXMLAddressType_cac;
    function Get_DespatchParty: IXMLPartyType_cac;
    function Get_Contact: IXMLContactType_cac;
    function Get_EstimatedDespatchPeriod: IXMLPeriodType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property ActualDespatchDate: IXMLActualDespatchDateType_cbc read Get_ActualDespatchDate;
    property ActualDespatchTime: IXMLActualDespatchTimeType_cbc read Get_ActualDespatchTime;
    property Instructions: IXMLInstructionsType_cbc read Get_Instructions;
    property DespatchAddress: IXMLAddressType_cac read Get_DespatchAddress;
    property DespatchParty: IXMLPartyType_cac read Get_DespatchParty;
    property Contact: IXMLContactType_cac read Get_Contact;
    property EstimatedDespatchPeriod: IXMLPeriodType_cac read Get_EstimatedDespatchPeriod;
  end;

{ IXMLActualDespatchDateType_cbc }

  IXMLActualDespatchDateType_cbc = interface(IXMLNode)
    ['{178E4E8F-C513-446A-8D8A-2A329B0B9BFB}']
  end;

{ IXMLActualDespatchTimeType_cbc }

  IXMLActualDespatchTimeType_cbc = interface(IXMLNode)
    ['{41A58638-6500-4156-8482-D764CFCD4E46}']
  end;

{ IXMLInstructionsType_cbc }

  IXMLInstructionsType_cbc = interface(IXMLNode)
    ['{BE8B623A-BCA9-4377-BFD5-7B2FEBF9F0A7}']
  end;

{ IXMLInstructionsType_cbcList }

  IXMLInstructionsType_cbcList = interface(IXMLNodeCollection)
    ['{2466362C-C6DB-462A-BFEA-85C08871B338}']
    { Methods & Properties }
    function Add: IXMLInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLInstructionsType_cbc;
    property Items[Index: Integer]: IXMLInstructionsType_cbc read Get_Item; default;
  end;

{ IXMLDeliveryTermsType_cac }

  IXMLDeliveryTermsType_cac = interface(IXMLNode)
    ['{ABED9803-9085-4265-B493-141CCD4D1E6D}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_SpecialTerms: IXMLSpecialTermsType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property SpecialTerms: IXMLSpecialTermsType_cbc read Get_SpecialTerms;
    property Amount: IXMLAmountType_cbc read Get_Amount;
  end;

{ IXMLDeliveryTermsType_cacList }

  IXMLDeliveryTermsType_cacList = interface(IXMLNodeCollection)
    ['{5643B47D-CE2C-48E3-ABA0-00DF3BDDBA1A}']
    { Methods & Properties }
    function Add: IXMLDeliveryTermsType_cac;
    function Insert(const Index: Integer): IXMLDeliveryTermsType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryTermsType_cac;
    property Items[Index: Integer]: IXMLDeliveryTermsType_cac read Get_Item; default;
  end;

{ IXMLSpecialTermsType_cbc }

  IXMLSpecialTermsType_cbc = interface(IXMLNode)
    ['{18D8D6C2-97FF-40D8-A696-707B0597E446}']
  end;

{ IXMLTaxTotalType_cac }

  IXMLTaxTotalType_cac = interface(IXMLNode)
    ['{1412D1B6-BA51-4FB8-B409-ED2948CC0041}']
    { Property Accessors }
    function Get_TaxAmount: IXMLTaxAmountType_cbc;
    function Get_TaxSubtotal: IXMLTaxSubtotalType_cacList;
    { Methods & Properties }
    property TaxAmount: IXMLTaxAmountType_cbc read Get_TaxAmount;
    property TaxSubtotal: IXMLTaxSubtotalType_cacList read Get_TaxSubtotal;
  end;

{ IXMLTaxTotalType_cacList }

  IXMLTaxTotalType_cacList = interface(IXMLNodeCollection)
    ['{5FE4FB80-AA96-4968-89AC-8B175F915B4F}']
    { Methods & Properties }
    function Add: IXMLTaxTotalType_cac;
    function Insert(const Index: Integer): IXMLTaxTotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxTotalType_cac;
    property Items[Index: Integer]: IXMLTaxTotalType_cac read Get_Item; default;
  end;

{ IXMLTaxAmountType_cbc }

  IXMLTaxAmountType_cbc = interface(IXMLNode)
    ['{61FAC264-F772-4B59-A63B-CF8DEC09EB3E}']
  end;

{ IXMLTaxSubtotalType_cac }

  IXMLTaxSubtotalType_cac = interface(IXMLNode)
    ['{0A4882D1-6B0E-40D4-BFB1-F246A3BF5B12}']
    { Property Accessors }
    function Get_TaxableAmount: IXMLTaxableAmountType_cbc;
    function Get_TaxAmount: IXMLTaxAmountType_cbc;
    function Get_CalculationSequenceNumeric: IXMLCalculationSequenceNumericType_cbc;
    function Get_TransactionCurrencyTaxAmount: IXMLTransactionCurrencyTaxAmountType_cbc;
    function Get_Percent: IXMLPercentType_cbc;
    function Get_BaseUnitMeasure: IXMLBaseUnitMeasureType_cbc;
    function Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
    function Get_TaxCategory: IXMLTaxCategoryType_cac;
    { Methods & Properties }
    property TaxableAmount: IXMLTaxableAmountType_cbc read Get_TaxableAmount;
    property TaxAmount: IXMLTaxAmountType_cbc read Get_TaxAmount;
    property CalculationSequenceNumeric: IXMLCalculationSequenceNumericType_cbc read Get_CalculationSequenceNumeric;
    property TransactionCurrencyTaxAmount: IXMLTransactionCurrencyTaxAmountType_cbc read Get_TransactionCurrencyTaxAmount;
    property Percent: IXMLPercentType_cbc read Get_Percent;
    property BaseUnitMeasure: IXMLBaseUnitMeasureType_cbc read Get_BaseUnitMeasure;
    property PerUnitAmount: IXMLPerUnitAmountType_cbc read Get_PerUnitAmount;
    property TaxCategory: IXMLTaxCategoryType_cac read Get_TaxCategory;
  end;

{ IXMLTaxSubtotalType_cacList }

  IXMLTaxSubtotalType_cacList = interface(IXMLNodeCollection)
    ['{1DE9EC0D-5BE9-4D0C-AA5A-692B559E000B}']
    { Methods & Properties }
    function Add: IXMLTaxSubtotalType_cac;
    function Insert(const Index: Integer): IXMLTaxSubtotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxSubtotalType_cac;
    property Items[Index: Integer]: IXMLTaxSubtotalType_cac read Get_Item; default;
  end;

{ IXMLTaxableAmountType_cbc }

  IXMLTaxableAmountType_cbc = interface(IXMLNode)
    ['{E1B739AE-E3E2-4702-AE45-43682CE9A39B}']
  end;

{ IXMLCalculationSequenceNumericType_cbc }

  IXMLCalculationSequenceNumericType_cbc = interface(IXMLNode)
    ['{F901DD76-4CAD-4D2D-8DA8-F0E04269091F}']
  end;

{ IXMLTransactionCurrencyTaxAmountType_cbc }

  IXMLTransactionCurrencyTaxAmountType_cbc = interface(IXMLNode)
    ['{5D027A4B-077A-42E4-98F2-7C8679BD4A33}']
  end;

{ IXMLPercentType_cbc }

  IXMLPercentType_cbc = interface(IXMLNode)
    ['{0C95A66D-5C55-4AD2-B569-2E3B07BC2E1C}']
  end;

{ IXMLBaseUnitMeasureType_cbc }

  IXMLBaseUnitMeasureType_cbc = interface(IXMLNode)
    ['{65AC3CFD-714F-4801-BE06-6286DB73E831}']
  end;

{ IXMLTaxCategoryType_cac }

  IXMLTaxCategoryType_cac = interface(IXMLNode)
    ['{1BB54A80-3E2F-40DF-8D9E-9234109EA6BF}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    function Get_TaxExemptionReasonCode: IXMLTaxExemptionReasonCodeType_cbc;
    function Get_TaxExemptionReason: IXMLTaxExemptionReasonType_cbc;
    function Get_TaxScheme: IXMLTaxSchemeType_cac;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
    property TaxExemptionReasonCode: IXMLTaxExemptionReasonCodeType_cbc read Get_TaxExemptionReasonCode;
    property TaxExemptionReason: IXMLTaxExemptionReasonType_cbc read Get_TaxExemptionReason;
    property TaxScheme: IXMLTaxSchemeType_cac read Get_TaxScheme;
  end;

{ IXMLTaxExemptionReasonCodeType_cbc }

  IXMLTaxExemptionReasonCodeType_cbc = interface(IXMLNode)
    ['{98CA276C-9071-4B23-8E4F-360CE2779D62}']
  end;

{ IXMLTaxExemptionReasonType_cbc }

  IXMLTaxExemptionReasonType_cbc = interface(IXMLNode)
    ['{655403CB-EB70-4855-9E37-F0D052ADC189}']
  end;

{ IXMLPriceType_cac }

  IXMLPriceType_cac = interface(IXMLNode)
    ['{AA89584B-1260-411D-BD79-057828FB899B}']
    { Property Accessors }
    function Get_PriceAmount: IXMLPriceAmountType_cbc;
    { Methods & Properties }
    property PriceAmount: IXMLPriceAmountType_cbc read Get_PriceAmount;
  end;

{ IXMLPriceAmountType_cbc }

  IXMLPriceAmountType_cbc = interface(IXMLNode)
    ['{D4BFAA86-6343-4D78-8F5E-FB00B4AED6E6}']
  end;

{ IXMLTemperatureType_cac }

  IXMLTemperatureType_cac = interface(IXMLNode)
    ['{237ADA19-DCC4-443E-BCF4-72F9A37FE31E}']
    { Property Accessors }
    function Get_AttributeID: IXMLAttributeIDType_cbc;
    function Get_Measure: IXMLMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
    { Methods & Properties }
    property AttributeID: IXMLAttributeIDType_cbc read Get_AttributeID;
    property Measure: IXMLMeasureType_cbc read Get_Measure;
    property Description: IXMLDescriptionType_cbcList read Get_Description;
  end;

{ IXMLTemperatureType_cacList }

  IXMLTemperatureType_cacList = interface(IXMLNodeCollection)
    ['{F537BE6C-A39A-4591-97C2-F3A6884E55B4}']
    { Methods & Properties }
    function Add: IXMLTemperatureType_cac;
    function Insert(const Index: Integer): IXMLTemperatureType_cac;

    function Get_Item(Index: Integer): IXMLTemperatureType_cac;
    property Items[Index: Integer]: IXMLTemperatureType_cac read Get_Item; default;
  end;

{ IXMLShipmentStageType_cac }

  IXMLShipmentStageType_cac = interface(IXMLNode)
    ['{40B4701F-1ED9-4C00-9B07-170E60F30AAA}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportModeCode: IXMLTransportModeCodeType_cbc;
    function Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
    function Get_TransitDirectionCode: IXMLTransitDirectionCodeType_cbc;
    function Get_Instructions: IXMLInstructionsType_cbcList;
    function Get_TransitPeriod: IXMLPeriodType_cac;
    function Get_TransportMeans: IXMLTransportMeansType_cac;
    function Get_DriverPerson: IXMLPersonType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property TransportModeCode: IXMLTransportModeCodeType_cbc read Get_TransportModeCode;
    property TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc read Get_TransportMeansTypeCode;
    property TransitDirectionCode: IXMLTransitDirectionCodeType_cbc read Get_TransitDirectionCode;
    property Instructions: IXMLInstructionsType_cbcList read Get_Instructions;
    property TransitPeriod: IXMLPeriodType_cac read Get_TransitPeriod;
    property TransportMeans: IXMLTransportMeansType_cac read Get_TransportMeans;
    property DriverPerson: IXMLPersonType_cacList read Get_DriverPerson;
  end;

{ IXMLShipmentStageType_cacList }

  IXMLShipmentStageType_cacList = interface(IXMLNodeCollection)
    ['{39432B69-E7BB-4B36-B88D-FCF8E60339CB}']
    { Methods & Properties }
    function Add: IXMLShipmentStageType_cac;
    function Insert(const Index: Integer): IXMLShipmentStageType_cac;

    function Get_Item(Index: Integer): IXMLShipmentStageType_cac;
    property Items[Index: Integer]: IXMLShipmentStageType_cac read Get_Item; default;
  end;

{ IXMLTransportModeCodeType_cbc }

  IXMLTransportModeCodeType_cbc = interface(IXMLNode)
    ['{3AB619A0-D590-49C2-B771-247115240D69}']
  end;

{ IXMLTransportMeansTypeCodeType_cbc }

  IXMLTransportMeansTypeCodeType_cbc = interface(IXMLNode)
    ['{DA4B868C-2115-4915-A4F5-97A66BC8AB68}']
  end;

{ IXMLTransitDirectionCodeType_cbc }

  IXMLTransitDirectionCodeType_cbc = interface(IXMLNode)
    ['{FADA1142-9E45-494A-95C8-4C393B05DB1F}']
  end;

{ IXMLTransportMeansType_cac }

  IXMLTransportMeansType_cac = interface(IXMLNode)
    ['{D0567851-A21C-4379-8569-7317E120D95C}']
    { Property Accessors }
    function Get_JourneyID: IXMLJourneyIDType_cbc;
    function Get_RegistrationNationalityID: IXMLRegistrationNationalityIDType_cbc;
    function Get_RegistrationNationality: IXMLRegistrationNationalityType_cbcList;
    function Get_DirectionCode: IXMLDirectionCodeType_cbc;
    function Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
    function Get_TradeServiceCode: IXMLTradeServiceCodeType_cbc;
    function Get_Stowage: IXMLStowageType_cac;
    function Get_AirTransport: IXMLAirTransportType_cac;
    function Get_RoadTransport: IXMLRoadTransportType_cac;
    function Get_RailTransport: IXMLRailTransportType_cac;
    function Get_MaritimeTransport: IXMLMaritimeTransportType_cac;
    function Get_OwnerParty: IXMLPartyType_cac;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    { Methods & Properties }
    property JourneyID: IXMLJourneyIDType_cbc read Get_JourneyID;
    property RegistrationNationalityID: IXMLRegistrationNationalityIDType_cbc read Get_RegistrationNationalityID;
    property RegistrationNationality: IXMLRegistrationNationalityType_cbcList read Get_RegistrationNationality;
    property DirectionCode: IXMLDirectionCodeType_cbc read Get_DirectionCode;
    property TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc read Get_TransportMeansTypeCode;
    property TradeServiceCode: IXMLTradeServiceCodeType_cbc read Get_TradeServiceCode;
    property Stowage: IXMLStowageType_cac read Get_Stowage;
    property AirTransport: IXMLAirTransportType_cac read Get_AirTransport;
    property RoadTransport: IXMLRoadTransportType_cac read Get_RoadTransport;
    property RailTransport: IXMLRailTransportType_cac read Get_RailTransport;
    property MaritimeTransport: IXMLMaritimeTransportType_cac read Get_MaritimeTransport;
    property OwnerParty: IXMLPartyType_cac read Get_OwnerParty;
    property MeasurementDimension: IXMLDimensionType_cacList read Get_MeasurementDimension;
  end;

{ IXMLTransportMeansType_cacList }

  IXMLTransportMeansType_cacList = interface(IXMLNodeCollection)
    ['{5CA5443E-37E7-408E-9E84-BAF53E902334}']
    { Methods & Properties }
    function Add: IXMLTransportMeansType_cac;
    function Insert(const Index: Integer): IXMLTransportMeansType_cac;

    function Get_Item(Index: Integer): IXMLTransportMeansType_cac;
    property Items[Index: Integer]: IXMLTransportMeansType_cac read Get_Item; default;
  end;

{ IXMLJourneyIDType_cbc }

  IXMLJourneyIDType_cbc = interface(IXMLNode)
    ['{E8EA90F5-526F-4787-8F2B-BE7B9031E764}']
  end;

{ IXMLRegistrationNationalityIDType_cbc }

  IXMLRegistrationNationalityIDType_cbc = interface(IXMLNode)
    ['{7C304077-CCB2-409B-BFC5-73FF9F757001}']
  end;

{ IXMLRegistrationNationalityType_cbc }

  IXMLRegistrationNationalityType_cbc = interface(IXMLNode)
    ['{A2A5054A-3B6E-41F7-A5E6-77F517D68922}']
  end;

{ IXMLRegistrationNationalityType_cbcList }

  IXMLRegistrationNationalityType_cbcList = interface(IXMLNodeCollection)
    ['{6C8C0341-8DFC-49DB-B7A7-4B37D45E1B5B}']
    { Methods & Properties }
    function Add: IXMLRegistrationNationalityType_cbc;
    function Insert(const Index: Integer): IXMLRegistrationNationalityType_cbc;

    function Get_Item(Index: Integer): IXMLRegistrationNationalityType_cbc;
    property Items[Index: Integer]: IXMLRegistrationNationalityType_cbc read Get_Item; default;
  end;

{ IXMLDirectionCodeType_cbc }

  IXMLDirectionCodeType_cbc = interface(IXMLNode)
    ['{9AEFC21E-DD04-459D-B120-FC32C0871F35}']
  end;

{ IXMLTradeServiceCodeType_cbc }

  IXMLTradeServiceCodeType_cbc = interface(IXMLNode)
    ['{B07406F8-B58E-4E53-B4B0-F1176284A7AB}']
  end;

{ IXMLStowageType_cac }

  IXMLStowageType_cac = interface(IXMLNode)
    ['{9ADBB833-4935-42F4-8537-477EE1A84497}']
    { Property Accessors }
    function Get_LocationID: IXMLLocationIDType_cbc;
    function Get_Location: IXMLLocationType_cbcList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    { Methods & Properties }
    property LocationID: IXMLLocationIDType_cbc read Get_LocationID;
    property Location: IXMLLocationType_cbcList read Get_Location;
    property MeasurementDimension: IXMLDimensionType_cacList read Get_MeasurementDimension;
  end;

{ IXMLLocationIDType_cbc }

  IXMLLocationIDType_cbc = interface(IXMLNode)
    ['{DF617628-D6B3-4920-B055-8D96DD4BAAC5}']
  end;

{ IXMLLocationType_cbc }

  IXMLLocationType_cbc = interface(IXMLNode)
    ['{6706033A-44E2-4180-9966-5D895B8B07FB}']
  end;

{ IXMLLocationType_cbcList }

  IXMLLocationType_cbcList = interface(IXMLNodeCollection)
    ['{017B67EB-CDFD-4AA1-8669-2CD473F55F7C}']
    { Methods & Properties }
    function Add: IXMLLocationType_cbc;
    function Insert(const Index: Integer): IXMLLocationType_cbc;

    function Get_Item(Index: Integer): IXMLLocationType_cbc;
    property Items[Index: Integer]: IXMLLocationType_cbc read Get_Item; default;
  end;

{ IXMLAirTransportType_cac }

  IXMLAirTransportType_cac = interface(IXMLNode)
    ['{429C087B-C2EB-4136-8E62-9246A4FE832B}']
    { Property Accessors }
    function Get_AircraftID: IXMLAircraftIDType_cbc;
    { Methods & Properties }
    property AircraftID: IXMLAircraftIDType_cbc read Get_AircraftID;
  end;

{ IXMLAircraftIDType_cbc }

  IXMLAircraftIDType_cbc = interface(IXMLNode)
    ['{F8724040-D1E7-462B-B50E-1D6376BCB34D}']
  end;

{ IXMLRoadTransportType_cac }

  IXMLRoadTransportType_cac = interface(IXMLNode)
    ['{2ADC2BFD-EB70-402F-90E2-A00B6690CDBC}']
    { Property Accessors }
    function Get_LicensePlateID: IXMLLicensePlateIDType_cbc;
    { Methods & Properties }
    property LicensePlateID: IXMLLicensePlateIDType_cbc read Get_LicensePlateID;
  end;

{ IXMLLicensePlateIDType_cbc }

  IXMLLicensePlateIDType_cbc = interface(IXMLNode)
    ['{B9190692-DF52-4467-99E5-383827AAD615}']
  end;

{ IXMLRailTransportType_cac }

  IXMLRailTransportType_cac = interface(IXMLNode)
    ['{70F0F4F9-2E1E-495E-ACC9-67E726A946D1}']
    { Property Accessors }
    function Get_TrainID: IXMLTrainIDType_cbc;
    function Get_RailCarID: IXMLRailCarIDType_cbc;
    { Methods & Properties }
    property TrainID: IXMLTrainIDType_cbc read Get_TrainID;
    property RailCarID: IXMLRailCarIDType_cbc read Get_RailCarID;
  end;

{ IXMLTrainIDType_cbc }

  IXMLTrainIDType_cbc = interface(IXMLNode)
    ['{A67CE5BC-E89D-49AA-9A6B-8BB601FF18FA}']
  end;

{ IXMLRailCarIDType_cbc }

  IXMLRailCarIDType_cbc = interface(IXMLNode)
    ['{70C35054-1363-4342-B252-B3F3C426C619}']
  end;

{ IXMLMaritimeTransportType_cac }

  IXMLMaritimeTransportType_cac = interface(IXMLNode)
    ['{1DDCFEA6-1131-495A-B705-DD1DD6EC6315}']
    { Property Accessors }
    function Get_VesselID: IXMLVesselIDType_cbc;
    function Get_VesselName: IXMLVesselNameType_cbc;
    function Get_RadioCallSignID: IXMLRadioCallSignIDType_cbc;
    function Get_ShipsRequirements: IXMLShipsRequirementsType_cbcList;
    function Get_GrossTonnageMeasure: IXMLGrossTonnageMeasureType_cbc;
    function Get_NetTonnageMeasure: IXMLNetTonnageMeasureType_cbc;
    function Get_RegistryCertificateDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_RegistryPortLocation: IXMLLocationType_cac;
    { Methods & Properties }
    property VesselID: IXMLVesselIDType_cbc read Get_VesselID;
    property VesselName: IXMLVesselNameType_cbc read Get_VesselName;
    property RadioCallSignID: IXMLRadioCallSignIDType_cbc read Get_RadioCallSignID;
    property ShipsRequirements: IXMLShipsRequirementsType_cbcList read Get_ShipsRequirements;
    property GrossTonnageMeasure: IXMLGrossTonnageMeasureType_cbc read Get_GrossTonnageMeasure;
    property NetTonnageMeasure: IXMLNetTonnageMeasureType_cbc read Get_NetTonnageMeasure;
    property RegistryCertificateDocumentReference: IXMLDocumentReferenceType_cac read Get_RegistryCertificateDocumentReference;
    property RegistryPortLocation: IXMLLocationType_cac read Get_RegistryPortLocation;
  end;

{ IXMLVesselIDType_cbc }

  IXMLVesselIDType_cbc = interface(IXMLNode)
    ['{5D74839F-C670-44F1-95F3-D63557C963B3}']
  end;

{ IXMLVesselNameType_cbc }

  IXMLVesselNameType_cbc = interface(IXMLNode)
    ['{F804084E-22CB-487C-A9A1-EE9404AB9E22}']
  end;

{ IXMLRadioCallSignIDType_cbc }

  IXMLRadioCallSignIDType_cbc = interface(IXMLNode)
    ['{442291CA-78B2-4C36-8061-07B8B9459110}']
  end;

{ IXMLShipsRequirementsType_cbc }

  IXMLShipsRequirementsType_cbc = interface(IXMLNode)
    ['{2FDE9C0F-1532-4D05-9498-C3D586EF15D4}']
  end;

{ IXMLShipsRequirementsType_cbcList }

  IXMLShipsRequirementsType_cbcList = interface(IXMLNodeCollection)
    ['{750C92B6-295E-41A7-9799-684D37B20E0F}']
    { Methods & Properties }
    function Add: IXMLShipsRequirementsType_cbc;
    function Insert(const Index: Integer): IXMLShipsRequirementsType_cbc;

    function Get_Item(Index: Integer): IXMLShipsRequirementsType_cbc;
    property Items[Index: Integer]: IXMLShipsRequirementsType_cbc read Get_Item; default;
  end;

{ IXMLGrossTonnageMeasureType_cbc }

  IXMLGrossTonnageMeasureType_cbc = interface(IXMLNode)
    ['{AE833374-874D-4F52-8DE6-AFAD8750A92D}']
  end;

{ IXMLNetTonnageMeasureType_cbc }

  IXMLNetTonnageMeasureType_cbc = interface(IXMLNode)
    ['{C2848FE8-FEF2-481D-B624-BADBAFE5E59C}']
  end;

{ IXMLTransportHandlingUnitType_cac }

  IXMLTransportHandlingUnitType_cac = interface(IXMLNode)
    ['{F7CE914C-DF3A-4C2E-8E64-02A75929E2F5}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportHandlingUnitTypeCode: IXMLTransportHandlingUnitTypeCodeType_cbc;
    function Get_HandlingCode: IXMLHandlingCodeType_cbc;
    function Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
    function Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
    function Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
    function Get_TotalPackageQuantity: IXMLTotalPackageQuantityType_cbc;
    function Get_DamageRemarks: IXMLDamageRemarksType_cbcList;
    function Get_TraceID: IXMLTraceIDType_cbc;
    function Get_ActualPackage: IXMLPackageType_cacList;
    function Get_TransportEquipment: IXMLTransportEquipmentType_cacList;
    function Get_TransportMeans: IXMLTransportMeansType_cacList;
    function Get_HazardousGoodsTransit: IXMLHazardousGoodsTransitType_cacList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    function Get_MinimumTemperature: IXMLTemperatureType_cac;
    function Get_MaximumTemperature: IXMLTemperatureType_cac;
    function Get_FloorSpaceMeasurementDimension: IXMLDimensionType_cac;
    function Get_PalletSpaceMeasurementDimension: IXMLDimensionType_cac;
    function Get_ShipmentDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_CustomsDeclaration: IXMLCustomsDeclarationType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property TransportHandlingUnitTypeCode: IXMLTransportHandlingUnitTypeCodeType_cbc read Get_TransportHandlingUnitTypeCode;
    property HandlingCode: IXMLHandlingCodeType_cbc read Get_HandlingCode;
    property HandlingInstructions: IXMLHandlingInstructionsType_cbc read Get_HandlingInstructions;
    property HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc read Get_HazardousRiskIndicator;
    property TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc read Get_TotalGoodsItemQuantity;
    property TotalPackageQuantity: IXMLTotalPackageQuantityType_cbc read Get_TotalPackageQuantity;
    property DamageRemarks: IXMLDamageRemarksType_cbcList read Get_DamageRemarks;
    property TraceID: IXMLTraceIDType_cbc read Get_TraceID;
    property ActualPackage: IXMLPackageType_cacList read Get_ActualPackage;
    property TransportEquipment: IXMLTransportEquipmentType_cacList read Get_TransportEquipment;
    property TransportMeans: IXMLTransportMeansType_cacList read Get_TransportMeans;
    property HazardousGoodsTransit: IXMLHazardousGoodsTransitType_cacList read Get_HazardousGoodsTransit;
    property MeasurementDimension: IXMLDimensionType_cacList read Get_MeasurementDimension;
    property MinimumTemperature: IXMLTemperatureType_cac read Get_MinimumTemperature;
    property MaximumTemperature: IXMLTemperatureType_cac read Get_MaximumTemperature;
    property FloorSpaceMeasurementDimension: IXMLDimensionType_cac read Get_FloorSpaceMeasurementDimension;
    property PalletSpaceMeasurementDimension: IXMLDimensionType_cac read Get_PalletSpaceMeasurementDimension;
    property ShipmentDocumentReference: IXMLDocumentReferenceType_cacList read Get_ShipmentDocumentReference;
    property CustomsDeclaration: IXMLCustomsDeclarationType_cacList read Get_CustomsDeclaration;
  end;

{ IXMLTransportHandlingUnitType_cacList }

  IXMLTransportHandlingUnitType_cacList = interface(IXMLNodeCollection)
    ['{6BEF28D7-CBAE-4427-87EB-B23702F66CDD}']
    { Methods & Properties }
    function Add: IXMLTransportHandlingUnitType_cac;
    function Insert(const Index: Integer): IXMLTransportHandlingUnitType_cac;

    function Get_Item(Index: Integer): IXMLTransportHandlingUnitType_cac;
    property Items[Index: Integer]: IXMLTransportHandlingUnitType_cac read Get_Item; default;
  end;

{ IXMLTransportHandlingUnitTypeCodeType_cbc }

  IXMLTransportHandlingUnitTypeCodeType_cbc = interface(IXMLNode)
    ['{F3A48747-2272-47CB-A03A-F839825FBF34}']
  end;

{ IXMLTotalPackageQuantityType_cbc }

  IXMLTotalPackageQuantityType_cbc = interface(IXMLNode)
    ['{CDBC8FB0-BFE5-4F40-82F4-EB93BA0B8A34}']
  end;

{ IXMLDamageRemarksType_cbc }

  IXMLDamageRemarksType_cbc = interface(IXMLNode)
    ['{8E6B297E-861F-48DF-BA28-E6E4417117E3}']
  end;

{ IXMLDamageRemarksType_cbcList }

  IXMLDamageRemarksType_cbcList = interface(IXMLNodeCollection)
    ['{9D41BB82-97C8-4368-9299-DA8CE33A61EC}']
    { Methods & Properties }
    function Add: IXMLDamageRemarksType_cbc;
    function Insert(const Index: Integer): IXMLDamageRemarksType_cbc;

    function Get_Item(Index: Integer): IXMLDamageRemarksType_cbc;
    property Items[Index: Integer]: IXMLDamageRemarksType_cbc read Get_Item; default;
  end;

{ IXMLPackageType_cac }

  IXMLPackageType_cac = interface(IXMLNode)
    ['{D7085462-D739-4333-B8E7-F31D733D2D2F}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_ReturnableMaterialIndicator: IXMLReturnableMaterialIndicatorType_cbc;
    function Get_PackageLevelCode: IXMLPackageLevelCodeType_cbc;
    function Get_PackagingTypeCode: IXMLPackagingTypeCodeType_cbc;
    function Get_PackingMaterial: IXMLPackingMaterialType_cbcList;
    function Get_ContainedPackage: IXMLPackageType_cacList;
    function Get_GoodsItem: IXMLGoodsItemType_cacList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Quantity: IXMLQuantityType_cbc read Get_Quantity;
    property ReturnableMaterialIndicator: IXMLReturnableMaterialIndicatorType_cbc read Get_ReturnableMaterialIndicator;
    property PackageLevelCode: IXMLPackageLevelCodeType_cbc read Get_PackageLevelCode;
    property PackagingTypeCode: IXMLPackagingTypeCodeType_cbc read Get_PackagingTypeCode;
    property PackingMaterial: IXMLPackingMaterialType_cbcList read Get_PackingMaterial;
    property ContainedPackage: IXMLPackageType_cacList read Get_ContainedPackage;
    property GoodsItem: IXMLGoodsItemType_cacList read Get_GoodsItem;
    property MeasurementDimension: IXMLDimensionType_cacList read Get_MeasurementDimension;
  end;

{ IXMLPackageType_cacList }

  IXMLPackageType_cacList = interface(IXMLNodeCollection)
    ['{7DA7B639-FD47-4DD3-A333-A336C4F1BC69}']
    { Methods & Properties }
    function Add: IXMLPackageType_cac;
    function Insert(const Index: Integer): IXMLPackageType_cac;

    function Get_Item(Index: Integer): IXMLPackageType_cac;
    property Items[Index: Integer]: IXMLPackageType_cac read Get_Item; default;
  end;

{ IXMLReturnableMaterialIndicatorType_cbc }

  IXMLReturnableMaterialIndicatorType_cbc = interface(IXMLNode)
    ['{AD50446D-E5B3-475B-B95A-DE6651A35DE0}']
  end;

{ IXMLPackageLevelCodeType_cbc }

  IXMLPackageLevelCodeType_cbc = interface(IXMLNode)
    ['{5EA488BE-011D-48A8-9E9B-F01B0F492C65}']
  end;

{ IXMLPackagingTypeCodeType_cbc }

  IXMLPackagingTypeCodeType_cbc = interface(IXMLNode)
    ['{A6274894-C084-42B8-816B-D3738F48CA44}']
  end;

{ IXMLPackingMaterialType_cbc }

  IXMLPackingMaterialType_cbc = interface(IXMLNode)
    ['{E1684E03-18FD-427A-B898-A6AB44B8C9B9}']
  end;

{ IXMLPackingMaterialType_cbcList }

  IXMLPackingMaterialType_cbcList = interface(IXMLNodeCollection)
    ['{99AF9EC3-317D-4763-97D9-D743370696FD}']
    { Methods & Properties }
    function Add: IXMLPackingMaterialType_cbc;
    function Insert(const Index: Integer): IXMLPackingMaterialType_cbc;

    function Get_Item(Index: Integer): IXMLPackingMaterialType_cbc;
    property Items[Index: Integer]: IXMLPackingMaterialType_cbc read Get_Item; default;
  end;

{ IXMLTransportEquipmentType_cac }

  IXMLTransportEquipmentType_cac = interface(IXMLNode)
    ['{9B6D57D5-4C05-4DAF-AB6F-5A9DD29C315E}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportEquipmentTypeCode: IXMLTransportEquipmentTypeCodeType_cbc;
    function Get_Description: IXMLDescriptionType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property TransportEquipmentTypeCode: IXMLTransportEquipmentTypeCodeType_cbc read Get_TransportEquipmentTypeCode;
    property Description: IXMLDescriptionType_cbc read Get_Description;
  end;

{ IXMLTransportEquipmentType_cacList }

  IXMLTransportEquipmentType_cacList = interface(IXMLNodeCollection)
    ['{C4CC6094-F228-4CFE-AF96-43A1171E25AA}']
    { Methods & Properties }
    function Add: IXMLTransportEquipmentType_cac;
    function Insert(const Index: Integer): IXMLTransportEquipmentType_cac;

    function Get_Item(Index: Integer): IXMLTransportEquipmentType_cac;
    property Items[Index: Integer]: IXMLTransportEquipmentType_cac read Get_Item; default;
  end;

{ IXMLTransportEquipmentTypeCodeType_cbc }

  IXMLTransportEquipmentTypeCodeType_cbc = interface(IXMLNode)
    ['{A1166B9B-E8BB-4A01-B7F7-A3EA7E895E59}']
  end;

{ IXMLHazardousGoodsTransitType_cac }

  IXMLHazardousGoodsTransitType_cac = interface(IXMLNode)
    ['{7F795FF4-66B9-4D04-9C15-06879314F036}']
    { Property Accessors }
    function Get_TransportEmergencyCardCode: IXMLTransportEmergencyCardCodeType_cbc;
    function Get_PackingCriteriaCode: IXMLPackingCriteriaCodeType_cbc;
    function Get_HazardousRegulationCode: IXMLHazardousRegulationCodeType_cbc;
    function Get_InhalationToxicityZoneCode: IXMLInhalationToxicityZoneCodeType_cbc;
    function Get_TransportAuthorizationCode: IXMLTransportAuthorizationCodeType_cbc;
    function Get_MaximumTemperature: IXMLTemperatureType_cac;
    function Get_MinimumTemperature: IXMLTemperatureType_cac;
    { Methods & Properties }
    property TransportEmergencyCardCode: IXMLTransportEmergencyCardCodeType_cbc read Get_TransportEmergencyCardCode;
    property PackingCriteriaCode: IXMLPackingCriteriaCodeType_cbc read Get_PackingCriteriaCode;
    property HazardousRegulationCode: IXMLHazardousRegulationCodeType_cbc read Get_HazardousRegulationCode;
    property InhalationToxicityZoneCode: IXMLInhalationToxicityZoneCodeType_cbc read Get_InhalationToxicityZoneCode;
    property TransportAuthorizationCode: IXMLTransportAuthorizationCodeType_cbc read Get_TransportAuthorizationCode;
    property MaximumTemperature: IXMLTemperatureType_cac read Get_MaximumTemperature;
    property MinimumTemperature: IXMLTemperatureType_cac read Get_MinimumTemperature;
  end;

{ IXMLHazardousGoodsTransitType_cacList }

  IXMLHazardousGoodsTransitType_cacList = interface(IXMLNodeCollection)
    ['{4C9FFD62-6170-4177-A8D8-6A41724A9C2E}']
    { Methods & Properties }
    function Add: IXMLHazardousGoodsTransitType_cac;
    function Insert(const Index: Integer): IXMLHazardousGoodsTransitType_cac;

    function Get_Item(Index: Integer): IXMLHazardousGoodsTransitType_cac;
    property Items[Index: Integer]: IXMLHazardousGoodsTransitType_cac read Get_Item; default;
  end;

{ IXMLTransportEmergencyCardCodeType_cbc }

  IXMLTransportEmergencyCardCodeType_cbc = interface(IXMLNode)
    ['{955B906E-C57C-4675-907D-4CDAAC33A2B2}']
  end;

{ IXMLPackingCriteriaCodeType_cbc }

  IXMLPackingCriteriaCodeType_cbc = interface(IXMLNode)
    ['{B0DC11DA-7001-4D37-853E-3173CBF1CF19}']
  end;

{ IXMLHazardousRegulationCodeType_cbc }

  IXMLHazardousRegulationCodeType_cbc = interface(IXMLNode)
    ['{82A1F2C9-AFB9-4ECF-9CFA-0FA9161A21A5}']
  end;

{ IXMLInhalationToxicityZoneCodeType_cbc }

  IXMLInhalationToxicityZoneCodeType_cbc = interface(IXMLNode)
    ['{32973372-5CAE-400C-8459-79BAC5B77CE4}']
  end;

{ IXMLTransportAuthorizationCodeType_cbc }

  IXMLTransportAuthorizationCodeType_cbc = interface(IXMLNode)
    ['{17B3C9C0-BCB0-46DE-A1B3-B53AA4AD41AE}']
  end;

{ IXMLCustomsDeclarationType_cac }

  IXMLCustomsDeclarationType_cac = interface(IXMLNode)
    ['{DC67C95F-EACA-4265-BAD0-50ADE8F3A059}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_IssuerParty: IXMLPartyType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property IssuerParty: IXMLPartyType_cac read Get_IssuerParty;
  end;

{ IXMLCustomsDeclarationType_cacList }

  IXMLCustomsDeclarationType_cacList = interface(IXMLNodeCollection)
    ['{141E2FBF-8442-4DF0-852F-F516E7F60437}']
    { Methods & Properties }
    function Add: IXMLCustomsDeclarationType_cac;
    function Insert(const Index: Integer): IXMLCustomsDeclarationType_cac;

    function Get_Item(Index: Integer): IXMLCustomsDeclarationType_cac;
    property Items[Index: Integer]: IXMLCustomsDeclarationType_cac read Get_Item; default;
  end;

{ IXMLDespatchLineType_cac }

  IXMLDespatchLineType_cac = interface(IXMLNode)
    ['{AEC3E9D4-FCD8-439D-BCDE-AA451334687B}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_DeliveredQuantity: IXMLDeliveredQuantityType_cbc;
    function Get_OutstandingQuantity: IXMLOutstandingQuantityType_cbc;
    function Get_OutstandingReason: IXMLOutstandingReasonType_cbcList;
    function Get_OversupplyQuantity: IXMLOversupplyQuantityType_cbc;
    function Get_OrderLineReference: IXMLOrderLineReferenceType_cac;
    function Get_DocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Item: IXMLItemType_cac;
    function Get_Shipment: IXMLShipmentType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Note: IXMLNoteType_cbcList read Get_Note;
    property DeliveredQuantity: IXMLDeliveredQuantityType_cbc read Get_DeliveredQuantity;
    property OutstandingQuantity: IXMLOutstandingQuantityType_cbc read Get_OutstandingQuantity;
    property OutstandingReason: IXMLOutstandingReasonType_cbcList read Get_OutstandingReason;
    property OversupplyQuantity: IXMLOversupplyQuantityType_cbc read Get_OversupplyQuantity;
    property OrderLineReference: IXMLOrderLineReferenceType_cac read Get_OrderLineReference;
    property DocumentReference: IXMLDocumentReferenceType_cacList read Get_DocumentReference;
    property Item: IXMLItemType_cac read Get_Item;
    property Shipment: IXMLShipmentType_cacList read Get_Shipment;
  end;

{ IXMLDespatchLineType_cacList }

  IXMLDespatchLineType_cacList = interface(IXMLNodeCollection)
    ['{2C74235D-AA84-400F-8887-2B115F41FEBD}']
    { Methods & Properties }
    function Add: IXMLDespatchLineType_cac;
    function Insert(const Index: Integer): IXMLDespatchLineType_cac;

    function Get_Item(Index: Integer): IXMLDespatchLineType_cac;
    property Items[Index: Integer]: IXMLDespatchLineType_cac read Get_Item; default;
  end;

{ IXMLDeliveredQuantityType_cbc }

  IXMLDeliveredQuantityType_cbc = interface(IXMLNode)
    ['{927DB21B-3E32-4761-84E5-5C885DA39725}']
  end;

{ IXMLOutstandingQuantityType_cbc }

  IXMLOutstandingQuantityType_cbc = interface(IXMLNode)
    ['{36797CEB-A6D9-4EB2-820F-BB90519A9E78}']
  end;

{ IXMLOutstandingReasonType_cbc }

  IXMLOutstandingReasonType_cbc = interface(IXMLNode)
    ['{6D9ED1FB-72D5-4BB8-9F0A-44F424318664}']
  end;

{ IXMLOutstandingReasonType_cbcList }

  IXMLOutstandingReasonType_cbcList = interface(IXMLNodeCollection)
    ['{1AB09AF3-072B-45F8-BCE0-8D2FC97D0FDA}']
    { Methods & Properties }
    function Add: IXMLOutstandingReasonType_cbc;
    function Insert(const Index: Integer): IXMLOutstandingReasonType_cbc;

    function Get_Item(Index: Integer): IXMLOutstandingReasonType_cbc;
    property Items[Index: Integer]: IXMLOutstandingReasonType_cbc read Get_Item; default;
  end;

{ IXMLOversupplyQuantityType_cbc }

  IXMLOversupplyQuantityType_cbc = interface(IXMLNode)
    ['{FD15B999-D834-45A6-A97C-ABC83FD4A324}']
  end;

{ Forward Decls }

  TXMLDespatchAdviceType = class;
  TXMLUBLExtensionsType_ext = class;
  TXMLUBLExtensionType_ext = class;
  TXMLExtensionContentType = class;
  TXMLUBLVersionIDType_cbc = class;
  TXMLCustomizationIDType_cbc = class;
  TXMLProfileIDType_cbc = class;
  TXMLIDType_cbc = class;
  TXMLCopyIndicatorType_cbc = class;
  TXMLUUIDType_cbc = class;
  TXMLIssueDateType_cbc = class;
  TXMLIssueTimeType_cbc = class;
  TXMLDespatchAdviceTypeCodeType_cbc = class;
  TXMLNoteType_cbc = class;
  TXMLNoteType_cbcList = class;
  TXMLLineCountNumericType_cbc = class;
  TXMLOrderReferenceType_cac = class;
  TXMLOrderReferenceType_cacList = class;
  TXMLSalesOrderIDType_cbc = class;
  TXMLOrderTypeCodeType_cbc = class;
  TXMLDocumentReferenceType_cac = class;
  TXMLDocumentReferenceType_cacList = class;
  TXMLDocumentTypeCodeType_cbc = class;
  TXMLDocumentTypeType_cbc = class;
  TXMLDocumentDescriptionType_cbc = class;
  TXMLDocumentDescriptionType_cbcList = class;
  TXMLAttachmentType_cac = class;
  TXMLEmbeddedDocumentBinaryObjectType_cbc = class;
  TXMLExternalReferenceType_cac = class;
  TXMLURIType_cbc = class;
  TXMLPeriodType_cac = class;
  TXMLStartDateType_cbc = class;
  TXMLStartTimeType_cbc = class;
  TXMLEndDateType_cbc = class;
  TXMLEndTimeType_cbc = class;
  TXMLDurationMeasureType_cbc = class;
  TXMLDescriptionType_cbc = class;
  TXMLDescriptionType_cbcList = class;
  TXMLPartyType_cac = class;
  TXMLWebsiteURIType_cbc = class;
  TXMLEndpointIDType_cbc = class;
  TXMLIndustryClassificationCodeType_cbc = class;
  TXMLPartyIdentificationType_cac = class;
  TXMLPartyIdentificationType_cacList = class;
  TXMLPartyNameType_cac = class;
  TXMLNameType_cbc = class;
  TXMLAddressType_cac = class;
  TXMLAddressType_cacList = class;
  TXMLPostboxType_cbc = class;
  TXMLRoomType_cbc = class;
  TXMLStreetNameType_cbc = class;
  TXMLBlockNameType_cbc = class;
  TXMLBuildingNameType_cbc = class;
  TXMLBuildingNumberType_cbc = class;
  TXMLCitySubdivisionNameType_cbc = class;
  TXMLCityNameType_cbc = class;
  TXMLPostalZoneType_cbc = class;
  TXMLRegionType_cbc = class;
  TXMLDistrictType_cbc = class;
  TXMLCountryType_cac = class;
  TXMLIdentificationCodeType_cbc = class;
  TXMLLocationType_cac = class;
  TXMLPartyTaxSchemeType_cac = class;
  TXMLRegistrationNameType_cbc = class;
  TXMLCompanyIDType_cbc = class;
  TXMLTaxSchemeType_cac = class;
  TXMLTaxTypeCodeType_cbc = class;
  TXMLPartyLegalEntityType_cac = class;
  TXMLPartyLegalEntityType_cacList = class;
  TXMLRegistrationDateType_cbc = class;
  TXMLSoleProprietorshipIndicatorType_cbc = class;
  TXMLCorporateStockAmountType_cbc = class;
  TXMLFullyPaidSharesIndicatorType_cbc = class;
  TXMLCorporateRegistrationSchemeType_cac = class;
  TXMLCorporateRegistrationTypeCodeType_cbc = class;
  TXMLContactType_cac = class;
  TXMLTelephoneType_cbc = class;
  TXMLTelefaxType_cbc = class;
  TXMLElectronicMailType_cbc = class;
  TXMLCommunicationType_cac = class;
  TXMLCommunicationType_cacList = class;
  TXMLChannelCodeType_cbc = class;
  TXMLChannelType_cbc = class;
  TXMLValueType_cbc = class;
  TXMLPersonType_cac = class;
  TXMLPersonType_cacList = class;
  TXMLFirstNameType_cbc = class;
  TXMLFamilyNameType_cbc = class;
  TXMLTitleType_cbc = class;
  TXMLMiddleNameType_cbc = class;
  TXMLNameSuffixType_cbc = class;
  TXMLNationalityIDType_cbc = class;
  TXMLFinancialAccountType_cac = class;
  TXMLCurrencyCodeType_cbc = class;
  TXMLPaymentNoteType_cbc = class;
  TXMLBranchType_cac = class;
  TXMLFinancialInstitutionType_cac = class;
  TXMLSignatureType_cac = class;
  TXMLSignatureType_cacList = class;
  TXMLSupplierPartyType_cac = class;
  TXMLCustomerPartyType_cac = class;
  TXMLShipmentType_cac = class;
  TXMLShipmentType_cacList = class;
  TXMLHandlingCodeType_cbc = class;
  TXMLHandlingInstructionsType_cbc = class;
  TXMLGrossWeightMeasureType_cbc = class;
  TXMLNetWeightMeasureType_cbc = class;
  TXMLGrossVolumeMeasureType_cbc = class;
  TXMLNetVolumeMeasureType_cbc = class;
  TXMLTotalGoodsItemQuantityType_cbc = class;
  TXMLTotalTransportHandlingUnitQuantityType_cbc = class;
  TXMLInsuranceValueAmountType_cbc = class;
  TXMLDeclaredCustomsValueAmountType_cbc = class;
  TXMLDeclaredForCarriageValueAmountType_cbc = class;
  TXMLDeclaredStatisticsValueAmountType_cbc = class;
  TXMLFreeOnBoardValueAmountType_cbc = class;
  TXMLSpecialInstructionsType_cbc = class;
  TXMLSpecialInstructionsType_cbcList = class;
  TXMLGoodsItemType_cac = class;
  TXMLGoodsItemType_cacList = class;
  TXMLHazardousRiskIndicatorType_cbc = class;
  TXMLValueAmountType_cbc = class;
  TXMLChargeableWeightMeasureType_cbc = class;
  TXMLQuantityType_cbc = class;
  TXMLRequiredCustomsIDType_cbc = class;
  TXMLCustomsStatusCodeType_cbc = class;
  TXMLCustomsTariffQuantityType_cbc = class;
  TXMLCustomsImportClassifiedIndicatorType_cbc = class;
  TXMLChargeableQuantityType_cbc = class;
  TXMLReturnableQuantityType_cbc = class;
  TXMLTraceIDType_cbc = class;
  TXMLItemType_cac = class;
  TXMLItemType_cacList = class;
  TXMLKeywordType_cbc = class;
  TXMLBrandNameType_cbc = class;
  TXMLModelNameType_cbc = class;
  TXMLItemIdentificationType_cac = class;
  TXMLItemIdentificationType_cacList = class;
  TXMLCommodityClassificationType_cac = class;
  TXMLCommodityClassificationType_cacList = class;
  TXMLItemClassificationCodeType_cbc = class;
  TXMLItemInstanceType_cac = class;
  TXMLItemInstanceType_cacList = class;
  TXMLProductTraceIDType_cbc = class;
  TXMLManufactureDateType_cbc = class;
  TXMLManufactureTimeType_cbc = class;
  TXMLBestBeforeDateType_cbc = class;
  TXMLRegistrationIDType_cbc = class;
  TXMLSerialIDType_cbc = class;
  TXMLItemPropertyType_cac = class;
  TXMLItemPropertyType_cacList = class;
  TXMLNameCodeType_cbc = class;
  TXMLTestMethodType_cbc = class;
  TXMLValueQuantityType_cbc = class;
  TXMLValueQualifierType_cbc = class;
  TXMLValueQualifierType_cbcList = class;
  TXMLImportanceCodeType_cbc = class;
  TXMLListValueType_cbc = class;
  TXMLListValueType_cbcList = class;
  TXMLItemPropertyGroupType_cac = class;
  TXMLItemPropertyGroupType_cacList = class;
  TXMLDimensionType_cac = class;
  TXMLDimensionType_cacList = class;
  TXMLAttributeIDType_cbc = class;
  TXMLMeasureType_cbc = class;
  TXMLMinimumMeasureType_cbc = class;
  TXMLMaximumMeasureType_cbc = class;
  TXMLItemPropertyRangeType_cac = class;
  TXMLMinimumValueType_cbc = class;
  TXMLMaximumValueType_cbc = class;
  TXMLLotIdentificationType_cac = class;
  TXMLLotNumberIDType_cbc = class;
  TXMLExpiryDateType_cbc = class;
  TXMLAllowanceChargeType_cac = class;
  TXMLAllowanceChargeType_cacList = class;
  TXMLChargeIndicatorType_cbc = class;
  TXMLAllowanceChargeReasonType_cbc = class;
  TXMLMultiplierFactorNumericType_cbc = class;
  TXMLSequenceNumericType_cbc = class;
  TXMLAmountType_cbc = class;
  TXMLBaseAmountType_cbc = class;
  TXMLPerUnitAmountType_cbc = class;
  TXMLInvoiceLineType_cac = class;
  TXMLInvoiceLineType_cacList = class;
  TXMLInvoicedQuantityType_cbc = class;
  TXMLLineExtensionAmountType_cbc = class;
  TXMLOrderLineReferenceType_cac = class;
  TXMLOrderLineReferenceType_cacList = class;
  TXMLLineIDType_cbc = class;
  TXMLSalesOrderLineIDType_cbc = class;
  TXMLLineStatusCodeType_cbc = class;
  TXMLLineReferenceType_cac = class;
  TXMLLineReferenceType_cacList = class;
  TXMLDeliveryType_cac = class;
  TXMLDeliveryType_cacList = class;
  TXMLActualDeliveryDateType_cbc = class;
  TXMLActualDeliveryTimeType_cbc = class;
  TXMLLatestDeliveryDateType_cbc = class;
  TXMLLatestDeliveryTimeType_cbc = class;
  TXMLTrackingIDType_cbc = class;
  TXMLDespatchType_cac = class;
  TXMLActualDespatchDateType_cbc = class;
  TXMLActualDespatchTimeType_cbc = class;
  TXMLInstructionsType_cbc = class;
  TXMLInstructionsType_cbcList = class;
  TXMLDeliveryTermsType_cac = class;
  TXMLDeliveryTermsType_cacList = class;
  TXMLSpecialTermsType_cbc = class;
  TXMLTaxTotalType_cac = class;
  TXMLTaxTotalType_cacList = class;
  TXMLTaxAmountType_cbc = class;
  TXMLTaxSubtotalType_cac = class;
  TXMLTaxSubtotalType_cacList = class;
  TXMLTaxableAmountType_cbc = class;
  TXMLCalculationSequenceNumericType_cbc = class;
  TXMLTransactionCurrencyTaxAmountType_cbc = class;
  TXMLPercentType_cbc = class;
  TXMLBaseUnitMeasureType_cbc = class;
  TXMLTaxCategoryType_cac = class;
  TXMLTaxExemptionReasonCodeType_cbc = class;
  TXMLTaxExemptionReasonType_cbc = class;
  TXMLPriceType_cac = class;
  TXMLPriceAmountType_cbc = class;
  TXMLTemperatureType_cac = class;
  TXMLTemperatureType_cacList = class;
  TXMLShipmentStageType_cac = class;
  TXMLShipmentStageType_cacList = class;
  TXMLTransportModeCodeType_cbc = class;
  TXMLTransportMeansTypeCodeType_cbc = class;
  TXMLTransitDirectionCodeType_cbc = class;
  TXMLTransportMeansType_cac = class;
  TXMLTransportMeansType_cacList = class;
  TXMLJourneyIDType_cbc = class;
  TXMLRegistrationNationalityIDType_cbc = class;
  TXMLRegistrationNationalityType_cbc = class;
  TXMLRegistrationNationalityType_cbcList = class;
  TXMLDirectionCodeType_cbc = class;
  TXMLTradeServiceCodeType_cbc = class;
  TXMLStowageType_cac = class;
  TXMLLocationIDType_cbc = class;
  TXMLLocationType_cbc = class;
  TXMLLocationType_cbcList = class;
  TXMLAirTransportType_cac = class;
  TXMLAircraftIDType_cbc = class;
  TXMLRoadTransportType_cac = class;
  TXMLLicensePlateIDType_cbc = class;
  TXMLRailTransportType_cac = class;
  TXMLTrainIDType_cbc = class;
  TXMLRailCarIDType_cbc = class;
  TXMLMaritimeTransportType_cac = class;
  TXMLVesselIDType_cbc = class;
  TXMLVesselNameType_cbc = class;
  TXMLRadioCallSignIDType_cbc = class;
  TXMLShipsRequirementsType_cbc = class;
  TXMLShipsRequirementsType_cbcList = class;
  TXMLGrossTonnageMeasureType_cbc = class;
  TXMLNetTonnageMeasureType_cbc = class;
  TXMLTransportHandlingUnitType_cac = class;
  TXMLTransportHandlingUnitType_cacList = class;
  TXMLTransportHandlingUnitTypeCodeType_cbc = class;
  TXMLTotalPackageQuantityType_cbc = class;
  TXMLDamageRemarksType_cbc = class;
  TXMLDamageRemarksType_cbcList = class;
  TXMLPackageType_cac = class;
  TXMLPackageType_cacList = class;
  TXMLReturnableMaterialIndicatorType_cbc = class;
  TXMLPackageLevelCodeType_cbc = class;
  TXMLPackagingTypeCodeType_cbc = class;
  TXMLPackingMaterialType_cbc = class;
  TXMLPackingMaterialType_cbcList = class;
  TXMLTransportEquipmentType_cac = class;
  TXMLTransportEquipmentType_cacList = class;
  TXMLTransportEquipmentTypeCodeType_cbc = class;
  TXMLHazardousGoodsTransitType_cac = class;
  TXMLHazardousGoodsTransitType_cacList = class;
  TXMLTransportEmergencyCardCodeType_cbc = class;
  TXMLPackingCriteriaCodeType_cbc = class;
  TXMLHazardousRegulationCodeType_cbc = class;
  TXMLInhalationToxicityZoneCodeType_cbc = class;
  TXMLTransportAuthorizationCodeType_cbc = class;
  TXMLCustomsDeclarationType_cac = class;
  TXMLCustomsDeclarationType_cacList = class;
  TXMLDespatchLineType_cac = class;
  TXMLDespatchLineType_cacList = class;
  TXMLDeliveredQuantityType_cbc = class;
  TXMLOutstandingQuantityType_cbc = class;
  TXMLOutstandingReasonType_cbc = class;
  TXMLOutstandingReasonType_cbcList = class;
  TXMLOversupplyQuantityType_cbc = class;

{ TXMLDespatchAdviceType }

  TXMLDespatchAdviceType = class(TXMLNode, IXMLDespatchAdviceType)
  private
    FNote: IXMLNoteType_cbcList;
    FOrderReference: IXMLOrderReferenceType_cacList;
    FAdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    FSignature: IXMLSignatureType_cacList;
    FDespatchLine: IXMLDespatchLineType_cacList;
  protected
    { IXMLDespatchAdviceType }
    function Get_UBLExtensions: IXMLUBLExtensionsType_ext;
    function Get_UBLVersionID: IXMLUBLVersionIDType_cbc;
    function Get_CustomizationID: IXMLCustomizationIDType_cbc;
    function Get_ProfileID: IXMLProfileIDType_cbc;
    function Get_ID: IXMLIDType_cbc;
    function Get_CopyIndicator: IXMLCopyIndicatorType_cbc;
    function Get_UUID: IXMLUUIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_IssueTime: IXMLIssueTimeType_cbc;
    function Get_DespatchAdviceTypeCode: IXMLDespatchAdviceTypeCodeType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
    function Get_OrderReference: IXMLOrderReferenceType_cacList;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Signature: IXMLSignatureType_cacList;
    function Get_DespatchSupplierParty: IXMLSupplierPartyType_cac;
    function Get_DeliveryCustomerParty: IXMLCustomerPartyType_cac;
    function Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
    function Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
    function Get_OriginatorCustomerParty: IXMLCustomerPartyType_cac;
    function Get_Shipment: IXMLShipmentType_cac;
    function Get_DespatchLine: IXMLDespatchLineType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUBLExtensionsType_ext }

  TXMLUBLExtensionsType_ext = class(TXMLNodeCollection, IXMLUBLExtensionsType_ext)
  protected
    { IXMLUBLExtensionsType_ext }
    function Get_UBLExtension(Index: Integer): IXMLUBLExtensionType_ext;
    function Add: IXMLUBLExtensionType_ext;
    function Insert(const Index: Integer): IXMLUBLExtensionType_ext;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUBLExtensionType_ext }

  TXMLUBLExtensionType_ext = class(TXMLNode, IXMLUBLExtensionType_ext)
  protected
    { IXMLUBLExtensionType_ext }
    function Get_ExtensionContent: IXMLExtensionContentType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLExtensionContentType }

  TXMLExtensionContentType = class(TXMLNode, IXMLExtensionContentType)
  protected
    { IXMLExtensionContentType }
  end;

{ TXMLUBLVersionIDType_cbc }

  TXMLUBLVersionIDType_cbc = class(TXMLNode, IXMLUBLVersionIDType_cbc)
  protected
    { IXMLUBLVersionIDType_cbc }
  end;

{ TXMLCustomizationIDType_cbc }

  TXMLCustomizationIDType_cbc = class(TXMLNode, IXMLCustomizationIDType_cbc)
  protected
    { IXMLCustomizationIDType_cbc }
  end;

{ TXMLProfileIDType_cbc }

  TXMLProfileIDType_cbc = class(TXMLNode, IXMLProfileIDType_cbc)
  protected
    { IXMLProfileIDType_cbc }
  end;

{ TXMLIDType_cbc }

  TXMLIDType_cbc = class(TXMLNode, IXMLIDType_cbc)
  protected
    { IXMLIDType_cbc }
  end;

{ TXMLCopyIndicatorType_cbc }

  TXMLCopyIndicatorType_cbc = class(TXMLNode, IXMLCopyIndicatorType_cbc)
  protected
    { IXMLCopyIndicatorType_cbc }
  end;

{ TXMLUUIDType_cbc }

  TXMLUUIDType_cbc = class(TXMLNode, IXMLUUIDType_cbc)
  protected
    { IXMLUUIDType_cbc }
  end;

{ TXMLIssueDateType_cbc }

  TXMLIssueDateType_cbc = class(TXMLNode, IXMLIssueDateType_cbc)
  protected
    { IXMLIssueDateType_cbc }
  end;

{ TXMLIssueTimeType_cbc }

  TXMLIssueTimeType_cbc = class(TXMLNode, IXMLIssueTimeType_cbc)
  protected
    { IXMLIssueTimeType_cbc }
  end;

{ TXMLDespatchAdviceTypeCodeType_cbc }

  TXMLDespatchAdviceTypeCodeType_cbc = class(TXMLNode, IXMLDespatchAdviceTypeCodeType_cbc)
  protected
    { IXMLDespatchAdviceTypeCodeType_cbc }
  end;

{ TXMLNoteType_cbc }

  TXMLNoteType_cbc = class(TXMLNode, IXMLNoteType_cbc)
  protected
    { IXMLNoteType_cbc }
  end;

{ TXMLNoteType_cbcList }

  TXMLNoteType_cbcList = class(TXMLNodeCollection, IXMLNoteType_cbcList)
  protected
    { IXMLNoteType_cbcList }
    function Add: IXMLNoteType_cbc;
    function Insert(const Index: Integer): IXMLNoteType_cbc;

    function Get_Item(Index: Integer): IXMLNoteType_cbc;
  end;

{ TXMLLineCountNumericType_cbc }

  TXMLLineCountNumericType_cbc = class(TXMLNode, IXMLLineCountNumericType_cbc)
  protected
    { IXMLLineCountNumericType_cbc }
  end;

{ TXMLOrderReferenceType_cac }

  TXMLOrderReferenceType_cac = class(TXMLNode, IXMLOrderReferenceType_cac)
  protected
    { IXMLOrderReferenceType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_SalesOrderID: IXMLSalesOrderIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_OrderTypeCode: IXMLOrderTypeCodeType_cbc;
    function Get_DocumentReference: IXMLDocumentReferenceType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrderReferenceType_cacList }

  TXMLOrderReferenceType_cacList = class(TXMLNodeCollection, IXMLOrderReferenceType_cacList)
  protected
    { IXMLOrderReferenceType_cacList }
    function Add: IXMLOrderReferenceType_cac;
    function Insert(const Index: Integer): IXMLOrderReferenceType_cac;

    function Get_Item(Index: Integer): IXMLOrderReferenceType_cac;
  end;

{ TXMLSalesOrderIDType_cbc }

  TXMLSalesOrderIDType_cbc = class(TXMLNode, IXMLSalesOrderIDType_cbc)
  protected
    { IXMLSalesOrderIDType_cbc }
  end;

{ TXMLOrderTypeCodeType_cbc }

  TXMLOrderTypeCodeType_cbc = class(TXMLNode, IXMLOrderTypeCodeType_cbc)
  protected
    { IXMLOrderTypeCodeType_cbc }
  end;

{ TXMLDocumentReferenceType_cac }

  TXMLDocumentReferenceType_cac = class(TXMLNode, IXMLDocumentReferenceType_cac)
  private
    FDocumentDescription: IXMLDocumentDescriptionType_cbcList;
  protected
    { IXMLDocumentReferenceType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_DocumentTypeCode: IXMLDocumentTypeCodeType_cbc;
    function Get_DocumentType: IXMLDocumentTypeType_cbc;
    function Get_DocumentDescription: IXMLDocumentDescriptionType_cbcList;
    function Get_Attachment: IXMLAttachmentType_cac;
    function Get_ValidityPeriod: IXMLPeriodType_cac;
    function Get_IssuerParty: IXMLPartyType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocumentReferenceType_cacList }

  TXMLDocumentReferenceType_cacList = class(TXMLNodeCollection, IXMLDocumentReferenceType_cacList)
  protected
    { IXMLDocumentReferenceType_cacList }
    function Add: IXMLDocumentReferenceType_cac;
    function Insert(const Index: Integer): IXMLDocumentReferenceType_cac;

    function Get_Item(Index: Integer): IXMLDocumentReferenceType_cac;
  end;

{ TXMLDocumentTypeCodeType_cbc }

  TXMLDocumentTypeCodeType_cbc = class(TXMLNode, IXMLDocumentTypeCodeType_cbc)
  protected
    { IXMLDocumentTypeCodeType_cbc }
  end;

{ TXMLDocumentTypeType_cbc }

  TXMLDocumentTypeType_cbc = class(TXMLNode, IXMLDocumentTypeType_cbc)
  protected
    { IXMLDocumentTypeType_cbc }
  end;

{ TXMLDocumentDescriptionType_cbc }

  TXMLDocumentDescriptionType_cbc = class(TXMLNode, IXMLDocumentDescriptionType_cbc)
  protected
    { IXMLDocumentDescriptionType_cbc }
  end;

{ TXMLDocumentDescriptionType_cbcList }

  TXMLDocumentDescriptionType_cbcList = class(TXMLNodeCollection, IXMLDocumentDescriptionType_cbcList)
  protected
    { IXMLDocumentDescriptionType_cbcList }
    function Add: IXMLDocumentDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDocumentDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDocumentDescriptionType_cbc;
  end;

{ TXMLAttachmentType_cac }

  TXMLAttachmentType_cac = class(TXMLNode, IXMLAttachmentType_cac)
  protected
    { IXMLAttachmentType_cac }
    function Get_EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc;
    function Get_ExternalReference: IXMLExternalReferenceType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEmbeddedDocumentBinaryObjectType_cbc }

  TXMLEmbeddedDocumentBinaryObjectType_cbc = class(TXMLNode, IXMLEmbeddedDocumentBinaryObjectType_cbc)
  protected
    { IXMLEmbeddedDocumentBinaryObjectType_cbc }
  end;

{ TXMLExternalReferenceType_cac }

  TXMLExternalReferenceType_cac = class(TXMLNode, IXMLExternalReferenceType_cac)
  protected
    { IXMLExternalReferenceType_cac }
    function Get_URI: IXMLURIType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLURIType_cbc }

  TXMLURIType_cbc = class(TXMLNode, IXMLURIType_cbc)
  protected
    { IXMLURIType_cbc }
  end;

{ TXMLPeriodType_cac }

  TXMLPeriodType_cac = class(TXMLNode, IXMLPeriodType_cac)
  protected
    { IXMLPeriodType_cac }
    function Get_StartDate: IXMLStartDateType_cbc;
    function Get_StartTime: IXMLStartTimeType_cbc;
    function Get_EndDate: IXMLEndDateType_cbc;
    function Get_EndTime: IXMLEndTimeType_cbc;
    function Get_DurationMeasure: IXMLDurationMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStartDateType_cbc }

  TXMLStartDateType_cbc = class(TXMLNode, IXMLStartDateType_cbc)
  protected
    { IXMLStartDateType_cbc }
  end;

{ TXMLStartTimeType_cbc }

  TXMLStartTimeType_cbc = class(TXMLNode, IXMLStartTimeType_cbc)
  protected
    { IXMLStartTimeType_cbc }
  end;

{ TXMLEndDateType_cbc }

  TXMLEndDateType_cbc = class(TXMLNode, IXMLEndDateType_cbc)
  protected
    { IXMLEndDateType_cbc }
  end;

{ TXMLEndTimeType_cbc }

  TXMLEndTimeType_cbc = class(TXMLNode, IXMLEndTimeType_cbc)
  protected
    { IXMLEndTimeType_cbc }
  end;

{ TXMLDurationMeasureType_cbc }

  TXMLDurationMeasureType_cbc = class(TXMLNode, IXMLDurationMeasureType_cbc)
  protected
    { IXMLDurationMeasureType_cbc }
  end;

{ TXMLDescriptionType_cbc }

  TXMLDescriptionType_cbc = class(TXMLNode, IXMLDescriptionType_cbc)
  protected
    { IXMLDescriptionType_cbc }
  end;

{ TXMLDescriptionType_cbcList }

  TXMLDescriptionType_cbcList = class(TXMLNodeCollection, IXMLDescriptionType_cbcList)
  protected
    { IXMLDescriptionType_cbcList }
    function Add: IXMLDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDescriptionType_cbc;
  end;

{ TXMLPartyType_cac }

  TXMLPartyType_cac = class(TXMLNode, IXMLPartyType_cac)
  private
    FPartyIdentification: IXMLPartyIdentificationType_cacList;
    FPartyLegalEntity: IXMLPartyLegalEntityType_cacList;
  protected
    { IXMLPartyType_cac }
    function Get_WebsiteURI: IXMLWebsiteURIType_cbc;
    function Get_EndpointID: IXMLEndpointIDType_cbc;
    function Get_IndustryClassificationCode: IXMLIndustryClassificationCodeType_cbc;
    function Get_PartyIdentification: IXMLPartyIdentificationType_cacList;
    function Get_PartyName: IXMLPartyNameType_cac;
    function Get_PostalAddress: IXMLAddressType_cac;
    function Get_PhysicalLocation: IXMLLocationType_cac;
    function Get_PartyTaxScheme: IXMLPartyTaxSchemeType_cac;
    function Get_PartyLegalEntity: IXMLPartyLegalEntityType_cacList;
    function Get_Contact: IXMLContactType_cac;
    function Get_Person: IXMLPersonType_cac;
    function Get_AgentParty: IXMLPartyType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLWebsiteURIType_cbc }

  TXMLWebsiteURIType_cbc = class(TXMLNode, IXMLWebsiteURIType_cbc)
  protected
    { IXMLWebsiteURIType_cbc }
  end;

{ TXMLEndpointIDType_cbc }

  TXMLEndpointIDType_cbc = class(TXMLNode, IXMLEndpointIDType_cbc)
  protected
    { IXMLEndpointIDType_cbc }
  end;

{ TXMLIndustryClassificationCodeType_cbc }

  TXMLIndustryClassificationCodeType_cbc = class(TXMLNode, IXMLIndustryClassificationCodeType_cbc)
  protected
    { IXMLIndustryClassificationCodeType_cbc }
  end;

{ TXMLPartyIdentificationType_cac }

  TXMLPartyIdentificationType_cac = class(TXMLNode, IXMLPartyIdentificationType_cac)
  protected
    { IXMLPartyIdentificationType_cac }
    function Get_ID: IXMLIDType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentificationType_cacList }

  TXMLPartyIdentificationType_cacList = class(TXMLNodeCollection, IXMLPartyIdentificationType_cacList)
  protected
    { IXMLPartyIdentificationType_cacList }
    function Add: IXMLPartyIdentificationType_cac;
    function Insert(const Index: Integer): IXMLPartyIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLPartyIdentificationType_cac;
  end;

{ TXMLPartyNameType_cac }

  TXMLPartyNameType_cac = class(TXMLNode, IXMLPartyNameType_cac)
  protected
    { IXMLPartyNameType_cac }
    function Get_Name: IXMLNameType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNameType_cbc }

  TXMLNameType_cbc = class(TXMLNode, IXMLNameType_cbc)
  protected
    { IXMLNameType_cbc }
  end;

{ TXMLAddressType_cac }

  TXMLAddressType_cac = class(TXMLNode, IXMLAddressType_cac)
  protected
    { IXMLAddressType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Postbox: IXMLPostboxType_cbc;
    function Get_Room: IXMLRoomType_cbc;
    function Get_StreetName: IXMLStreetNameType_cbc;
    function Get_BlockName: IXMLBlockNameType_cbc;
    function Get_BuildingName: IXMLBuildingNameType_cbc;
    function Get_BuildingNumber: IXMLBuildingNumberType_cbc;
    function Get_CitySubdivisionName: IXMLCitySubdivisionNameType_cbc;
    function Get_CityName: IXMLCityNameType_cbc;
    function Get_PostalZone: IXMLPostalZoneType_cbc;
    function Get_Region: IXMLRegionType_cbc;
    function Get_District: IXMLDistrictType_cbc;
    function Get_Country: IXMLCountryType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAddressType_cacList }

  TXMLAddressType_cacList = class(TXMLNodeCollection, IXMLAddressType_cacList)
  protected
    { IXMLAddressType_cacList }
    function Add: IXMLAddressType_cac;
    function Insert(const Index: Integer): IXMLAddressType_cac;

    function Get_Item(Index: Integer): IXMLAddressType_cac;
  end;

{ TXMLPostboxType_cbc }

  TXMLPostboxType_cbc = class(TXMLNode, IXMLPostboxType_cbc)
  protected
    { IXMLPostboxType_cbc }
  end;

{ TXMLRoomType_cbc }

  TXMLRoomType_cbc = class(TXMLNode, IXMLRoomType_cbc)
  protected
    { IXMLRoomType_cbc }
  end;

{ TXMLStreetNameType_cbc }

  TXMLStreetNameType_cbc = class(TXMLNode, IXMLStreetNameType_cbc)
  protected
    { IXMLStreetNameType_cbc }
  end;

{ TXMLBlockNameType_cbc }

  TXMLBlockNameType_cbc = class(TXMLNode, IXMLBlockNameType_cbc)
  protected
    { IXMLBlockNameType_cbc }
  end;

{ TXMLBuildingNameType_cbc }

  TXMLBuildingNameType_cbc = class(TXMLNode, IXMLBuildingNameType_cbc)
  protected
    { IXMLBuildingNameType_cbc }
  end;

{ TXMLBuildingNumberType_cbc }

  TXMLBuildingNumberType_cbc = class(TXMLNode, IXMLBuildingNumberType_cbc)
  protected
    { IXMLBuildingNumberType_cbc }
  end;

{ TXMLCitySubdivisionNameType_cbc }

  TXMLCitySubdivisionNameType_cbc = class(TXMLNode, IXMLCitySubdivisionNameType_cbc)
  protected
    { IXMLCitySubdivisionNameType_cbc }
  end;

{ TXMLCityNameType_cbc }

  TXMLCityNameType_cbc = class(TXMLNode, IXMLCityNameType_cbc)
  protected
    { IXMLCityNameType_cbc }
  end;

{ TXMLPostalZoneType_cbc }

  TXMLPostalZoneType_cbc = class(TXMLNode, IXMLPostalZoneType_cbc)
  protected
    { IXMLPostalZoneType_cbc }
  end;

{ TXMLRegionType_cbc }

  TXMLRegionType_cbc = class(TXMLNode, IXMLRegionType_cbc)
  protected
    { IXMLRegionType_cbc }
  end;

{ TXMLDistrictType_cbc }

  TXMLDistrictType_cbc = class(TXMLNode, IXMLDistrictType_cbc)
  protected
    { IXMLDistrictType_cbc }
  end;

{ TXMLCountryType_cac }

  TXMLCountryType_cac = class(TXMLNode, IXMLCountryType_cac)
  protected
    { IXMLCountryType_cac }
    function Get_IdentificationCode: IXMLIdentificationCodeType_cbc;
    function Get_Name: IXMLNameType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIdentificationCodeType_cbc }

  TXMLIdentificationCodeType_cbc = class(TXMLNode, IXMLIdentificationCodeType_cbc)
  protected
    { IXMLIdentificationCodeType_cbc }
  end;

{ TXMLLocationType_cac }

  TXMLLocationType_cac = class(TXMLNode, IXMLLocationType_cac)
  protected
    { IXMLLocationType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Address: IXMLAddressType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyTaxSchemeType_cac }

  TXMLPartyTaxSchemeType_cac = class(TXMLNode, IXMLPartyTaxSchemeType_cac)
  protected
    { IXMLPartyTaxSchemeType_cac }
    function Get_RegistrationName: IXMLRegistrationNameType_cbc;
    function Get_CompanyID: IXMLCompanyIDType_cbc;
    function Get_TaxScheme: IXMLTaxSchemeType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistrationNameType_cbc }

  TXMLRegistrationNameType_cbc = class(TXMLNode, IXMLRegistrationNameType_cbc)
  protected
    { IXMLRegistrationNameType_cbc }
  end;

{ TXMLCompanyIDType_cbc }

  TXMLCompanyIDType_cbc = class(TXMLNode, IXMLCompanyIDType_cbc)
  protected
    { IXMLCompanyIDType_cbc }
  end;

{ TXMLTaxSchemeType_cac }

  TXMLTaxSchemeType_cac = class(TXMLNode, IXMLTaxSchemeType_cac)
  protected
    { IXMLTaxSchemeType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_TaxTypeCode: IXMLTaxTypeCodeType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxTypeCodeType_cbc }

  TXMLTaxTypeCodeType_cbc = class(TXMLNode, IXMLTaxTypeCodeType_cbc)
  protected
    { IXMLTaxTypeCodeType_cbc }
  end;

{ TXMLPartyLegalEntityType_cac }

  TXMLPartyLegalEntityType_cac = class(TXMLNode, IXMLPartyLegalEntityType_cac)
  protected
    { IXMLPartyLegalEntityType_cac }
    function Get_RegistrationName: IXMLRegistrationNameType_cbc;
    function Get_CompanyID: IXMLCompanyIDType_cbc;
    function Get_RegistrationDate: IXMLRegistrationDateType_cbc;
    function Get_SoleProprietorshipIndicator: IXMLSoleProprietorshipIndicatorType_cbc;
    function Get_CorporateStockAmount: IXMLCorporateStockAmountType_cbc;
    function Get_FullyPaidSharesIndicator: IXMLFullyPaidSharesIndicatorType_cbc;
    function Get_CorporateRegistrationScheme: IXMLCorporateRegistrationSchemeType_cac;
    function Get_HeadOfficeParty: IXMLPartyType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyLegalEntityType_cacList }

  TXMLPartyLegalEntityType_cacList = class(TXMLNodeCollection, IXMLPartyLegalEntityType_cacList)
  protected
    { IXMLPartyLegalEntityType_cacList }
    function Add: IXMLPartyLegalEntityType_cac;
    function Insert(const Index: Integer): IXMLPartyLegalEntityType_cac;

    function Get_Item(Index: Integer): IXMLPartyLegalEntityType_cac;
  end;

{ TXMLRegistrationDateType_cbc }

  TXMLRegistrationDateType_cbc = class(TXMLNode, IXMLRegistrationDateType_cbc)
  protected
    { IXMLRegistrationDateType_cbc }
  end;

{ TXMLSoleProprietorshipIndicatorType_cbc }

  TXMLSoleProprietorshipIndicatorType_cbc = class(TXMLNode, IXMLSoleProprietorshipIndicatorType_cbc)
  protected
    { IXMLSoleProprietorshipIndicatorType_cbc }
  end;

{ TXMLCorporateStockAmountType_cbc }

  TXMLCorporateStockAmountType_cbc = class(TXMLNode, IXMLCorporateStockAmountType_cbc)
  protected
    { IXMLCorporateStockAmountType_cbc }
  end;

{ TXMLFullyPaidSharesIndicatorType_cbc }

  TXMLFullyPaidSharesIndicatorType_cbc = class(TXMLNode, IXMLFullyPaidSharesIndicatorType_cbc)
  protected
    { IXMLFullyPaidSharesIndicatorType_cbc }
  end;

{ TXMLCorporateRegistrationSchemeType_cac }

  TXMLCorporateRegistrationSchemeType_cac = class(TXMLNode, IXMLCorporateRegistrationSchemeType_cac)
  private
    FJurisdictionRegionAddress: IXMLAddressType_cacList;
  protected
    { IXMLCorporateRegistrationSchemeType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_CorporateRegistrationTypeCode: IXMLCorporateRegistrationTypeCodeType_cbc;
    function Get_JurisdictionRegionAddress: IXMLAddressType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCorporateRegistrationTypeCodeType_cbc }

  TXMLCorporateRegistrationTypeCodeType_cbc = class(TXMLNode, IXMLCorporateRegistrationTypeCodeType_cbc)
  protected
    { IXMLCorporateRegistrationTypeCodeType_cbc }
  end;

{ TXMLContactType_cac }

  TXMLContactType_cac = class(TXMLNode, IXMLContactType_cac)
  private
    FOtherCommunication: IXMLCommunicationType_cacList;
  protected
    { IXMLContactType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_Telephone: IXMLTelephoneType_cbc;
    function Get_Telefax: IXMLTelefaxType_cbc;
    function Get_ElectronicMail: IXMLElectronicMailType_cbc;
    function Get_Note: IXMLNoteType_cbc;
    function Get_OtherCommunication: IXMLCommunicationType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTelephoneType_cbc }

  TXMLTelephoneType_cbc = class(TXMLNode, IXMLTelephoneType_cbc)
  protected
    { IXMLTelephoneType_cbc }
  end;

{ TXMLTelefaxType_cbc }

  TXMLTelefaxType_cbc = class(TXMLNode, IXMLTelefaxType_cbc)
  protected
    { IXMLTelefaxType_cbc }
  end;

{ TXMLElectronicMailType_cbc }

  TXMLElectronicMailType_cbc = class(TXMLNode, IXMLElectronicMailType_cbc)
  protected
    { IXMLElectronicMailType_cbc }
  end;

{ TXMLCommunicationType_cac }

  TXMLCommunicationType_cac = class(TXMLNode, IXMLCommunicationType_cac)
  protected
    { IXMLCommunicationType_cac }
    function Get_ChannelCode: IXMLChannelCodeType_cbc;
    function Get_Channel: IXMLChannelType_cbc;
    function Get_Value: IXMLValueType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCommunicationType_cacList }

  TXMLCommunicationType_cacList = class(TXMLNodeCollection, IXMLCommunicationType_cacList)
  protected
    { IXMLCommunicationType_cacList }
    function Add: IXMLCommunicationType_cac;
    function Insert(const Index: Integer): IXMLCommunicationType_cac;

    function Get_Item(Index: Integer): IXMLCommunicationType_cac;
  end;

{ TXMLChannelCodeType_cbc }

  TXMLChannelCodeType_cbc = class(TXMLNode, IXMLChannelCodeType_cbc)
  protected
    { IXMLChannelCodeType_cbc }
  end;

{ TXMLChannelType_cbc }

  TXMLChannelType_cbc = class(TXMLNode, IXMLChannelType_cbc)
  protected
    { IXMLChannelType_cbc }
  end;

{ TXMLValueType_cbc }

  TXMLValueType_cbc = class(TXMLNode, IXMLValueType_cbc)
  protected
    { IXMLValueType_cbc }
  end;

{ TXMLPersonType_cac }

  TXMLPersonType_cac = class(TXMLNode, IXMLPersonType_cac)
  protected
    { IXMLPersonType_cac }
    function Get_FirstName: IXMLFirstNameType_cbc;
    function Get_FamilyName: IXMLFamilyNameType_cbc;
    function Get_Title: IXMLTitleType_cbc;
    function Get_MiddleName: IXMLMiddleNameType_cbc;
    function Get_NameSuffix: IXMLNameSuffixType_cbc;
    function Get_NationalityID: IXMLNationalityIDType_cbc;
    function Get_FinancialAccount: IXMLFinancialAccountType_cac;
    function Get_IdentityDocumentReference: IXMLDocumentReferenceType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonType_cacList }

  TXMLPersonType_cacList = class(TXMLNodeCollection, IXMLPersonType_cacList)
  protected
    { IXMLPersonType_cacList }
    function Add: IXMLPersonType_cac;
    function Insert(const Index: Integer): IXMLPersonType_cac;

    function Get_Item(Index: Integer): IXMLPersonType_cac;
  end;

{ TXMLFirstNameType_cbc }

  TXMLFirstNameType_cbc = class(TXMLNode, IXMLFirstNameType_cbc)
  protected
    { IXMLFirstNameType_cbc }
  end;

{ TXMLFamilyNameType_cbc }

  TXMLFamilyNameType_cbc = class(TXMLNode, IXMLFamilyNameType_cbc)
  protected
    { IXMLFamilyNameType_cbc }
  end;

{ TXMLTitleType_cbc }

  TXMLTitleType_cbc = class(TXMLNode, IXMLTitleType_cbc)
  protected
    { IXMLTitleType_cbc }
  end;

{ TXMLMiddleNameType_cbc }

  TXMLMiddleNameType_cbc = class(TXMLNode, IXMLMiddleNameType_cbc)
  protected
    { IXMLMiddleNameType_cbc }
  end;

{ TXMLNameSuffixType_cbc }

  TXMLNameSuffixType_cbc = class(TXMLNode, IXMLNameSuffixType_cbc)
  protected
    { IXMLNameSuffixType_cbc }
  end;

{ TXMLNationalityIDType_cbc }

  TXMLNationalityIDType_cbc = class(TXMLNode, IXMLNationalityIDType_cbc)
  protected
    { IXMLNationalityIDType_cbc }
  end;

{ TXMLFinancialAccountType_cac }

  TXMLFinancialAccountType_cac = class(TXMLNode, IXMLFinancialAccountType_cac)
  protected
    { IXMLFinancialAccountType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_CurrencyCode: IXMLCurrencyCodeType_cbc;
    function Get_PaymentNote: IXMLPaymentNoteType_cbc;
    function Get_FinancialInstitutionBranch: IXMLBranchType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCurrencyCodeType_cbc }

  TXMLCurrencyCodeType_cbc = class(TXMLNode, IXMLCurrencyCodeType_cbc)
  protected
    { IXMLCurrencyCodeType_cbc }
  end;

{ TXMLPaymentNoteType_cbc }

  TXMLPaymentNoteType_cbc = class(TXMLNode, IXMLPaymentNoteType_cbc)
  protected
    { IXMLPaymentNoteType_cbc }
  end;

{ TXMLBranchType_cac }

  TXMLBranchType_cac = class(TXMLNode, IXMLBranchType_cac)
  protected
    { IXMLBranchType_cac }
    function Get_Name: IXMLNameType_cbc;
    function Get_FinancialInstitution: IXMLFinancialInstitutionType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionType_cac }

  TXMLFinancialInstitutionType_cac = class(TXMLNode, IXMLFinancialInstitutionType_cac)
  protected
    { IXMLFinancialInstitutionType_cac }
    function Get_Name: IXMLNameType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignatureType_cac }

  TXMLSignatureType_cac = class(TXMLNode, IXMLSignatureType_cac)
  protected
    { IXMLSignatureType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_SignatoryParty: IXMLPartyType_cac;
    function Get_DigitalSignatureAttachment: IXMLAttachmentType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignatureType_cacList }

  TXMLSignatureType_cacList = class(TXMLNodeCollection, IXMLSignatureType_cacList)
  protected
    { IXMLSignatureType_cacList }
    function Add: IXMLSignatureType_cac;
    function Insert(const Index: Integer): IXMLSignatureType_cac;

    function Get_Item(Index: Integer): IXMLSignatureType_cac;
  end;

{ TXMLSupplierPartyType_cac }

  TXMLSupplierPartyType_cac = class(TXMLNode, IXMLSupplierPartyType_cac)
  protected
    { IXMLSupplierPartyType_cac }
    function Get_Party: IXMLPartyType_cac;
    function Get_DespatchContact: IXMLContactType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerPartyType_cac }

  TXMLCustomerPartyType_cac = class(TXMLNode, IXMLCustomerPartyType_cac)
  protected
    { IXMLCustomerPartyType_cac }
    function Get_Party: IXMLPartyType_cac;
    function Get_DeliveryContact: IXMLContactType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShipmentType_cac }

  TXMLShipmentType_cac = class(TXMLNode, IXMLShipmentType_cac)
  private
    FSpecialInstructions: IXMLSpecialInstructionsType_cbcList;
    FGoodsItem: IXMLGoodsItemType_cacList;
    FShipmentStage: IXMLShipmentStageType_cacList;
    FTransportHandlingUnit: IXMLTransportHandlingUnitType_cacList;
  protected
    { IXMLShipmentType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_HandlingCode: IXMLHandlingCodeType_cbc;
    function Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
    function Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
    function Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
    function Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
    function Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
    function Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
    function Get_TotalTransportHandlingUnitQuantity: IXMLTotalTransportHandlingUnitQuantityType_cbc;
    function Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
    function Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
    function Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
    function Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
    function Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
    function Get_SpecialInstructions: IXMLSpecialInstructionsType_cbcList;
    function Get_GoodsItem: IXMLGoodsItemType_cacList;
    function Get_ShipmentStage: IXMLShipmentStageType_cacList;
    function Get_Delivery: IXMLDeliveryType_cac;
    function Get_TransportHandlingUnit: IXMLTransportHandlingUnitType_cacList;
    function Get_ReturnAddress: IXMLAddressType_cac;
    function Get_FirstArrivalPortLocation: IXMLLocationType_cac;
    function Get_LastExitPortLocation: IXMLLocationType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShipmentType_cacList }

  TXMLShipmentType_cacList = class(TXMLNodeCollection, IXMLShipmentType_cacList)
  protected
    { IXMLShipmentType_cacList }
    function Add: IXMLShipmentType_cac;
    function Insert(const Index: Integer): IXMLShipmentType_cac;

    function Get_Item(Index: Integer): IXMLShipmentType_cac;
  end;

{ TXMLHandlingCodeType_cbc }

  TXMLHandlingCodeType_cbc = class(TXMLNode, IXMLHandlingCodeType_cbc)
  protected
    { IXMLHandlingCodeType_cbc }
  end;

{ TXMLHandlingInstructionsType_cbc }

  TXMLHandlingInstructionsType_cbc = class(TXMLNode, IXMLHandlingInstructionsType_cbc)
  protected
    { IXMLHandlingInstructionsType_cbc }
  end;

{ TXMLGrossWeightMeasureType_cbc }

  TXMLGrossWeightMeasureType_cbc = class(TXMLNode, IXMLGrossWeightMeasureType_cbc)
  protected
    { IXMLGrossWeightMeasureType_cbc }
  end;

{ TXMLNetWeightMeasureType_cbc }

  TXMLNetWeightMeasureType_cbc = class(TXMLNode, IXMLNetWeightMeasureType_cbc)
  protected
    { IXMLNetWeightMeasureType_cbc }
  end;

{ TXMLGrossVolumeMeasureType_cbc }

  TXMLGrossVolumeMeasureType_cbc = class(TXMLNode, IXMLGrossVolumeMeasureType_cbc)
  protected
    { IXMLGrossVolumeMeasureType_cbc }
  end;

{ TXMLNetVolumeMeasureType_cbc }

  TXMLNetVolumeMeasureType_cbc = class(TXMLNode, IXMLNetVolumeMeasureType_cbc)
  protected
    { IXMLNetVolumeMeasureType_cbc }
  end;

{ TXMLTotalGoodsItemQuantityType_cbc }

  TXMLTotalGoodsItemQuantityType_cbc = class(TXMLNode, IXMLTotalGoodsItemQuantityType_cbc)
  protected
    { IXMLTotalGoodsItemQuantityType_cbc }
  end;

{ TXMLTotalTransportHandlingUnitQuantityType_cbc }

  TXMLTotalTransportHandlingUnitQuantityType_cbc = class(TXMLNode, IXMLTotalTransportHandlingUnitQuantityType_cbc)
  protected
    { IXMLTotalTransportHandlingUnitQuantityType_cbc }
  end;

{ TXMLInsuranceValueAmountType_cbc }

  TXMLInsuranceValueAmountType_cbc = class(TXMLNode, IXMLInsuranceValueAmountType_cbc)
  protected
    { IXMLInsuranceValueAmountType_cbc }
  end;

{ TXMLDeclaredCustomsValueAmountType_cbc }

  TXMLDeclaredCustomsValueAmountType_cbc = class(TXMLNode, IXMLDeclaredCustomsValueAmountType_cbc)
  protected
    { IXMLDeclaredCustomsValueAmountType_cbc }
  end;

{ TXMLDeclaredForCarriageValueAmountType_cbc }

  TXMLDeclaredForCarriageValueAmountType_cbc = class(TXMLNode, IXMLDeclaredForCarriageValueAmountType_cbc)
  protected
    { IXMLDeclaredForCarriageValueAmountType_cbc }
  end;

{ TXMLDeclaredStatisticsValueAmountType_cbc }

  TXMLDeclaredStatisticsValueAmountType_cbc = class(TXMLNode, IXMLDeclaredStatisticsValueAmountType_cbc)
  protected
    { IXMLDeclaredStatisticsValueAmountType_cbc }
  end;

{ TXMLFreeOnBoardValueAmountType_cbc }

  TXMLFreeOnBoardValueAmountType_cbc = class(TXMLNode, IXMLFreeOnBoardValueAmountType_cbc)
  protected
    { IXMLFreeOnBoardValueAmountType_cbc }
  end;

{ TXMLSpecialInstructionsType_cbc }

  TXMLSpecialInstructionsType_cbc = class(TXMLNode, IXMLSpecialInstructionsType_cbc)
  protected
    { IXMLSpecialInstructionsType_cbc }
  end;

{ TXMLSpecialInstructionsType_cbcList }

  TXMLSpecialInstructionsType_cbcList = class(TXMLNodeCollection, IXMLSpecialInstructionsType_cbcList)
  protected
    { IXMLSpecialInstructionsType_cbcList }
    function Add: IXMLSpecialInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLSpecialInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLSpecialInstructionsType_cbc;
  end;

{ TXMLGoodsItemType_cac }

  TXMLGoodsItemType_cac = class(TXMLNode, IXMLGoodsItemType_cac)
  private
    FDescription: IXMLDescriptionType_cbcList;
    FItem: IXMLItemType_cacList;
    FFreightAllowanceCharge: IXMLAllowanceChargeType_cacList;
    FInvoiceLine: IXMLInvoiceLineType_cacList;
    FTemperature: IXMLTemperatureType_cacList;
    FMeasurementDimension: IXMLDimensionType_cacList;
  protected
    { IXMLGoodsItemType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
    function Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
    function Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
    function Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
    function Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
    function Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
    function Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
    function Get_ValueAmount: IXMLValueAmountType_cbc;
    function Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
    function Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
    function Get_ChargeableWeightMeasure: IXMLChargeableWeightMeasureType_cbc;
    function Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
    function Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_RequiredCustomsID: IXMLRequiredCustomsIDType_cbc;
    function Get_CustomsStatusCode: IXMLCustomsStatusCodeType_cbc;
    function Get_CustomsTariffQuantity: IXMLCustomsTariffQuantityType_cbc;
    function Get_CustomsImportClassifiedIndicator: IXMLCustomsImportClassifiedIndicatorType_cbc;
    function Get_ChargeableQuantity: IXMLChargeableQuantityType_cbc;
    function Get_ReturnableQuantity: IXMLReturnableQuantityType_cbc;
    function Get_TraceID: IXMLTraceIDType_cbc;
    function Get_Item: IXMLItemType_cacList;
    function Get_FreightAllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_InvoiceLine: IXMLInvoiceLineType_cacList;
    function Get_Temperature: IXMLTemperatureType_cacList;
    function Get_OriginAddress: IXMLAddressType_cac;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGoodsItemType_cacList }

  TXMLGoodsItemType_cacList = class(TXMLNodeCollection, IXMLGoodsItemType_cacList)
  protected
    { IXMLGoodsItemType_cacList }
    function Add: IXMLGoodsItemType_cac;
    function Insert(const Index: Integer): IXMLGoodsItemType_cac;

    function Get_Item(Index: Integer): IXMLGoodsItemType_cac;
  end;

{ TXMLHazardousRiskIndicatorType_cbc }

  TXMLHazardousRiskIndicatorType_cbc = class(TXMLNode, IXMLHazardousRiskIndicatorType_cbc)
  protected
    { IXMLHazardousRiskIndicatorType_cbc }
  end;

{ TXMLValueAmountType_cbc }

  TXMLValueAmountType_cbc = class(TXMLNode, IXMLValueAmountType_cbc)
  protected
    { IXMLValueAmountType_cbc }
  end;

{ TXMLChargeableWeightMeasureType_cbc }

  TXMLChargeableWeightMeasureType_cbc = class(TXMLNode, IXMLChargeableWeightMeasureType_cbc)
  protected
    { IXMLChargeableWeightMeasureType_cbc }
  end;

{ TXMLQuantityType_cbc }

  TXMLQuantityType_cbc = class(TXMLNode, IXMLQuantityType_cbc)
  protected
    { IXMLQuantityType_cbc }
  end;

{ TXMLRequiredCustomsIDType_cbc }

  TXMLRequiredCustomsIDType_cbc = class(TXMLNode, IXMLRequiredCustomsIDType_cbc)
  protected
    { IXMLRequiredCustomsIDType_cbc }
  end;

{ TXMLCustomsStatusCodeType_cbc }

  TXMLCustomsStatusCodeType_cbc = class(TXMLNode, IXMLCustomsStatusCodeType_cbc)
  protected
    { IXMLCustomsStatusCodeType_cbc }
  end;

{ TXMLCustomsTariffQuantityType_cbc }

  TXMLCustomsTariffQuantityType_cbc = class(TXMLNode, IXMLCustomsTariffQuantityType_cbc)
  protected
    { IXMLCustomsTariffQuantityType_cbc }
  end;

{ TXMLCustomsImportClassifiedIndicatorType_cbc }

  TXMLCustomsImportClassifiedIndicatorType_cbc = class(TXMLNode, IXMLCustomsImportClassifiedIndicatorType_cbc)
  protected
    { IXMLCustomsImportClassifiedIndicatorType_cbc }
  end;

{ TXMLChargeableQuantityType_cbc }

  TXMLChargeableQuantityType_cbc = class(TXMLNode, IXMLChargeableQuantityType_cbc)
  protected
    { IXMLChargeableQuantityType_cbc }
  end;

{ TXMLReturnableQuantityType_cbc }

  TXMLReturnableQuantityType_cbc = class(TXMLNode, IXMLReturnableQuantityType_cbc)
  protected
    { IXMLReturnableQuantityType_cbc }
  end;

{ TXMLTraceIDType_cbc }

  TXMLTraceIDType_cbc = class(TXMLNode, IXMLTraceIDType_cbc)
  protected
    { IXMLTraceIDType_cbc }
  end;

{ TXMLItemType_cac }

  TXMLItemType_cac = class(TXMLNode, IXMLItemType_cac)
  private
    FAdditionalItemIdentification: IXMLItemIdentificationType_cacList;
    FCommodityClassification: IXMLCommodityClassificationType_cacList;
    FItemInstance: IXMLItemInstanceType_cacList;
  protected
    { IXMLItemType_cac }
    function Get_Description: IXMLDescriptionType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_Keyword: IXMLKeywordType_cbc;
    function Get_BrandName: IXMLBrandNameType_cbc;
    function Get_ModelName: IXMLModelNameType_cbc;
    function Get_BuyersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_SellersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_ManufacturersItemIdentification: IXMLItemIdentificationType_cac;
    function Get_AdditionalItemIdentification: IXMLItemIdentificationType_cacList;
    function Get_OriginCountry: IXMLCountryType_cac;
    function Get_CommodityClassification: IXMLCommodityClassificationType_cacList;
    function Get_ItemInstance: IXMLItemInstanceType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLItemType_cacList }

  TXMLItemType_cacList = class(TXMLNodeCollection, IXMLItemType_cacList)
  protected
    { IXMLItemType_cacList }
    function Add: IXMLItemType_cac;
    function Insert(const Index: Integer): IXMLItemType_cac;

    function Get_Item(Index: Integer): IXMLItemType_cac;
  end;

{ TXMLKeywordType_cbc }

  TXMLKeywordType_cbc = class(TXMLNode, IXMLKeywordType_cbc)
  protected
    { IXMLKeywordType_cbc }
  end;

{ TXMLBrandNameType_cbc }

  TXMLBrandNameType_cbc = class(TXMLNode, IXMLBrandNameType_cbc)
  protected
    { IXMLBrandNameType_cbc }
  end;

{ TXMLModelNameType_cbc }

  TXMLModelNameType_cbc = class(TXMLNode, IXMLModelNameType_cbc)
  protected
    { IXMLModelNameType_cbc }
  end;

{ TXMLItemIdentificationType_cac }

  TXMLItemIdentificationType_cac = class(TXMLNode, IXMLItemIdentificationType_cac)
  protected
    { IXMLItemIdentificationType_cac }
    function Get_ID: IXMLIDType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLItemIdentificationType_cacList }

  TXMLItemIdentificationType_cacList = class(TXMLNodeCollection, IXMLItemIdentificationType_cacList)
  protected
    { IXMLItemIdentificationType_cacList }
    function Add: IXMLItemIdentificationType_cac;
    function Insert(const Index: Integer): IXMLItemIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLItemIdentificationType_cac;
  end;

{ TXMLCommodityClassificationType_cac }

  TXMLCommodityClassificationType_cac = class(TXMLNode, IXMLCommodityClassificationType_cac)
  protected
    { IXMLCommodityClassificationType_cac }
    function Get_ItemClassificationCode: IXMLItemClassificationCodeType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCommodityClassificationType_cacList }

  TXMLCommodityClassificationType_cacList = class(TXMLNodeCollection, IXMLCommodityClassificationType_cacList)
  protected
    { IXMLCommodityClassificationType_cacList }
    function Add: IXMLCommodityClassificationType_cac;
    function Insert(const Index: Integer): IXMLCommodityClassificationType_cac;

    function Get_Item(Index: Integer): IXMLCommodityClassificationType_cac;
  end;

{ TXMLItemClassificationCodeType_cbc }

  TXMLItemClassificationCodeType_cbc = class(TXMLNode, IXMLItemClassificationCodeType_cbc)
  protected
    { IXMLItemClassificationCodeType_cbc }
  end;

{ TXMLItemInstanceType_cac }

  TXMLItemInstanceType_cac = class(TXMLNode, IXMLItemInstanceType_cac)
  private
    FAdditionalItemProperty: IXMLItemPropertyType_cacList;
  protected
    { IXMLItemInstanceType_cac }
    function Get_ProductTraceID: IXMLProductTraceIDType_cbc;
    function Get_ManufactureDate: IXMLManufactureDateType_cbc;
    function Get_ManufactureTime: IXMLManufactureTimeType_cbc;
    function Get_BestBeforeDate: IXMLBestBeforeDateType_cbc;
    function Get_RegistrationID: IXMLRegistrationIDType_cbc;
    function Get_SerialID: IXMLSerialIDType_cbc;
    function Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
    function Get_LotIdentification: IXMLLotIdentificationType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLItemInstanceType_cacList }

  TXMLItemInstanceType_cacList = class(TXMLNodeCollection, IXMLItemInstanceType_cacList)
  protected
    { IXMLItemInstanceType_cacList }
    function Add: IXMLItemInstanceType_cac;
    function Insert(const Index: Integer): IXMLItemInstanceType_cac;

    function Get_Item(Index: Integer): IXMLItemInstanceType_cac;
  end;

{ TXMLProductTraceIDType_cbc }

  TXMLProductTraceIDType_cbc = class(TXMLNode, IXMLProductTraceIDType_cbc)
  protected
    { IXMLProductTraceIDType_cbc }
  end;

{ TXMLManufactureDateType_cbc }

  TXMLManufactureDateType_cbc = class(TXMLNode, IXMLManufactureDateType_cbc)
  protected
    { IXMLManufactureDateType_cbc }
  end;

{ TXMLManufactureTimeType_cbc }

  TXMLManufactureTimeType_cbc = class(TXMLNode, IXMLManufactureTimeType_cbc)
  protected
    { IXMLManufactureTimeType_cbc }
  end;

{ TXMLBestBeforeDateType_cbc }

  TXMLBestBeforeDateType_cbc = class(TXMLNode, IXMLBestBeforeDateType_cbc)
  protected
    { IXMLBestBeforeDateType_cbc }
  end;

{ TXMLRegistrationIDType_cbc }

  TXMLRegistrationIDType_cbc = class(TXMLNode, IXMLRegistrationIDType_cbc)
  protected
    { IXMLRegistrationIDType_cbc }
  end;

{ TXMLSerialIDType_cbc }

  TXMLSerialIDType_cbc = class(TXMLNode, IXMLSerialIDType_cbc)
  protected
    { IXMLSerialIDType_cbc }
  end;

{ TXMLItemPropertyType_cac }

  TXMLItemPropertyType_cac = class(TXMLNode, IXMLItemPropertyType_cac)
  private
    FValueQualifier: IXMLValueQualifierType_cbcList;
    FListValue: IXMLListValueType_cbcList;
    FItemPropertyGroup: IXMLItemPropertyGroupType_cacList;
  protected
    { IXMLItemPropertyType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_NameCode: IXMLNameCodeType_cbc;
    function Get_TestMethod: IXMLTestMethodType_cbc;
    function Get_Value: IXMLValueType_cbc;
    function Get_ValueQuantity: IXMLValueQuantityType_cbc;
    function Get_ValueQualifier: IXMLValueQualifierType_cbcList;
    function Get_ImportanceCode: IXMLImportanceCodeType_cbc;
    function Get_ListValue: IXMLListValueType_cbcList;
    function Get_UsabilityPeriod: IXMLPeriodType_cac;
    function Get_ItemPropertyGroup: IXMLItemPropertyGroupType_cacList;
    function Get_RangeDimension: IXMLDimensionType_cac;
    function Get_ItemPropertyRange: IXMLItemPropertyRangeType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLItemPropertyType_cacList }

  TXMLItemPropertyType_cacList = class(TXMLNodeCollection, IXMLItemPropertyType_cacList)
  protected
    { IXMLItemPropertyType_cacList }
    function Add: IXMLItemPropertyType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyType_cac;
  end;

{ TXMLNameCodeType_cbc }

  TXMLNameCodeType_cbc = class(TXMLNode, IXMLNameCodeType_cbc)
  protected
    { IXMLNameCodeType_cbc }
  end;

{ TXMLTestMethodType_cbc }

  TXMLTestMethodType_cbc = class(TXMLNode, IXMLTestMethodType_cbc)
  protected
    { IXMLTestMethodType_cbc }
  end;

{ TXMLValueQuantityType_cbc }

  TXMLValueQuantityType_cbc = class(TXMLNode, IXMLValueQuantityType_cbc)
  protected
    { IXMLValueQuantityType_cbc }
  end;

{ TXMLValueQualifierType_cbc }

  TXMLValueQualifierType_cbc = class(TXMLNode, IXMLValueQualifierType_cbc)
  protected
    { IXMLValueQualifierType_cbc }
  end;

{ TXMLValueQualifierType_cbcList }

  TXMLValueQualifierType_cbcList = class(TXMLNodeCollection, IXMLValueQualifierType_cbcList)
  protected
    { IXMLValueQualifierType_cbcList }
    function Add: IXMLValueQualifierType_cbc;
    function Insert(const Index: Integer): IXMLValueQualifierType_cbc;

    function Get_Item(Index: Integer): IXMLValueQualifierType_cbc;
  end;

{ TXMLImportanceCodeType_cbc }

  TXMLImportanceCodeType_cbc = class(TXMLNode, IXMLImportanceCodeType_cbc)
  protected
    { IXMLImportanceCodeType_cbc }
  end;

{ TXMLListValueType_cbc }

  TXMLListValueType_cbc = class(TXMLNode, IXMLListValueType_cbc)
  protected
    { IXMLListValueType_cbc }
  end;

{ TXMLListValueType_cbcList }

  TXMLListValueType_cbcList = class(TXMLNodeCollection, IXMLListValueType_cbcList)
  protected
    { IXMLListValueType_cbcList }
    function Add: IXMLListValueType_cbc;
    function Insert(const Index: Integer): IXMLListValueType_cbc;

    function Get_Item(Index: Integer): IXMLListValueType_cbc;
  end;

{ TXMLItemPropertyGroupType_cac }

  TXMLItemPropertyGroupType_cac = class(TXMLNode, IXMLItemPropertyGroupType_cac)
  protected
    { IXMLItemPropertyGroupType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Name: IXMLNameType_cbc;
    function Get_ImportanceCode: IXMLImportanceCodeType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLItemPropertyGroupType_cacList }

  TXMLItemPropertyGroupType_cacList = class(TXMLNodeCollection, IXMLItemPropertyGroupType_cacList)
  protected
    { IXMLItemPropertyGroupType_cacList }
    function Add: IXMLItemPropertyGroupType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyGroupType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyGroupType_cac;
  end;

{ TXMLDimensionType_cac }

  TXMLDimensionType_cac = class(TXMLNode, IXMLDimensionType_cac)
  private
    FDescription: IXMLDescriptionType_cbcList;
  protected
    { IXMLDimensionType_cac }
    function Get_AttributeID: IXMLAttributeIDType_cbc;
    function Get_Measure: IXMLMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
    function Get_MinimumMeasure: IXMLMinimumMeasureType_cbc;
    function Get_MaximumMeasure: IXMLMaximumMeasureType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDimensionType_cacList }

  TXMLDimensionType_cacList = class(TXMLNodeCollection, IXMLDimensionType_cacList)
  protected
    { IXMLDimensionType_cacList }
    function Add: IXMLDimensionType_cac;
    function Insert(const Index: Integer): IXMLDimensionType_cac;

    function Get_Item(Index: Integer): IXMLDimensionType_cac;
  end;

{ TXMLAttributeIDType_cbc }

  TXMLAttributeIDType_cbc = class(TXMLNode, IXMLAttributeIDType_cbc)
  protected
    { IXMLAttributeIDType_cbc }
  end;

{ TXMLMeasureType_cbc }

  TXMLMeasureType_cbc = class(TXMLNode, IXMLMeasureType_cbc)
  protected
    { IXMLMeasureType_cbc }
  end;

{ TXMLMinimumMeasureType_cbc }

  TXMLMinimumMeasureType_cbc = class(TXMLNode, IXMLMinimumMeasureType_cbc)
  protected
    { IXMLMinimumMeasureType_cbc }
  end;

{ TXMLMaximumMeasureType_cbc }

  TXMLMaximumMeasureType_cbc = class(TXMLNode, IXMLMaximumMeasureType_cbc)
  protected
    { IXMLMaximumMeasureType_cbc }
  end;

{ TXMLItemPropertyRangeType_cac }

  TXMLItemPropertyRangeType_cac = class(TXMLNode, IXMLItemPropertyRangeType_cac)
  protected
    { IXMLItemPropertyRangeType_cac }
    function Get_MinimumValue: IXMLMinimumValueType_cbc;
    function Get_MaximumValue: IXMLMaximumValueType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMinimumValueType_cbc }

  TXMLMinimumValueType_cbc = class(TXMLNode, IXMLMinimumValueType_cbc)
  protected
    { IXMLMinimumValueType_cbc }
  end;

{ TXMLMaximumValueType_cbc }

  TXMLMaximumValueType_cbc = class(TXMLNode, IXMLMaximumValueType_cbc)
  protected
    { IXMLMaximumValueType_cbc }
  end;

{ TXMLLotIdentificationType_cac }

  TXMLLotIdentificationType_cac = class(TXMLNode, IXMLLotIdentificationType_cac)
  private
    FAdditionalItemProperty: IXMLItemPropertyType_cacList;
  protected
    { IXMLLotIdentificationType_cac }
    function Get_LotNumberID: IXMLLotNumberIDType_cbc;
    function Get_ExpiryDate: IXMLExpiryDateType_cbc;
    function Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLotNumberIDType_cbc }

  TXMLLotNumberIDType_cbc = class(TXMLNode, IXMLLotNumberIDType_cbc)
  protected
    { IXMLLotNumberIDType_cbc }
  end;

{ TXMLExpiryDateType_cbc }

  TXMLExpiryDateType_cbc = class(TXMLNode, IXMLExpiryDateType_cbc)
  protected
    { IXMLExpiryDateType_cbc }
  end;

{ TXMLAllowanceChargeType_cac }

  TXMLAllowanceChargeType_cac = class(TXMLNode, IXMLAllowanceChargeType_cac)
  protected
    { IXMLAllowanceChargeType_cac }
    function Get_ChargeIndicator: IXMLChargeIndicatorType_cbc;
    function Get_AllowanceChargeReason: IXMLAllowanceChargeReasonType_cbc;
    function Get_MultiplierFactorNumeric: IXMLMultiplierFactorNumericType_cbc;
    function Get_SequenceNumeric: IXMLSequenceNumericType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_BaseAmount: IXMLBaseAmountType_cbc;
    function Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAllowanceChargeType_cacList }

  TXMLAllowanceChargeType_cacList = class(TXMLNodeCollection, IXMLAllowanceChargeType_cacList)
  protected
    { IXMLAllowanceChargeType_cacList }
    function Add: IXMLAllowanceChargeType_cac;
    function Insert(const Index: Integer): IXMLAllowanceChargeType_cac;

    function Get_Item(Index: Integer): IXMLAllowanceChargeType_cac;
  end;

{ TXMLChargeIndicatorType_cbc }

  TXMLChargeIndicatorType_cbc = class(TXMLNode, IXMLChargeIndicatorType_cbc)
  protected
    { IXMLChargeIndicatorType_cbc }
  end;

{ TXMLAllowanceChargeReasonType_cbc }

  TXMLAllowanceChargeReasonType_cbc = class(TXMLNode, IXMLAllowanceChargeReasonType_cbc)
  protected
    { IXMLAllowanceChargeReasonType_cbc }
  end;

{ TXMLMultiplierFactorNumericType_cbc }

  TXMLMultiplierFactorNumericType_cbc = class(TXMLNode, IXMLMultiplierFactorNumericType_cbc)
  protected
    { IXMLMultiplierFactorNumericType_cbc }
  end;

{ TXMLSequenceNumericType_cbc }

  TXMLSequenceNumericType_cbc = class(TXMLNode, IXMLSequenceNumericType_cbc)
  protected
    { IXMLSequenceNumericType_cbc }
  end;

{ TXMLAmountType_cbc }

  TXMLAmountType_cbc = class(TXMLNode, IXMLAmountType_cbc)
  protected
    { IXMLAmountType_cbc }
  end;

{ TXMLBaseAmountType_cbc }

  TXMLBaseAmountType_cbc = class(TXMLNode, IXMLBaseAmountType_cbc)
  protected
    { IXMLBaseAmountType_cbc }
  end;

{ TXMLPerUnitAmountType_cbc }

  TXMLPerUnitAmountType_cbc = class(TXMLNode, IXMLPerUnitAmountType_cbc)
  protected
    { IXMLPerUnitAmountType_cbc }
  end;

{ TXMLInvoiceLineType_cac }

  TXMLInvoiceLineType_cac = class(TXMLNode, IXMLInvoiceLineType_cac)
  private
    FNote: IXMLNoteType_cbcList;
    FOrderLineReference: IXMLOrderLineReferenceType_cacList;
    FDespatchLineReference: IXMLLineReferenceType_cacList;
    FReceiptLineReference: IXMLLineReferenceType_cacList;
    FDelivery: IXMLDeliveryType_cacList;
    FAllowanceCharge: IXMLAllowanceChargeType_cacList;
    FWithholdingTaxTotal: IXMLTaxTotalType_cacList;
    FSubInvoiceLine: IXMLInvoiceLineType_cacList;
  protected
    { IXMLInvoiceLineType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_InvoicedQuantity: IXMLInvoicedQuantityType_cbc;
    function Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
    function Get_OrderLineReference: IXMLOrderLineReferenceType_cacList;
    function Get_DespatchLineReference: IXMLLineReferenceType_cacList;
    function Get_ReceiptLineReference: IXMLLineReferenceType_cacList;
    function Get_Delivery: IXMLDeliveryType_cacList;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_TaxTotal: IXMLTaxTotalType_cac;
    function Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
    function Get_Item: IXMLItemType_cac;
    function Get_Price: IXMLPriceType_cac;
    function Get_SubInvoiceLine: IXMLInvoiceLineType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceLineType_cacList }

  TXMLInvoiceLineType_cacList = class(TXMLNodeCollection, IXMLInvoiceLineType_cacList)
  protected
    { IXMLInvoiceLineType_cacList }
    function Add: IXMLInvoiceLineType_cac;
    function Insert(const Index: Integer): IXMLInvoiceLineType_cac;

    function Get_Item(Index: Integer): IXMLInvoiceLineType_cac;
  end;

{ TXMLInvoicedQuantityType_cbc }

  TXMLInvoicedQuantityType_cbc = class(TXMLNode, IXMLInvoicedQuantityType_cbc)
  protected
    { IXMLInvoicedQuantityType_cbc }
  end;

{ TXMLLineExtensionAmountType_cbc }

  TXMLLineExtensionAmountType_cbc = class(TXMLNode, IXMLLineExtensionAmountType_cbc)
  protected
    { IXMLLineExtensionAmountType_cbc }
  end;

{ TXMLOrderLineReferenceType_cac }

  TXMLOrderLineReferenceType_cac = class(TXMLNode, IXMLOrderLineReferenceType_cac)
  protected
    { IXMLOrderLineReferenceType_cac }
    function Get_LineID: IXMLLineIDType_cbc;
    function Get_SalesOrderLineID: IXMLSalesOrderLineIDType_cbc;
    function Get_UUID: IXMLUUIDType_cbc;
    function Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
    function Get_OrderReference: IXMLOrderReferenceType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrderLineReferenceType_cacList }

  TXMLOrderLineReferenceType_cacList = class(TXMLNodeCollection, IXMLOrderLineReferenceType_cacList)
  protected
    { IXMLOrderLineReferenceType_cacList }
    function Add: IXMLOrderLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLOrderLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLOrderLineReferenceType_cac;
  end;

{ TXMLLineIDType_cbc }

  TXMLLineIDType_cbc = class(TXMLNode, IXMLLineIDType_cbc)
  protected
    { IXMLLineIDType_cbc }
  end;

{ TXMLSalesOrderLineIDType_cbc }

  TXMLSalesOrderLineIDType_cbc = class(TXMLNode, IXMLSalesOrderLineIDType_cbc)
  protected
    { IXMLSalesOrderLineIDType_cbc }
  end;

{ TXMLLineStatusCodeType_cbc }

  TXMLLineStatusCodeType_cbc = class(TXMLNode, IXMLLineStatusCodeType_cbc)
  protected
    { IXMLLineStatusCodeType_cbc }
  end;

{ TXMLLineReferenceType_cac }

  TXMLLineReferenceType_cac = class(TXMLNode, IXMLLineReferenceType_cac)
  protected
    { IXMLLineReferenceType_cac }
    function Get_LineID: IXMLLineIDType_cbc;
    function Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
    function Get_DocumentReference: IXMLDocumentReferenceType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLineReferenceType_cacList }

  TXMLLineReferenceType_cacList = class(TXMLNodeCollection, IXMLLineReferenceType_cacList)
  protected
    { IXMLLineReferenceType_cacList }
    function Add: IXMLLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLLineReferenceType_cac;
  end;

{ TXMLDeliveryType_cac }

  TXMLDeliveryType_cac = class(TXMLNode, IXMLDeliveryType_cac)
  private
    FDeliveryTerms: IXMLDeliveryTermsType_cacList;
  protected
    { IXMLDeliveryType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_ActualDeliveryDate: IXMLActualDeliveryDateType_cbc;
    function Get_ActualDeliveryTime: IXMLActualDeliveryTimeType_cbc;
    function Get_LatestDeliveryDate: IXMLLatestDeliveryDateType_cbc;
    function Get_LatestDeliveryTime: IXMLLatestDeliveryTimeType_cbc;
    function Get_TrackingID: IXMLTrackingIDType_cbc;
    function Get_DeliveryAddress: IXMLAddressType_cac;
    function Get_AlternativeDeliveryLocation: IXMLLocationType_cac;
    function Get_EstimatedDeliveryPeriod: IXMLPeriodType_cac;
    function Get_CarrierParty: IXMLPartyType_cac;
    function Get_DeliveryParty: IXMLPartyType_cac;
    function Get_Despatch: IXMLDespatchType_cac;
    function Get_DeliveryTerms: IXMLDeliveryTermsType_cacList;
    function Get_Shipment: IXMLShipmentType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDeliveryType_cacList }

  TXMLDeliveryType_cacList = class(TXMLNodeCollection, IXMLDeliveryType_cacList)
  protected
    { IXMLDeliveryType_cacList }
    function Add: IXMLDeliveryType_cac;
    function Insert(const Index: Integer): IXMLDeliveryType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryType_cac;
  end;

{ TXMLActualDeliveryDateType_cbc }

  TXMLActualDeliveryDateType_cbc = class(TXMLNode, IXMLActualDeliveryDateType_cbc)
  protected
    { IXMLActualDeliveryDateType_cbc }
  end;

{ TXMLActualDeliveryTimeType_cbc }

  TXMLActualDeliveryTimeType_cbc = class(TXMLNode, IXMLActualDeliveryTimeType_cbc)
  protected
    { IXMLActualDeliveryTimeType_cbc }
  end;

{ TXMLLatestDeliveryDateType_cbc }

  TXMLLatestDeliveryDateType_cbc = class(TXMLNode, IXMLLatestDeliveryDateType_cbc)
  protected
    { IXMLLatestDeliveryDateType_cbc }
  end;

{ TXMLLatestDeliveryTimeType_cbc }

  TXMLLatestDeliveryTimeType_cbc = class(TXMLNode, IXMLLatestDeliveryTimeType_cbc)
  protected
    { IXMLLatestDeliveryTimeType_cbc }
  end;

{ TXMLTrackingIDType_cbc }

  TXMLTrackingIDType_cbc = class(TXMLNode, IXMLTrackingIDType_cbc)
  protected
    { IXMLTrackingIDType_cbc }
  end;

{ TXMLDespatchType_cac }

  TXMLDespatchType_cac = class(TXMLNode, IXMLDespatchType_cac)
  protected
    { IXMLDespatchType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_ActualDespatchDate: IXMLActualDespatchDateType_cbc;
    function Get_ActualDespatchTime: IXMLActualDespatchTimeType_cbc;
    function Get_Instructions: IXMLInstructionsType_cbc;
    function Get_DespatchAddress: IXMLAddressType_cac;
    function Get_DespatchParty: IXMLPartyType_cac;
    function Get_Contact: IXMLContactType_cac;
    function Get_EstimatedDespatchPeriod: IXMLPeriodType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLActualDespatchDateType_cbc }

  TXMLActualDespatchDateType_cbc = class(TXMLNode, IXMLActualDespatchDateType_cbc)
  protected
    { IXMLActualDespatchDateType_cbc }
  end;

{ TXMLActualDespatchTimeType_cbc }

  TXMLActualDespatchTimeType_cbc = class(TXMLNode, IXMLActualDespatchTimeType_cbc)
  protected
    { IXMLActualDespatchTimeType_cbc }
  end;

{ TXMLInstructionsType_cbc }

  TXMLInstructionsType_cbc = class(TXMLNode, IXMLInstructionsType_cbc)
  protected
    { IXMLInstructionsType_cbc }
  end;

{ TXMLInstructionsType_cbcList }

  TXMLInstructionsType_cbcList = class(TXMLNodeCollection, IXMLInstructionsType_cbcList)
  protected
    { IXMLInstructionsType_cbcList }
    function Add: IXMLInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLInstructionsType_cbc;
  end;

{ TXMLDeliveryTermsType_cac }

  TXMLDeliveryTermsType_cac = class(TXMLNode, IXMLDeliveryTermsType_cac)
  protected
    { IXMLDeliveryTermsType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_SpecialTerms: IXMLSpecialTermsType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDeliveryTermsType_cacList }

  TXMLDeliveryTermsType_cacList = class(TXMLNodeCollection, IXMLDeliveryTermsType_cacList)
  protected
    { IXMLDeliveryTermsType_cacList }
    function Add: IXMLDeliveryTermsType_cac;
    function Insert(const Index: Integer): IXMLDeliveryTermsType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryTermsType_cac;
  end;

{ TXMLSpecialTermsType_cbc }

  TXMLSpecialTermsType_cbc = class(TXMLNode, IXMLSpecialTermsType_cbc)
  protected
    { IXMLSpecialTermsType_cbc }
  end;

{ TXMLTaxTotalType_cac }

  TXMLTaxTotalType_cac = class(TXMLNode, IXMLTaxTotalType_cac)
  private
    FTaxSubtotal: IXMLTaxSubtotalType_cacList;
  protected
    { IXMLTaxTotalType_cac }
    function Get_TaxAmount: IXMLTaxAmountType_cbc;
    function Get_TaxSubtotal: IXMLTaxSubtotalType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxTotalType_cacList }

  TXMLTaxTotalType_cacList = class(TXMLNodeCollection, IXMLTaxTotalType_cacList)
  protected
    { IXMLTaxTotalType_cacList }
    function Add: IXMLTaxTotalType_cac;
    function Insert(const Index: Integer): IXMLTaxTotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxTotalType_cac;
  end;

{ TXMLTaxAmountType_cbc }

  TXMLTaxAmountType_cbc = class(TXMLNode, IXMLTaxAmountType_cbc)
  protected
    { IXMLTaxAmountType_cbc }
  end;

{ TXMLTaxSubtotalType_cac }

  TXMLTaxSubtotalType_cac = class(TXMLNode, IXMLTaxSubtotalType_cac)
  protected
    { IXMLTaxSubtotalType_cac }
    function Get_TaxableAmount: IXMLTaxableAmountType_cbc;
    function Get_TaxAmount: IXMLTaxAmountType_cbc;
    function Get_CalculationSequenceNumeric: IXMLCalculationSequenceNumericType_cbc;
    function Get_TransactionCurrencyTaxAmount: IXMLTransactionCurrencyTaxAmountType_cbc;
    function Get_Percent: IXMLPercentType_cbc;
    function Get_BaseUnitMeasure: IXMLBaseUnitMeasureType_cbc;
    function Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
    function Get_TaxCategory: IXMLTaxCategoryType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxSubtotalType_cacList }

  TXMLTaxSubtotalType_cacList = class(TXMLNodeCollection, IXMLTaxSubtotalType_cacList)
  protected
    { IXMLTaxSubtotalType_cacList }
    function Add: IXMLTaxSubtotalType_cac;
    function Insert(const Index: Integer): IXMLTaxSubtotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxSubtotalType_cac;
  end;

{ TXMLTaxableAmountType_cbc }

  TXMLTaxableAmountType_cbc = class(TXMLNode, IXMLTaxableAmountType_cbc)
  protected
    { IXMLTaxableAmountType_cbc }
  end;

{ TXMLCalculationSequenceNumericType_cbc }

  TXMLCalculationSequenceNumericType_cbc = class(TXMLNode, IXMLCalculationSequenceNumericType_cbc)
  protected
    { IXMLCalculationSequenceNumericType_cbc }
  end;

{ TXMLTransactionCurrencyTaxAmountType_cbc }

  TXMLTransactionCurrencyTaxAmountType_cbc = class(TXMLNode, IXMLTransactionCurrencyTaxAmountType_cbc)
  protected
    { IXMLTransactionCurrencyTaxAmountType_cbc }
  end;

{ TXMLPercentType_cbc }

  TXMLPercentType_cbc = class(TXMLNode, IXMLPercentType_cbc)
  protected
    { IXMLPercentType_cbc }
  end;

{ TXMLBaseUnitMeasureType_cbc }

  TXMLBaseUnitMeasureType_cbc = class(TXMLNode, IXMLBaseUnitMeasureType_cbc)
  protected
    { IXMLBaseUnitMeasureType_cbc }
  end;

{ TXMLTaxCategoryType_cac }

  TXMLTaxCategoryType_cac = class(TXMLNode, IXMLTaxCategoryType_cac)
  protected
    { IXMLTaxCategoryType_cac }
    function Get_Name: IXMLNameType_cbc;
    function Get_TaxExemptionReasonCode: IXMLTaxExemptionReasonCodeType_cbc;
    function Get_TaxExemptionReason: IXMLTaxExemptionReasonType_cbc;
    function Get_TaxScheme: IXMLTaxSchemeType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxExemptionReasonCodeType_cbc }

  TXMLTaxExemptionReasonCodeType_cbc = class(TXMLNode, IXMLTaxExemptionReasonCodeType_cbc)
  protected
    { IXMLTaxExemptionReasonCodeType_cbc }
  end;

{ TXMLTaxExemptionReasonType_cbc }

  TXMLTaxExemptionReasonType_cbc = class(TXMLNode, IXMLTaxExemptionReasonType_cbc)
  protected
    { IXMLTaxExemptionReasonType_cbc }
  end;

{ TXMLPriceType_cac }

  TXMLPriceType_cac = class(TXMLNode, IXMLPriceType_cac)
  protected
    { IXMLPriceType_cac }
    function Get_PriceAmount: IXMLPriceAmountType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPriceAmountType_cbc }

  TXMLPriceAmountType_cbc = class(TXMLNode, IXMLPriceAmountType_cbc)
  protected
    { IXMLPriceAmountType_cbc }
  end;

{ TXMLTemperatureType_cac }

  TXMLTemperatureType_cac = class(TXMLNode, IXMLTemperatureType_cac)
  private
    FDescription: IXMLDescriptionType_cbcList;
  protected
    { IXMLTemperatureType_cac }
    function Get_AttributeID: IXMLAttributeIDType_cbc;
    function Get_Measure: IXMLMeasureType_cbc;
    function Get_Description: IXMLDescriptionType_cbcList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTemperatureType_cacList }

  TXMLTemperatureType_cacList = class(TXMLNodeCollection, IXMLTemperatureType_cacList)
  protected
    { IXMLTemperatureType_cacList }
    function Add: IXMLTemperatureType_cac;
    function Insert(const Index: Integer): IXMLTemperatureType_cac;

    function Get_Item(Index: Integer): IXMLTemperatureType_cac;
  end;

{ TXMLShipmentStageType_cac }

  TXMLShipmentStageType_cac = class(TXMLNode, IXMLShipmentStageType_cac)
  private
    FInstructions: IXMLInstructionsType_cbcList;
    FDriverPerson: IXMLPersonType_cacList;
  protected
    { IXMLShipmentStageType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportModeCode: IXMLTransportModeCodeType_cbc;
    function Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
    function Get_TransitDirectionCode: IXMLTransitDirectionCodeType_cbc;
    function Get_Instructions: IXMLInstructionsType_cbcList;
    function Get_TransitPeriod: IXMLPeriodType_cac;
    function Get_TransportMeans: IXMLTransportMeansType_cac;
    function Get_DriverPerson: IXMLPersonType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShipmentStageType_cacList }

  TXMLShipmentStageType_cacList = class(TXMLNodeCollection, IXMLShipmentStageType_cacList)
  protected
    { IXMLShipmentStageType_cacList }
    function Add: IXMLShipmentStageType_cac;
    function Insert(const Index: Integer): IXMLShipmentStageType_cac;

    function Get_Item(Index: Integer): IXMLShipmentStageType_cac;
  end;

{ TXMLTransportModeCodeType_cbc }

  TXMLTransportModeCodeType_cbc = class(TXMLNode, IXMLTransportModeCodeType_cbc)
  protected
    { IXMLTransportModeCodeType_cbc }
  end;

{ TXMLTransportMeansTypeCodeType_cbc }

  TXMLTransportMeansTypeCodeType_cbc = class(TXMLNode, IXMLTransportMeansTypeCodeType_cbc)
  protected
    { IXMLTransportMeansTypeCodeType_cbc }
  end;

{ TXMLTransitDirectionCodeType_cbc }

  TXMLTransitDirectionCodeType_cbc = class(TXMLNode, IXMLTransitDirectionCodeType_cbc)
  protected
    { IXMLTransitDirectionCodeType_cbc }
  end;

{ TXMLTransportMeansType_cac }

  TXMLTransportMeansType_cac = class(TXMLNode, IXMLTransportMeansType_cac)
  private
    FRegistrationNationality: IXMLRegistrationNationalityType_cbcList;
    FMeasurementDimension: IXMLDimensionType_cacList;
  protected
    { IXMLTransportMeansType_cac }
    function Get_JourneyID: IXMLJourneyIDType_cbc;
    function Get_RegistrationNationalityID: IXMLRegistrationNationalityIDType_cbc;
    function Get_RegistrationNationality: IXMLRegistrationNationalityType_cbcList;
    function Get_DirectionCode: IXMLDirectionCodeType_cbc;
    function Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
    function Get_TradeServiceCode: IXMLTradeServiceCodeType_cbc;
    function Get_Stowage: IXMLStowageType_cac;
    function Get_AirTransport: IXMLAirTransportType_cac;
    function Get_RoadTransport: IXMLRoadTransportType_cac;
    function Get_RailTransport: IXMLRailTransportType_cac;
    function Get_MaritimeTransport: IXMLMaritimeTransportType_cac;
    function Get_OwnerParty: IXMLPartyType_cac;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransportMeansType_cacList }

  TXMLTransportMeansType_cacList = class(TXMLNodeCollection, IXMLTransportMeansType_cacList)
  protected
    { IXMLTransportMeansType_cacList }
    function Add: IXMLTransportMeansType_cac;
    function Insert(const Index: Integer): IXMLTransportMeansType_cac;

    function Get_Item(Index: Integer): IXMLTransportMeansType_cac;
  end;

{ TXMLJourneyIDType_cbc }

  TXMLJourneyIDType_cbc = class(TXMLNode, IXMLJourneyIDType_cbc)
  protected
    { IXMLJourneyIDType_cbc }
  end;

{ TXMLRegistrationNationalityIDType_cbc }

  TXMLRegistrationNationalityIDType_cbc = class(TXMLNode, IXMLRegistrationNationalityIDType_cbc)
  protected
    { IXMLRegistrationNationalityIDType_cbc }
  end;

{ TXMLRegistrationNationalityType_cbc }

  TXMLRegistrationNationalityType_cbc = class(TXMLNode, IXMLRegistrationNationalityType_cbc)
  protected
    { IXMLRegistrationNationalityType_cbc }
  end;

{ TXMLRegistrationNationalityType_cbcList }

  TXMLRegistrationNationalityType_cbcList = class(TXMLNodeCollection, IXMLRegistrationNationalityType_cbcList)
  protected
    { IXMLRegistrationNationalityType_cbcList }
    function Add: IXMLRegistrationNationalityType_cbc;
    function Insert(const Index: Integer): IXMLRegistrationNationalityType_cbc;

    function Get_Item(Index: Integer): IXMLRegistrationNationalityType_cbc;
  end;

{ TXMLDirectionCodeType_cbc }

  TXMLDirectionCodeType_cbc = class(TXMLNode, IXMLDirectionCodeType_cbc)
  protected
    { IXMLDirectionCodeType_cbc }
  end;

{ TXMLTradeServiceCodeType_cbc }

  TXMLTradeServiceCodeType_cbc = class(TXMLNode, IXMLTradeServiceCodeType_cbc)
  protected
    { IXMLTradeServiceCodeType_cbc }
  end;

{ TXMLStowageType_cac }

  TXMLStowageType_cac = class(TXMLNode, IXMLStowageType_cac)
  private
    FLocation: IXMLLocationType_cbcList;
    FMeasurementDimension: IXMLDimensionType_cacList;
  protected
    { IXMLStowageType_cac }
    function Get_LocationID: IXMLLocationIDType_cbc;
    function Get_Location: IXMLLocationType_cbcList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLocationIDType_cbc }

  TXMLLocationIDType_cbc = class(TXMLNode, IXMLLocationIDType_cbc)
  protected
    { IXMLLocationIDType_cbc }
  end;

{ TXMLLocationType_cbc }

  TXMLLocationType_cbc = class(TXMLNode, IXMLLocationType_cbc)
  protected
    { IXMLLocationType_cbc }
  end;

{ TXMLLocationType_cbcList }

  TXMLLocationType_cbcList = class(TXMLNodeCollection, IXMLLocationType_cbcList)
  protected
    { IXMLLocationType_cbcList }
    function Add: IXMLLocationType_cbc;
    function Insert(const Index: Integer): IXMLLocationType_cbc;

    function Get_Item(Index: Integer): IXMLLocationType_cbc;
  end;

{ TXMLAirTransportType_cac }

  TXMLAirTransportType_cac = class(TXMLNode, IXMLAirTransportType_cac)
  protected
    { IXMLAirTransportType_cac }
    function Get_AircraftID: IXMLAircraftIDType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAircraftIDType_cbc }

  TXMLAircraftIDType_cbc = class(TXMLNode, IXMLAircraftIDType_cbc)
  protected
    { IXMLAircraftIDType_cbc }
  end;

{ TXMLRoadTransportType_cac }

  TXMLRoadTransportType_cac = class(TXMLNode, IXMLRoadTransportType_cac)
  protected
    { IXMLRoadTransportType_cac }
    function Get_LicensePlateID: IXMLLicensePlateIDType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLicensePlateIDType_cbc }

  TXMLLicensePlateIDType_cbc = class(TXMLNode, IXMLLicensePlateIDType_cbc)
  protected
    { IXMLLicensePlateIDType_cbc }
  end;

{ TXMLRailTransportType_cac }

  TXMLRailTransportType_cac = class(TXMLNode, IXMLRailTransportType_cac)
  protected
    { IXMLRailTransportType_cac }
    function Get_TrainID: IXMLTrainIDType_cbc;
    function Get_RailCarID: IXMLRailCarIDType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTrainIDType_cbc }

  TXMLTrainIDType_cbc = class(TXMLNode, IXMLTrainIDType_cbc)
  protected
    { IXMLTrainIDType_cbc }
  end;

{ TXMLRailCarIDType_cbc }

  TXMLRailCarIDType_cbc = class(TXMLNode, IXMLRailCarIDType_cbc)
  protected
    { IXMLRailCarIDType_cbc }
  end;

{ TXMLMaritimeTransportType_cac }

  TXMLMaritimeTransportType_cac = class(TXMLNode, IXMLMaritimeTransportType_cac)
  private
    FShipsRequirements: IXMLShipsRequirementsType_cbcList;
  protected
    { IXMLMaritimeTransportType_cac }
    function Get_VesselID: IXMLVesselIDType_cbc;
    function Get_VesselName: IXMLVesselNameType_cbc;
    function Get_RadioCallSignID: IXMLRadioCallSignIDType_cbc;
    function Get_ShipsRequirements: IXMLShipsRequirementsType_cbcList;
    function Get_GrossTonnageMeasure: IXMLGrossTonnageMeasureType_cbc;
    function Get_NetTonnageMeasure: IXMLNetTonnageMeasureType_cbc;
    function Get_RegistryCertificateDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_RegistryPortLocation: IXMLLocationType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLVesselIDType_cbc }

  TXMLVesselIDType_cbc = class(TXMLNode, IXMLVesselIDType_cbc)
  protected
    { IXMLVesselIDType_cbc }
  end;

{ TXMLVesselNameType_cbc }

  TXMLVesselNameType_cbc = class(TXMLNode, IXMLVesselNameType_cbc)
  protected
    { IXMLVesselNameType_cbc }
  end;

{ TXMLRadioCallSignIDType_cbc }

  TXMLRadioCallSignIDType_cbc = class(TXMLNode, IXMLRadioCallSignIDType_cbc)
  protected
    { IXMLRadioCallSignIDType_cbc }
  end;

{ TXMLShipsRequirementsType_cbc }

  TXMLShipsRequirementsType_cbc = class(TXMLNode, IXMLShipsRequirementsType_cbc)
  protected
    { IXMLShipsRequirementsType_cbc }
  end;

{ TXMLShipsRequirementsType_cbcList }

  TXMLShipsRequirementsType_cbcList = class(TXMLNodeCollection, IXMLShipsRequirementsType_cbcList)
  protected
    { IXMLShipsRequirementsType_cbcList }
    function Add: IXMLShipsRequirementsType_cbc;
    function Insert(const Index: Integer): IXMLShipsRequirementsType_cbc;

    function Get_Item(Index: Integer): IXMLShipsRequirementsType_cbc;
  end;

{ TXMLGrossTonnageMeasureType_cbc }

  TXMLGrossTonnageMeasureType_cbc = class(TXMLNode, IXMLGrossTonnageMeasureType_cbc)
  protected
    { IXMLGrossTonnageMeasureType_cbc }
  end;

{ TXMLNetTonnageMeasureType_cbc }

  TXMLNetTonnageMeasureType_cbc = class(TXMLNode, IXMLNetTonnageMeasureType_cbc)
  protected
    { IXMLNetTonnageMeasureType_cbc }
  end;

{ TXMLTransportHandlingUnitType_cac }

  TXMLTransportHandlingUnitType_cac = class(TXMLNode, IXMLTransportHandlingUnitType_cac)
  private
    FDamageRemarks: IXMLDamageRemarksType_cbcList;
    FActualPackage: IXMLPackageType_cacList;
    FTransportEquipment: IXMLTransportEquipmentType_cacList;
    FTransportMeans: IXMLTransportMeansType_cacList;
    FHazardousGoodsTransit: IXMLHazardousGoodsTransitType_cacList;
    FMeasurementDimension: IXMLDimensionType_cacList;
    FShipmentDocumentReference: IXMLDocumentReferenceType_cacList;
    FCustomsDeclaration: IXMLCustomsDeclarationType_cacList;
  protected
    { IXMLTransportHandlingUnitType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportHandlingUnitTypeCode: IXMLTransportHandlingUnitTypeCodeType_cbc;
    function Get_HandlingCode: IXMLHandlingCodeType_cbc;
    function Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
    function Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
    function Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
    function Get_TotalPackageQuantity: IXMLTotalPackageQuantityType_cbc;
    function Get_DamageRemarks: IXMLDamageRemarksType_cbcList;
    function Get_TraceID: IXMLTraceIDType_cbc;
    function Get_ActualPackage: IXMLPackageType_cacList;
    function Get_TransportEquipment: IXMLTransportEquipmentType_cacList;
    function Get_TransportMeans: IXMLTransportMeansType_cacList;
    function Get_HazardousGoodsTransit: IXMLHazardousGoodsTransitType_cacList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
    function Get_MinimumTemperature: IXMLTemperatureType_cac;
    function Get_MaximumTemperature: IXMLTemperatureType_cac;
    function Get_FloorSpaceMeasurementDimension: IXMLDimensionType_cac;
    function Get_PalletSpaceMeasurementDimension: IXMLDimensionType_cac;
    function Get_ShipmentDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_CustomsDeclaration: IXMLCustomsDeclarationType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransportHandlingUnitType_cacList }

  TXMLTransportHandlingUnitType_cacList = class(TXMLNodeCollection, IXMLTransportHandlingUnitType_cacList)
  protected
    { IXMLTransportHandlingUnitType_cacList }
    function Add: IXMLTransportHandlingUnitType_cac;
    function Insert(const Index: Integer): IXMLTransportHandlingUnitType_cac;

    function Get_Item(Index: Integer): IXMLTransportHandlingUnitType_cac;
  end;

{ TXMLTransportHandlingUnitTypeCodeType_cbc }

  TXMLTransportHandlingUnitTypeCodeType_cbc = class(TXMLNode, IXMLTransportHandlingUnitTypeCodeType_cbc)
  protected
    { IXMLTransportHandlingUnitTypeCodeType_cbc }
  end;

{ TXMLTotalPackageQuantityType_cbc }

  TXMLTotalPackageQuantityType_cbc = class(TXMLNode, IXMLTotalPackageQuantityType_cbc)
  protected
    { IXMLTotalPackageQuantityType_cbc }
  end;

{ TXMLDamageRemarksType_cbc }

  TXMLDamageRemarksType_cbc = class(TXMLNode, IXMLDamageRemarksType_cbc)
  protected
    { IXMLDamageRemarksType_cbc }
  end;

{ TXMLDamageRemarksType_cbcList }

  TXMLDamageRemarksType_cbcList = class(TXMLNodeCollection, IXMLDamageRemarksType_cbcList)
  protected
    { IXMLDamageRemarksType_cbcList }
    function Add: IXMLDamageRemarksType_cbc;
    function Insert(const Index: Integer): IXMLDamageRemarksType_cbc;

    function Get_Item(Index: Integer): IXMLDamageRemarksType_cbc;
  end;

{ TXMLPackageType_cac }

  TXMLPackageType_cac = class(TXMLNode, IXMLPackageType_cac)
  private
    FPackingMaterial: IXMLPackingMaterialType_cbcList;
    FContainedPackage: IXMLPackageType_cacList;
    FGoodsItem: IXMLGoodsItemType_cacList;
    FMeasurementDimension: IXMLDimensionType_cacList;
  protected
    { IXMLPackageType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Quantity: IXMLQuantityType_cbc;
    function Get_ReturnableMaterialIndicator: IXMLReturnableMaterialIndicatorType_cbc;
    function Get_PackageLevelCode: IXMLPackageLevelCodeType_cbc;
    function Get_PackagingTypeCode: IXMLPackagingTypeCodeType_cbc;
    function Get_PackingMaterial: IXMLPackingMaterialType_cbcList;
    function Get_ContainedPackage: IXMLPackageType_cacList;
    function Get_GoodsItem: IXMLGoodsItemType_cacList;
    function Get_MeasurementDimension: IXMLDimensionType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPackageType_cacList }

  TXMLPackageType_cacList = class(TXMLNodeCollection, IXMLPackageType_cacList)
  protected
    { IXMLPackageType_cacList }
    function Add: IXMLPackageType_cac;
    function Insert(const Index: Integer): IXMLPackageType_cac;

    function Get_Item(Index: Integer): IXMLPackageType_cac;
  end;

{ TXMLReturnableMaterialIndicatorType_cbc }

  TXMLReturnableMaterialIndicatorType_cbc = class(TXMLNode, IXMLReturnableMaterialIndicatorType_cbc)
  protected
    { IXMLReturnableMaterialIndicatorType_cbc }
  end;

{ TXMLPackageLevelCodeType_cbc }

  TXMLPackageLevelCodeType_cbc = class(TXMLNode, IXMLPackageLevelCodeType_cbc)
  protected
    { IXMLPackageLevelCodeType_cbc }
  end;

{ TXMLPackagingTypeCodeType_cbc }

  TXMLPackagingTypeCodeType_cbc = class(TXMLNode, IXMLPackagingTypeCodeType_cbc)
  protected
    { IXMLPackagingTypeCodeType_cbc }
  end;

{ TXMLPackingMaterialType_cbc }

  TXMLPackingMaterialType_cbc = class(TXMLNode, IXMLPackingMaterialType_cbc)
  protected
    { IXMLPackingMaterialType_cbc }
  end;

{ TXMLPackingMaterialType_cbcList }

  TXMLPackingMaterialType_cbcList = class(TXMLNodeCollection, IXMLPackingMaterialType_cbcList)
  protected
    { IXMLPackingMaterialType_cbcList }
    function Add: IXMLPackingMaterialType_cbc;
    function Insert(const Index: Integer): IXMLPackingMaterialType_cbc;

    function Get_Item(Index: Integer): IXMLPackingMaterialType_cbc;
  end;

{ TXMLTransportEquipmentType_cac }

  TXMLTransportEquipmentType_cac = class(TXMLNode, IXMLTransportEquipmentType_cac)
  protected
    { IXMLTransportEquipmentType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_TransportEquipmentTypeCode: IXMLTransportEquipmentTypeCodeType_cbc;
    function Get_Description: IXMLDescriptionType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransportEquipmentType_cacList }

  TXMLTransportEquipmentType_cacList = class(TXMLNodeCollection, IXMLTransportEquipmentType_cacList)
  protected
    { IXMLTransportEquipmentType_cacList }
    function Add: IXMLTransportEquipmentType_cac;
    function Insert(const Index: Integer): IXMLTransportEquipmentType_cac;

    function Get_Item(Index: Integer): IXMLTransportEquipmentType_cac;
  end;

{ TXMLTransportEquipmentTypeCodeType_cbc }

  TXMLTransportEquipmentTypeCodeType_cbc = class(TXMLNode, IXMLTransportEquipmentTypeCodeType_cbc)
  protected
    { IXMLTransportEquipmentTypeCodeType_cbc }
  end;

{ TXMLHazardousGoodsTransitType_cac }

  TXMLHazardousGoodsTransitType_cac = class(TXMLNode, IXMLHazardousGoodsTransitType_cac)
  protected
    { IXMLHazardousGoodsTransitType_cac }
    function Get_TransportEmergencyCardCode: IXMLTransportEmergencyCardCodeType_cbc;
    function Get_PackingCriteriaCode: IXMLPackingCriteriaCodeType_cbc;
    function Get_HazardousRegulationCode: IXMLHazardousRegulationCodeType_cbc;
    function Get_InhalationToxicityZoneCode: IXMLInhalationToxicityZoneCodeType_cbc;
    function Get_TransportAuthorizationCode: IXMLTransportAuthorizationCodeType_cbc;
    function Get_MaximumTemperature: IXMLTemperatureType_cac;
    function Get_MinimumTemperature: IXMLTemperatureType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLHazardousGoodsTransitType_cacList }

  TXMLHazardousGoodsTransitType_cacList = class(TXMLNodeCollection, IXMLHazardousGoodsTransitType_cacList)
  protected
    { IXMLHazardousGoodsTransitType_cacList }
    function Add: IXMLHazardousGoodsTransitType_cac;
    function Insert(const Index: Integer): IXMLHazardousGoodsTransitType_cac;

    function Get_Item(Index: Integer): IXMLHazardousGoodsTransitType_cac;
  end;

{ TXMLTransportEmergencyCardCodeType_cbc }

  TXMLTransportEmergencyCardCodeType_cbc = class(TXMLNode, IXMLTransportEmergencyCardCodeType_cbc)
  protected
    { IXMLTransportEmergencyCardCodeType_cbc }
  end;

{ TXMLPackingCriteriaCodeType_cbc }

  TXMLPackingCriteriaCodeType_cbc = class(TXMLNode, IXMLPackingCriteriaCodeType_cbc)
  protected
    { IXMLPackingCriteriaCodeType_cbc }
  end;

{ TXMLHazardousRegulationCodeType_cbc }

  TXMLHazardousRegulationCodeType_cbc = class(TXMLNode, IXMLHazardousRegulationCodeType_cbc)
  protected
    { IXMLHazardousRegulationCodeType_cbc }
  end;

{ TXMLInhalationToxicityZoneCodeType_cbc }

  TXMLInhalationToxicityZoneCodeType_cbc = class(TXMLNode, IXMLInhalationToxicityZoneCodeType_cbc)
  protected
    { IXMLInhalationToxicityZoneCodeType_cbc }
  end;

{ TXMLTransportAuthorizationCodeType_cbc }

  TXMLTransportAuthorizationCodeType_cbc = class(TXMLNode, IXMLTransportAuthorizationCodeType_cbc)
  protected
    { IXMLTransportAuthorizationCodeType_cbc }
  end;

{ TXMLCustomsDeclarationType_cac }

  TXMLCustomsDeclarationType_cac = class(TXMLNode, IXMLCustomsDeclarationType_cac)
  protected
    { IXMLCustomsDeclarationType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_IssuerParty: IXMLPartyType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomsDeclarationType_cacList }

  TXMLCustomsDeclarationType_cacList = class(TXMLNodeCollection, IXMLCustomsDeclarationType_cacList)
  protected
    { IXMLCustomsDeclarationType_cacList }
    function Add: IXMLCustomsDeclarationType_cac;
    function Insert(const Index: Integer): IXMLCustomsDeclarationType_cac;

    function Get_Item(Index: Integer): IXMLCustomsDeclarationType_cac;
  end;

{ TXMLDespatchLineType_cac }

  TXMLDespatchLineType_cac = class(TXMLNode, IXMLDespatchLineType_cac)
  private
    FNote: IXMLNoteType_cbcList;
    FOutstandingReason: IXMLOutstandingReasonType_cbcList;
    FDocumentReference: IXMLDocumentReferenceType_cacList;
    FShipment: IXMLShipmentType_cacList;
  protected
    { IXMLDespatchLineType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_DeliveredQuantity: IXMLDeliveredQuantityType_cbc;
    function Get_OutstandingQuantity: IXMLOutstandingQuantityType_cbc;
    function Get_OutstandingReason: IXMLOutstandingReasonType_cbcList;
    function Get_OversupplyQuantity: IXMLOversupplyQuantityType_cbc;
    function Get_OrderLineReference: IXMLOrderLineReferenceType_cac;
    function Get_DocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Item: IXMLItemType_cac;
    function Get_Shipment: IXMLShipmentType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDespatchLineType_cacList }

  TXMLDespatchLineType_cacList = class(TXMLNodeCollection, IXMLDespatchLineType_cacList)
  protected
    { IXMLDespatchLineType_cacList }
    function Add: IXMLDespatchLineType_cac;
    function Insert(const Index: Integer): IXMLDespatchLineType_cac;

    function Get_Item(Index: Integer): IXMLDespatchLineType_cac;
  end;

{ TXMLDeliveredQuantityType_cbc }

  TXMLDeliveredQuantityType_cbc = class(TXMLNode, IXMLDeliveredQuantityType_cbc)
  protected
    { IXMLDeliveredQuantityType_cbc }
  end;

{ TXMLOutstandingQuantityType_cbc }

  TXMLOutstandingQuantityType_cbc = class(TXMLNode, IXMLOutstandingQuantityType_cbc)
  protected
    { IXMLOutstandingQuantityType_cbc }
  end;

{ TXMLOutstandingReasonType_cbc }

  TXMLOutstandingReasonType_cbc = class(TXMLNode, IXMLOutstandingReasonType_cbc)
  protected
    { IXMLOutstandingReasonType_cbc }
  end;

{ TXMLOutstandingReasonType_cbcList }

  TXMLOutstandingReasonType_cbcList = class(TXMLNodeCollection, IXMLOutstandingReasonType_cbcList)
  protected
    { IXMLOutstandingReasonType_cbcList }
    function Add: IXMLOutstandingReasonType_cbc;
    function Insert(const Index: Integer): IXMLOutstandingReasonType_cbc;

    function Get_Item(Index: Integer): IXMLOutstandingReasonType_cbc;
  end;

{ TXMLOversupplyQuantityType_cbc }

  TXMLOversupplyQuantityType_cbc = class(TXMLNode, IXMLOversupplyQuantityType_cbc)
  protected
    { IXMLOversupplyQuantityType_cbc }
  end;

{ Global Functions }

function GetDespatchAdvice(Doc: IXMLDocument): IXMLDespatchAdviceType;
function LoadDespatchAdvice(const FileName: string): IXMLDespatchAdviceType;
function NewDespatchAdvice: IXMLDespatchAdviceType;

const
  TargetNamespace = 'urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetDespatchAdvice(Doc: IXMLDocument): IXMLDespatchAdviceType;
begin
  Result := Doc.GetDocBinding('DespatchAdvice', TXMLDespatchAdviceType, TargetNamespace) as IXMLDespatchAdviceType;
end;

function LoadDespatchAdvice(const FileName: string): IXMLDespatchAdviceType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DespatchAdvice', TXMLDespatchAdviceType, TargetNamespace) as IXMLDespatchAdviceType;
end;

function NewDespatchAdvice: IXMLDespatchAdviceType;
begin
  Result := NewXMLDocument.GetDocBinding('DespatchAdvice', TXMLDespatchAdviceType, TargetNamespace) as IXMLDespatchAdviceType;
end;

{ TXMLDespatchAdviceType }

procedure TXMLDespatchAdviceType.AfterConstruction;
begin
  RegisterChildNode('UBLExtensions', TXMLUBLExtensionsType_ext);
  RegisterChildNode('UBLVersionID', TXMLUBLVersionIDType_cbc);
  RegisterChildNode('CustomizationID', TXMLCustomizationIDType_cbc);
  RegisterChildNode('ProfileID', TXMLProfileIDType_cbc);
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('CopyIndicator', TXMLCopyIndicatorType_cbc);
  RegisterChildNode('UUID', TXMLUUIDType_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc);
  RegisterChildNode('IssueTime', TXMLIssueTimeType_cbc);
  RegisterChildNode('DespatchAdviceTypeCode', TXMLDespatchAdviceTypeCodeType_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc);
  RegisterChildNode('LineCountNumeric', TXMLLineCountNumericType_cbc);
  RegisterChildNode('OrderReference', TXMLOrderReferenceType_cac);
  RegisterChildNode('AdditionalDocumentReference', TXMLDocumentReferenceType_cac);
  RegisterChildNode('Signature', TXMLSignatureType_cac);
  RegisterChildNode('DespatchSupplierParty', TXMLSupplierPartyType_cac);
  RegisterChildNode('DeliveryCustomerParty', TXMLCustomerPartyType_cac);
  RegisterChildNode('BuyerCustomerParty', TXMLCustomerPartyType_cac);
  RegisterChildNode('SellerSupplierParty', TXMLSupplierPartyType_cac);
  RegisterChildNode('OriginatorCustomerParty', TXMLCustomerPartyType_cac);
  RegisterChildNode('Shipment', TXMLShipmentType_cac);
  RegisterChildNode('DespatchLine', TXMLDespatchLineType_cac);
  FNote := CreateCollection(TXMLNoteType_cbcList, IXMLNoteType_cbc, 'Note') as IXMLNoteType_cbcList;
  FOrderReference := CreateCollection(TXMLOrderReferenceType_cacList, IXMLOrderReferenceType_cac, 'OrderReference') as IXMLOrderReferenceType_cacList;
  FAdditionalDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'AdditionalDocumentReference') as IXMLDocumentReferenceType_cacList;
  FSignature := CreateCollection(TXMLSignatureType_cacList, IXMLSignatureType_cac, 'Signature') as IXMLSignatureType_cacList;
  FDespatchLine := CreateCollection(TXMLDespatchLineType_cacList, IXMLDespatchLineType_cac, 'DespatchLine') as IXMLDespatchLineType_cacList;
  inherited;
end;

function TXMLDespatchAdviceType.Get_UBLExtensions: IXMLUBLExtensionsType_ext;
begin
  Result := ChildNodes['UBLExtensions'] as IXMLUBLExtensionsType_ext;
end;

function TXMLDespatchAdviceType.Get_UBLVersionID: IXMLUBLVersionIDType_cbc;
begin
  Result := ChildNodes['UBLVersionID'] as IXMLUBLVersionIDType_cbc;
end;

function TXMLDespatchAdviceType.Get_CustomizationID: IXMLCustomizationIDType_cbc;
begin
  Result := ChildNodes['CustomizationID'] as IXMLCustomizationIDType_cbc;
end;

function TXMLDespatchAdviceType.Get_ProfileID: IXMLProfileIDType_cbc;
begin
  Result := ChildNodes['ProfileID'] as IXMLProfileIDType_cbc;
end;

function TXMLDespatchAdviceType.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDespatchAdviceType.Get_CopyIndicator: IXMLCopyIndicatorType_cbc;
begin
  Result := ChildNodes['CopyIndicator'] as IXMLCopyIndicatorType_cbc;
end;

function TXMLDespatchAdviceType.Get_UUID: IXMLUUIDType_cbc;
begin
  Result := ChildNodes['UUID'] as IXMLUUIDType_cbc;
end;

function TXMLDespatchAdviceType.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLDespatchAdviceType.Get_IssueTime: IXMLIssueTimeType_cbc;
begin
  Result := ChildNodes['IssueTime'] as IXMLIssueTimeType_cbc;
end;

function TXMLDespatchAdviceType.Get_DespatchAdviceTypeCode: IXMLDespatchAdviceTypeCodeType_cbc;
begin
  Result := ChildNodes['DespatchAdviceTypeCode'] as IXMLDespatchAdviceTypeCodeType_cbc;
end;

function TXMLDespatchAdviceType.Get_Note: IXMLNoteType_cbcList;
begin
  Result := FNote;
end;

function TXMLDespatchAdviceType.Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
begin
  Result := ChildNodes['LineCountNumeric'] as IXMLLineCountNumericType_cbc;
end;

function TXMLDespatchAdviceType.Get_OrderReference: IXMLOrderReferenceType_cacList;
begin
  Result := FOrderReference;
end;

function TXMLDespatchAdviceType.Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FAdditionalDocumentReference;
end;

function TXMLDespatchAdviceType.Get_Signature: IXMLSignatureType_cacList;
begin
  Result := FSignature;
end;

function TXMLDespatchAdviceType.Get_DespatchSupplierParty: IXMLSupplierPartyType_cac;
begin
  Result := ChildNodes['DespatchSupplierParty'] as IXMLSupplierPartyType_cac;
end;

function TXMLDespatchAdviceType.Get_DeliveryCustomerParty: IXMLCustomerPartyType_cac;
begin
  Result := ChildNodes['DeliveryCustomerParty'] as IXMLCustomerPartyType_cac;
end;

function TXMLDespatchAdviceType.Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
begin
  Result := ChildNodes['BuyerCustomerParty'] as IXMLCustomerPartyType_cac;
end;

function TXMLDespatchAdviceType.Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
begin
  Result := ChildNodes['SellerSupplierParty'] as IXMLSupplierPartyType_cac;
end;

function TXMLDespatchAdviceType.Get_OriginatorCustomerParty: IXMLCustomerPartyType_cac;
begin
  Result := ChildNodes['OriginatorCustomerParty'] as IXMLCustomerPartyType_cac;
end;

function TXMLDespatchAdviceType.Get_Shipment: IXMLShipmentType_cac;
begin
  Result := ChildNodes['Shipment'] as IXMLShipmentType_cac;
end;

function TXMLDespatchAdviceType.Get_DespatchLine: IXMLDespatchLineType_cacList;
begin
  Result := FDespatchLine;
end;

{ TXMLUBLExtensionsType_ext }

procedure TXMLUBLExtensionsType_ext.AfterConstruction;
begin
  RegisterChildNode('UBLExtension', TXMLUBLExtensionType_ext);
  ItemTag := 'UBLExtension';
  ItemInterface := IXMLUBLExtensionType_ext;
  inherited;
end;

function TXMLUBLExtensionsType_ext.Get_UBLExtension(Index: Integer): IXMLUBLExtensionType_ext;
begin
  Result := List[Index] as IXMLUBLExtensionType_ext;
end;

function TXMLUBLExtensionsType_ext.Add: IXMLUBLExtensionType_ext;
begin
  Result := AddItem(-1) as IXMLUBLExtensionType_ext;
end;

function TXMLUBLExtensionsType_ext.Insert(const Index: Integer): IXMLUBLExtensionType_ext;
begin
  Result := AddItem(Index) as IXMLUBLExtensionType_ext;
end;

{ TXMLUBLExtensionType_ext }

procedure TXMLUBLExtensionType_ext.AfterConstruction;
begin
  RegisterChildNode('ExtensionContent', TXMLExtensionContentType);
  inherited;
end;

function TXMLUBLExtensionType_ext.Get_ExtensionContent: IXMLExtensionContentType;
begin
  Result := ChildNodes['ExtensionContent'] as IXMLExtensionContentType;
end;

{ TXMLExtensionContentType }

{ TXMLUBLVersionIDType_cbc }

{ TXMLCustomizationIDType_cbc }

{ TXMLProfileIDType_cbc }

{ TXMLIDType_cbc }

{ TXMLCopyIndicatorType_cbc }

{ TXMLUUIDType_cbc }

{ TXMLIssueDateType_cbc }

{ TXMLIssueTimeType_cbc }

{ TXMLDespatchAdviceTypeCodeType_cbc }

{ TXMLNoteType_cbc }

{ TXMLNoteType_cbcList }

function TXMLNoteType_cbcList.Add: IXMLNoteType_cbc;
begin
  Result := AddItem(-1) as IXMLNoteType_cbc;
end;

function TXMLNoteType_cbcList.Insert(const Index: Integer): IXMLNoteType_cbc;
begin
  Result := AddItem(Index) as IXMLNoteType_cbc;
end;

function TXMLNoteType_cbcList.Get_Item(Index: Integer): IXMLNoteType_cbc;
begin
  Result := List[Index] as IXMLNoteType_cbc;
end;

{ TXMLLineCountNumericType_cbc }

{ TXMLOrderReferenceType_cac }

procedure TXMLOrderReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('SalesOrderID', TXMLSalesOrderIDType_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc);
  RegisterChildNode('OrderTypeCode', TXMLOrderTypeCodeType_cbc);
  RegisterChildNode('DocumentReference', TXMLDocumentReferenceType_cac);
  inherited;
end;

function TXMLOrderReferenceType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_SalesOrderID: IXMLSalesOrderIDType_cbc;
begin
  Result := ChildNodes['SalesOrderID'] as IXMLSalesOrderIDType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_OrderTypeCode: IXMLOrderTypeCodeType_cbc;
begin
  Result := ChildNodes['OrderTypeCode'] as IXMLOrderTypeCodeType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_DocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['DocumentReference'] as IXMLDocumentReferenceType_cac;
end;

{ TXMLOrderReferenceType_cacList }

function TXMLOrderReferenceType_cacList.Add: IXMLOrderReferenceType_cac;
begin
  Result := AddItem(-1) as IXMLOrderReferenceType_cac;
end;

function TXMLOrderReferenceType_cacList.Insert(const Index: Integer): IXMLOrderReferenceType_cac;
begin
  Result := AddItem(Index) as IXMLOrderReferenceType_cac;
end;

function TXMLOrderReferenceType_cacList.Get_Item(Index: Integer): IXMLOrderReferenceType_cac;
begin
  Result := List[Index] as IXMLOrderReferenceType_cac;
end;

{ TXMLSalesOrderIDType_cbc }

{ TXMLOrderTypeCodeType_cbc }

{ TXMLDocumentReferenceType_cac }

procedure TXMLDocumentReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc);
  RegisterChildNode('DocumentTypeCode', TXMLDocumentTypeCodeType_cbc);
  RegisterChildNode('DocumentType', TXMLDocumentTypeType_cbc);
  RegisterChildNode('DocumentDescription', TXMLDocumentDescriptionType_cbc);
  RegisterChildNode('Attachment', TXMLAttachmentType_cac);
  RegisterChildNode('ValidityPeriod', TXMLPeriodType_cac);
  RegisterChildNode('IssuerParty', TXMLPartyType_cac);
  FDocumentDescription := CreateCollection(TXMLDocumentDescriptionType_cbcList, IXMLDocumentDescriptionType_cbc, 'DocumentDescription') as IXMLDocumentDescriptionType_cbcList;
  inherited;
end;

function TXMLDocumentReferenceType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentTypeCode: IXMLDocumentTypeCodeType_cbc;
begin
  Result := ChildNodes['DocumentTypeCode'] as IXMLDocumentTypeCodeType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentType: IXMLDocumentTypeType_cbc;
begin
  Result := ChildNodes['DocumentType'] as IXMLDocumentTypeType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentDescription: IXMLDocumentDescriptionType_cbcList;
begin
  Result := FDocumentDescription;
end;

function TXMLDocumentReferenceType_cac.Get_Attachment: IXMLAttachmentType_cac;
begin
  Result := ChildNodes['Attachment'] as IXMLAttachmentType_cac;
end;

function TXMLDocumentReferenceType_cac.Get_ValidityPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['ValidityPeriod'] as IXMLPeriodType_cac;
end;

function TXMLDocumentReferenceType_cac.Get_IssuerParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['IssuerParty'] as IXMLPartyType_cac;
end;

{ TXMLDocumentReferenceType_cacList }

function TXMLDocumentReferenceType_cacList.Add: IXMLDocumentReferenceType_cac;
begin
  Result := AddItem(-1) as IXMLDocumentReferenceType_cac;
end;

function TXMLDocumentReferenceType_cacList.Insert(const Index: Integer): IXMLDocumentReferenceType_cac;
begin
  Result := AddItem(Index) as IXMLDocumentReferenceType_cac;
end;

function TXMLDocumentReferenceType_cacList.Get_Item(Index: Integer): IXMLDocumentReferenceType_cac;
begin
  Result := List[Index] as IXMLDocumentReferenceType_cac;
end;

{ TXMLDocumentTypeCodeType_cbc }

{ TXMLDocumentTypeType_cbc }

{ TXMLDocumentDescriptionType_cbc }

{ TXMLDocumentDescriptionType_cbcList }

function TXMLDocumentDescriptionType_cbcList.Add: IXMLDocumentDescriptionType_cbc;
begin
  Result := AddItem(-1) as IXMLDocumentDescriptionType_cbc;
end;

function TXMLDocumentDescriptionType_cbcList.Insert(const Index: Integer): IXMLDocumentDescriptionType_cbc;
begin
  Result := AddItem(Index) as IXMLDocumentDescriptionType_cbc;
end;

function TXMLDocumentDescriptionType_cbcList.Get_Item(Index: Integer): IXMLDocumentDescriptionType_cbc;
begin
  Result := List[Index] as IXMLDocumentDescriptionType_cbc;
end;

{ TXMLAttachmentType_cac }

procedure TXMLAttachmentType_cac.AfterConstruction;
begin
  RegisterChildNode('EmbeddedDocumentBinaryObject', TXMLEmbeddedDocumentBinaryObjectType_cbc);
  RegisterChildNode('ExternalReference', TXMLExternalReferenceType_cac);
  inherited;
end;

function TXMLAttachmentType_cac.Get_EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc;
begin
  Result := ChildNodes['EmbeddedDocumentBinaryObject'] as IXMLEmbeddedDocumentBinaryObjectType_cbc;
end;

function TXMLAttachmentType_cac.Get_ExternalReference: IXMLExternalReferenceType_cac;
begin
  Result := ChildNodes['ExternalReference'] as IXMLExternalReferenceType_cac;
end;

{ TXMLEmbeddedDocumentBinaryObjectType_cbc }

{ TXMLExternalReferenceType_cac }

procedure TXMLExternalReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('URI', TXMLURIType_cbc);
  inherited;
end;

function TXMLExternalReferenceType_cac.Get_URI: IXMLURIType_cbc;
begin
  Result := ChildNodes['URI'] as IXMLURIType_cbc;
end;

{ TXMLURIType_cbc }

{ TXMLPeriodType_cac }

procedure TXMLPeriodType_cac.AfterConstruction;
begin
  RegisterChildNode('StartDate', TXMLStartDateType_cbc);
  RegisterChildNode('StartTime', TXMLStartTimeType_cbc);
  RegisterChildNode('EndDate', TXMLEndDateType_cbc);
  RegisterChildNode('EndTime', TXMLEndTimeType_cbc);
  RegisterChildNode('DurationMeasure', TXMLDurationMeasureType_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  inherited;
end;

function TXMLPeriodType_cac.Get_StartDate: IXMLStartDateType_cbc;
begin
  Result := ChildNodes['StartDate'] as IXMLStartDateType_cbc;
end;

function TXMLPeriodType_cac.Get_StartTime: IXMLStartTimeType_cbc;
begin
  Result := ChildNodes['StartTime'] as IXMLStartTimeType_cbc;
end;

function TXMLPeriodType_cac.Get_EndDate: IXMLEndDateType_cbc;
begin
  Result := ChildNodes['EndDate'] as IXMLEndDateType_cbc;
end;

function TXMLPeriodType_cac.Get_EndTime: IXMLEndTimeType_cbc;
begin
  Result := ChildNodes['EndTime'] as IXMLEndTimeType_cbc;
end;

function TXMLPeriodType_cac.Get_DurationMeasure: IXMLDurationMeasureType_cbc;
begin
  Result := ChildNodes['DurationMeasure'] as IXMLDurationMeasureType_cbc;
end;

function TXMLPeriodType_cac.Get_Description: IXMLDescriptionType_cbc;
begin
  Result := ChildNodes['Description'] as IXMLDescriptionType_cbc;
end;

{ TXMLStartDateType_cbc }

{ TXMLStartTimeType_cbc }

{ TXMLEndDateType_cbc }

{ TXMLEndTimeType_cbc }

{ TXMLDurationMeasureType_cbc }

{ TXMLDescriptionType_cbc }

{ TXMLDescriptionType_cbcList }

function TXMLDescriptionType_cbcList.Add: IXMLDescriptionType_cbc;
begin
  Result := AddItem(-1) as IXMLDescriptionType_cbc;
end;

function TXMLDescriptionType_cbcList.Insert(const Index: Integer): IXMLDescriptionType_cbc;
begin
  Result := AddItem(Index) as IXMLDescriptionType_cbc;
end;

function TXMLDescriptionType_cbcList.Get_Item(Index: Integer): IXMLDescriptionType_cbc;
begin
  Result := List[Index] as IXMLDescriptionType_cbc;
end;

{ TXMLPartyType_cac }

procedure TXMLPartyType_cac.AfterConstruction;
begin
  RegisterChildNode('WebsiteURI', TXMLWebsiteURIType_cbc);
  RegisterChildNode('EndpointID', TXMLEndpointIDType_cbc);
  RegisterChildNode('IndustryClassificationCode', TXMLIndustryClassificationCodeType_cbc);
  RegisterChildNode('PartyIdentification', TXMLPartyIdentificationType_cac);
  RegisterChildNode('PartyName', TXMLPartyNameType_cac);
  RegisterChildNode('PostalAddress', TXMLAddressType_cac);
  RegisterChildNode('PhysicalLocation', TXMLLocationType_cac);
  RegisterChildNode('PartyTaxScheme', TXMLPartyTaxSchemeType_cac);
  RegisterChildNode('PartyLegalEntity', TXMLPartyLegalEntityType_cac);
  RegisterChildNode('Contact', TXMLContactType_cac);
  RegisterChildNode('Person', TXMLPersonType_cac);
  RegisterChildNode('AgentParty', TXMLPartyType_cac);
  FPartyIdentification := CreateCollection(TXMLPartyIdentificationType_cacList, IXMLPartyIdentificationType_cac, 'PartyIdentification') as IXMLPartyIdentificationType_cacList;
  FPartyLegalEntity := CreateCollection(TXMLPartyLegalEntityType_cacList, IXMLPartyLegalEntityType_cac, 'PartyLegalEntity') as IXMLPartyLegalEntityType_cacList;
  inherited;
end;

function TXMLPartyType_cac.Get_WebsiteURI: IXMLWebsiteURIType_cbc;
begin
  Result := ChildNodes['WebsiteURI'] as IXMLWebsiteURIType_cbc;
end;

function TXMLPartyType_cac.Get_EndpointID: IXMLEndpointIDType_cbc;
begin
  Result := ChildNodes['EndpointID'] as IXMLEndpointIDType_cbc;
end;

function TXMLPartyType_cac.Get_IndustryClassificationCode: IXMLIndustryClassificationCodeType_cbc;
begin
  Result := ChildNodes['IndustryClassificationCode'] as IXMLIndustryClassificationCodeType_cbc;
end;

function TXMLPartyType_cac.Get_PartyIdentification: IXMLPartyIdentificationType_cacList;
begin
  Result := FPartyIdentification;
end;

function TXMLPartyType_cac.Get_PartyName: IXMLPartyNameType_cac;
begin
  Result := ChildNodes['PartyName'] as IXMLPartyNameType_cac;
end;

function TXMLPartyType_cac.Get_PostalAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['PostalAddress'] as IXMLAddressType_cac;
end;

function TXMLPartyType_cac.Get_PhysicalLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['PhysicalLocation'] as IXMLLocationType_cac;
end;

function TXMLPartyType_cac.Get_PartyTaxScheme: IXMLPartyTaxSchemeType_cac;
begin
  Result := ChildNodes['PartyTaxScheme'] as IXMLPartyTaxSchemeType_cac;
end;

function TXMLPartyType_cac.Get_PartyLegalEntity: IXMLPartyLegalEntityType_cacList;
begin
  Result := FPartyLegalEntity;
end;

function TXMLPartyType_cac.Get_Contact: IXMLContactType_cac;
begin
  Result := ChildNodes['Contact'] as IXMLContactType_cac;
end;

function TXMLPartyType_cac.Get_Person: IXMLPersonType_cac;
begin
  Result := ChildNodes['Person'] as IXMLPersonType_cac;
end;

function TXMLPartyType_cac.Get_AgentParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['AgentParty'] as IXMLPartyType_cac;
end;

{ TXMLWebsiteURIType_cbc }

{ TXMLEndpointIDType_cbc }

{ TXMLIndustryClassificationCodeType_cbc }

{ TXMLPartyIdentificationType_cac }

procedure TXMLPartyIdentificationType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  inherited;
end;

function TXMLPartyIdentificationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

{ TXMLPartyIdentificationType_cacList }

function TXMLPartyIdentificationType_cacList.Add: IXMLPartyIdentificationType_cac;
begin
  Result := AddItem(-1) as IXMLPartyIdentificationType_cac;
end;

function TXMLPartyIdentificationType_cacList.Insert(const Index: Integer): IXMLPartyIdentificationType_cac;
begin
  Result := AddItem(Index) as IXMLPartyIdentificationType_cac;
end;

function TXMLPartyIdentificationType_cacList.Get_Item(Index: Integer): IXMLPartyIdentificationType_cac;
begin
  Result := List[Index] as IXMLPartyIdentificationType_cac;
end;

{ TXMLPartyNameType_cac }

procedure TXMLPartyNameType_cac.AfterConstruction;
begin
  RegisterChildNode('Name', TXMLNameType_cbc);
  inherited;
end;

function TXMLPartyNameType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

{ TXMLNameType_cbc }

{ TXMLAddressType_cac }

procedure TXMLAddressType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Postbox', TXMLPostboxType_cbc);
  RegisterChildNode('Room', TXMLRoomType_cbc);
  RegisterChildNode('StreetName', TXMLStreetNameType_cbc);
  RegisterChildNode('BlockName', TXMLBlockNameType_cbc);
  RegisterChildNode('BuildingName', TXMLBuildingNameType_cbc);
  RegisterChildNode('BuildingNumber', TXMLBuildingNumberType_cbc);
  RegisterChildNode('CitySubdivisionName', TXMLCitySubdivisionNameType_cbc);
  RegisterChildNode('CityName', TXMLCityNameType_cbc);
  RegisterChildNode('PostalZone', TXMLPostalZoneType_cbc);
  RegisterChildNode('Region', TXMLRegionType_cbc);
  RegisterChildNode('District', TXMLDistrictType_cbc);
  RegisterChildNode('Country', TXMLCountryType_cac);
  inherited;
end;

function TXMLAddressType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLAddressType_cac.Get_Postbox: IXMLPostboxType_cbc;
begin
  Result := ChildNodes['Postbox'] as IXMLPostboxType_cbc;
end;

function TXMLAddressType_cac.Get_Room: IXMLRoomType_cbc;
begin
  Result := ChildNodes['Room'] as IXMLRoomType_cbc;
end;

function TXMLAddressType_cac.Get_StreetName: IXMLStreetNameType_cbc;
begin
  Result := ChildNodes['StreetName'] as IXMLStreetNameType_cbc;
end;

function TXMLAddressType_cac.Get_BlockName: IXMLBlockNameType_cbc;
begin
  Result := ChildNodes['BlockName'] as IXMLBlockNameType_cbc;
end;

function TXMLAddressType_cac.Get_BuildingName: IXMLBuildingNameType_cbc;
begin
  Result := ChildNodes['BuildingName'] as IXMLBuildingNameType_cbc;
end;

function TXMLAddressType_cac.Get_BuildingNumber: IXMLBuildingNumberType_cbc;
begin
  Result := ChildNodes['BuildingNumber'] as IXMLBuildingNumberType_cbc;
end;

function TXMLAddressType_cac.Get_CitySubdivisionName: IXMLCitySubdivisionNameType_cbc;
begin
  Result := ChildNodes['CitySubdivisionName'] as IXMLCitySubdivisionNameType_cbc;
end;

function TXMLAddressType_cac.Get_CityName: IXMLCityNameType_cbc;
begin
  Result := ChildNodes['CityName'] as IXMLCityNameType_cbc;
end;

function TXMLAddressType_cac.Get_PostalZone: IXMLPostalZoneType_cbc;
begin
  Result := ChildNodes['PostalZone'] as IXMLPostalZoneType_cbc;
end;

function TXMLAddressType_cac.Get_Region: IXMLRegionType_cbc;
begin
  Result := ChildNodes['Region'] as IXMLRegionType_cbc;
end;

function TXMLAddressType_cac.Get_District: IXMLDistrictType_cbc;
begin
  Result := ChildNodes['District'] as IXMLDistrictType_cbc;
end;

function TXMLAddressType_cac.Get_Country: IXMLCountryType_cac;
begin
  Result := ChildNodes['Country'] as IXMLCountryType_cac;
end;

{ TXMLAddressType_cacList }

function TXMLAddressType_cacList.Add: IXMLAddressType_cac;
begin
  Result := AddItem(-1) as IXMLAddressType_cac;
end;

function TXMLAddressType_cacList.Insert(const Index: Integer): IXMLAddressType_cac;
begin
  Result := AddItem(Index) as IXMLAddressType_cac;
end;

function TXMLAddressType_cacList.Get_Item(Index: Integer): IXMLAddressType_cac;
begin
  Result := List[Index] as IXMLAddressType_cac;
end;

{ TXMLPostboxType_cbc }

{ TXMLRoomType_cbc }

{ TXMLStreetNameType_cbc }

{ TXMLBlockNameType_cbc }

{ TXMLBuildingNameType_cbc }

{ TXMLBuildingNumberType_cbc }

{ TXMLCitySubdivisionNameType_cbc }

{ TXMLCityNameType_cbc }

{ TXMLPostalZoneType_cbc }

{ TXMLRegionType_cbc }

{ TXMLDistrictType_cbc }

{ TXMLCountryType_cac }

procedure TXMLCountryType_cac.AfterConstruction;
begin
  RegisterChildNode('IdentificationCode', TXMLIdentificationCodeType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  inherited;
end;

function TXMLCountryType_cac.Get_IdentificationCode: IXMLIdentificationCodeType_cbc;
begin
  Result := ChildNodes['IdentificationCode'] as IXMLIdentificationCodeType_cbc;
end;

function TXMLCountryType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

{ TXMLIdentificationCodeType_cbc }

{ TXMLLocationType_cac }

procedure TXMLLocationType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Address', TXMLAddressType_cac);
  inherited;
end;

function TXMLLocationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLLocationType_cac.Get_Address: IXMLAddressType_cac;
begin
  Result := ChildNodes['Address'] as IXMLAddressType_cac;
end;

{ TXMLPartyTaxSchemeType_cac }

procedure TXMLPartyTaxSchemeType_cac.AfterConstruction;
begin
  RegisterChildNode('RegistrationName', TXMLRegistrationNameType_cbc);
  RegisterChildNode('CompanyID', TXMLCompanyIDType_cbc);
  RegisterChildNode('TaxScheme', TXMLTaxSchemeType_cac);
  inherited;
end;

function TXMLPartyTaxSchemeType_cac.Get_RegistrationName: IXMLRegistrationNameType_cbc;
begin
  Result := ChildNodes['RegistrationName'] as IXMLRegistrationNameType_cbc;
end;

function TXMLPartyTaxSchemeType_cac.Get_CompanyID: IXMLCompanyIDType_cbc;
begin
  Result := ChildNodes['CompanyID'] as IXMLCompanyIDType_cbc;
end;

function TXMLPartyTaxSchemeType_cac.Get_TaxScheme: IXMLTaxSchemeType_cac;
begin
  Result := ChildNodes['TaxScheme'] as IXMLTaxSchemeType_cac;
end;

{ TXMLRegistrationNameType_cbc }

{ TXMLCompanyIDType_cbc }

{ TXMLTaxSchemeType_cac }

procedure TXMLTaxSchemeType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('TaxTypeCode', TXMLTaxTypeCodeType_cbc);
  inherited;
end;

function TXMLTaxSchemeType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLTaxSchemeType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLTaxSchemeType_cac.Get_TaxTypeCode: IXMLTaxTypeCodeType_cbc;
begin
  Result := ChildNodes['TaxTypeCode'] as IXMLTaxTypeCodeType_cbc;
end;

{ TXMLTaxTypeCodeType_cbc }

{ TXMLPartyLegalEntityType_cac }

procedure TXMLPartyLegalEntityType_cac.AfterConstruction;
begin
  RegisterChildNode('RegistrationName', TXMLRegistrationNameType_cbc);
  RegisterChildNode('CompanyID', TXMLCompanyIDType_cbc);
  RegisterChildNode('RegistrationDate', TXMLRegistrationDateType_cbc);
  RegisterChildNode('SoleProprietorshipIndicator', TXMLSoleProprietorshipIndicatorType_cbc);
  RegisterChildNode('CorporateStockAmount', TXMLCorporateStockAmountType_cbc);
  RegisterChildNode('FullyPaidSharesIndicator', TXMLFullyPaidSharesIndicatorType_cbc);
  RegisterChildNode('CorporateRegistrationScheme', TXMLCorporateRegistrationSchemeType_cac);
  RegisterChildNode('HeadOfficeParty', TXMLPartyType_cac);
  inherited;
end;

function TXMLPartyLegalEntityType_cac.Get_RegistrationName: IXMLRegistrationNameType_cbc;
begin
  Result := ChildNodes['RegistrationName'] as IXMLRegistrationNameType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CompanyID: IXMLCompanyIDType_cbc;
begin
  Result := ChildNodes['CompanyID'] as IXMLCompanyIDType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_RegistrationDate: IXMLRegistrationDateType_cbc;
begin
  Result := ChildNodes['RegistrationDate'] as IXMLRegistrationDateType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_SoleProprietorshipIndicator: IXMLSoleProprietorshipIndicatorType_cbc;
begin
  Result := ChildNodes['SoleProprietorshipIndicator'] as IXMLSoleProprietorshipIndicatorType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CorporateStockAmount: IXMLCorporateStockAmountType_cbc;
begin
  Result := ChildNodes['CorporateStockAmount'] as IXMLCorporateStockAmountType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_FullyPaidSharesIndicator: IXMLFullyPaidSharesIndicatorType_cbc;
begin
  Result := ChildNodes['FullyPaidSharesIndicator'] as IXMLFullyPaidSharesIndicatorType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CorporateRegistrationScheme: IXMLCorporateRegistrationSchemeType_cac;
begin
  Result := ChildNodes['CorporateRegistrationScheme'] as IXMLCorporateRegistrationSchemeType_cac;
end;

function TXMLPartyLegalEntityType_cac.Get_HeadOfficeParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['HeadOfficeParty'] as IXMLPartyType_cac;
end;

{ TXMLPartyLegalEntityType_cacList }

function TXMLPartyLegalEntityType_cacList.Add: IXMLPartyLegalEntityType_cac;
begin
  Result := AddItem(-1) as IXMLPartyLegalEntityType_cac;
end;

function TXMLPartyLegalEntityType_cacList.Insert(const Index: Integer): IXMLPartyLegalEntityType_cac;
begin
  Result := AddItem(Index) as IXMLPartyLegalEntityType_cac;
end;

function TXMLPartyLegalEntityType_cacList.Get_Item(Index: Integer): IXMLPartyLegalEntityType_cac;
begin
  Result := List[Index] as IXMLPartyLegalEntityType_cac;
end;

{ TXMLRegistrationDateType_cbc }

{ TXMLSoleProprietorshipIndicatorType_cbc }

{ TXMLCorporateStockAmountType_cbc }

{ TXMLFullyPaidSharesIndicatorType_cbc }

{ TXMLCorporateRegistrationSchemeType_cac }

procedure TXMLCorporateRegistrationSchemeType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('CorporateRegistrationTypeCode', TXMLCorporateRegistrationTypeCodeType_cbc);
  RegisterChildNode('JurisdictionRegionAddress', TXMLAddressType_cac);
  FJurisdictionRegionAddress := CreateCollection(TXMLAddressType_cacList, IXMLAddressType_cac, 'JurisdictionRegionAddress') as IXMLAddressType_cacList;
  inherited;
end;

function TXMLCorporateRegistrationSchemeType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLCorporateRegistrationSchemeType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLCorporateRegistrationSchemeType_cac.Get_CorporateRegistrationTypeCode: IXMLCorporateRegistrationTypeCodeType_cbc;
begin
  Result := ChildNodes['CorporateRegistrationTypeCode'] as IXMLCorporateRegistrationTypeCodeType_cbc;
end;

function TXMLCorporateRegistrationSchemeType_cac.Get_JurisdictionRegionAddress: IXMLAddressType_cacList;
begin
  Result := FJurisdictionRegionAddress;
end;

{ TXMLCorporateRegistrationTypeCodeType_cbc }

{ TXMLContactType_cac }

procedure TXMLContactType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('Telephone', TXMLTelephoneType_cbc);
  RegisterChildNode('Telefax', TXMLTelefaxType_cbc);
  RegisterChildNode('ElectronicMail', TXMLElectronicMailType_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc);
  RegisterChildNode('OtherCommunication', TXMLCommunicationType_cac);
  FOtherCommunication := CreateCollection(TXMLCommunicationType_cacList, IXMLCommunicationType_cac, 'OtherCommunication') as IXMLCommunicationType_cacList;
  inherited;
end;

function TXMLContactType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLContactType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLContactType_cac.Get_Telephone: IXMLTelephoneType_cbc;
begin
  Result := ChildNodes['Telephone'] as IXMLTelephoneType_cbc;
end;

function TXMLContactType_cac.Get_Telefax: IXMLTelefaxType_cbc;
begin
  Result := ChildNodes['Telefax'] as IXMLTelefaxType_cbc;
end;

function TXMLContactType_cac.Get_ElectronicMail: IXMLElectronicMailType_cbc;
begin
  Result := ChildNodes['ElectronicMail'] as IXMLElectronicMailType_cbc;
end;

function TXMLContactType_cac.Get_Note: IXMLNoteType_cbc;
begin
  Result := ChildNodes['Note'] as IXMLNoteType_cbc;
end;

function TXMLContactType_cac.Get_OtherCommunication: IXMLCommunicationType_cacList;
begin
  Result := FOtherCommunication;
end;

{ TXMLTelephoneType_cbc }

{ TXMLTelefaxType_cbc }

{ TXMLElectronicMailType_cbc }

{ TXMLCommunicationType_cac }

procedure TXMLCommunicationType_cac.AfterConstruction;
begin
  RegisterChildNode('ChannelCode', TXMLChannelCodeType_cbc);
  RegisterChildNode('Channel', TXMLChannelType_cbc);
  RegisterChildNode('Value', TXMLValueType_cbc);
  inherited;
end;

function TXMLCommunicationType_cac.Get_ChannelCode: IXMLChannelCodeType_cbc;
begin
  Result := ChildNodes['ChannelCode'] as IXMLChannelCodeType_cbc;
end;

function TXMLCommunicationType_cac.Get_Channel: IXMLChannelType_cbc;
begin
  Result := ChildNodes['Channel'] as IXMLChannelType_cbc;
end;

function TXMLCommunicationType_cac.Get_Value: IXMLValueType_cbc;
begin
  Result := ChildNodes['Value'] as IXMLValueType_cbc;
end;

{ TXMLCommunicationType_cacList }

function TXMLCommunicationType_cacList.Add: IXMLCommunicationType_cac;
begin
  Result := AddItem(-1) as IXMLCommunicationType_cac;
end;

function TXMLCommunicationType_cacList.Insert(const Index: Integer): IXMLCommunicationType_cac;
begin
  Result := AddItem(Index) as IXMLCommunicationType_cac;
end;

function TXMLCommunicationType_cacList.Get_Item(Index: Integer): IXMLCommunicationType_cac;
begin
  Result := List[Index] as IXMLCommunicationType_cac;
end;

{ TXMLChannelCodeType_cbc }

{ TXMLChannelType_cbc }

{ TXMLValueType_cbc }

{ TXMLPersonType_cac }

procedure TXMLPersonType_cac.AfterConstruction;
begin
  RegisterChildNode('FirstName', TXMLFirstNameType_cbc);
  RegisterChildNode('FamilyName', TXMLFamilyNameType_cbc);
  RegisterChildNode('Title', TXMLTitleType_cbc);
  RegisterChildNode('MiddleName', TXMLMiddleNameType_cbc);
  RegisterChildNode('NameSuffix', TXMLNameSuffixType_cbc);
  RegisterChildNode('NationalityID', TXMLNationalityIDType_cbc);
  RegisterChildNode('FinancialAccount', TXMLFinancialAccountType_cac);
  RegisterChildNode('IdentityDocumentReference', TXMLDocumentReferenceType_cac);
  inherited;
end;

function TXMLPersonType_cac.Get_FirstName: IXMLFirstNameType_cbc;
begin
  Result := ChildNodes['FirstName'] as IXMLFirstNameType_cbc;
end;

function TXMLPersonType_cac.Get_FamilyName: IXMLFamilyNameType_cbc;
begin
  Result := ChildNodes['FamilyName'] as IXMLFamilyNameType_cbc;
end;

function TXMLPersonType_cac.Get_Title: IXMLTitleType_cbc;
begin
  Result := ChildNodes['Title'] as IXMLTitleType_cbc;
end;

function TXMLPersonType_cac.Get_MiddleName: IXMLMiddleNameType_cbc;
begin
  Result := ChildNodes['MiddleName'] as IXMLMiddleNameType_cbc;
end;

function TXMLPersonType_cac.Get_NameSuffix: IXMLNameSuffixType_cbc;
begin
  Result := ChildNodes['NameSuffix'] as IXMLNameSuffixType_cbc;
end;

function TXMLPersonType_cac.Get_NationalityID: IXMLNationalityIDType_cbc;
begin
  Result := ChildNodes['NationalityID'] as IXMLNationalityIDType_cbc;
end;

function TXMLPersonType_cac.Get_FinancialAccount: IXMLFinancialAccountType_cac;
begin
  Result := ChildNodes['FinancialAccount'] as IXMLFinancialAccountType_cac;
end;

function TXMLPersonType_cac.Get_IdentityDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['IdentityDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

{ TXMLPersonType_cacList }

function TXMLPersonType_cacList.Add: IXMLPersonType_cac;
begin
  Result := AddItem(-1) as IXMLPersonType_cac;
end;

function TXMLPersonType_cacList.Insert(const Index: Integer): IXMLPersonType_cac;
begin
  Result := AddItem(Index) as IXMLPersonType_cac;
end;

function TXMLPersonType_cacList.Get_Item(Index: Integer): IXMLPersonType_cac;
begin
  Result := List[Index] as IXMLPersonType_cac;
end;

{ TXMLFirstNameType_cbc }

{ TXMLFamilyNameType_cbc }

{ TXMLTitleType_cbc }

{ TXMLMiddleNameType_cbc }

{ TXMLNameSuffixType_cbc }

{ TXMLNationalityIDType_cbc }

{ TXMLFinancialAccountType_cac }

procedure TXMLFinancialAccountType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('CurrencyCode', TXMLCurrencyCodeType_cbc);
  RegisterChildNode('PaymentNote', TXMLPaymentNoteType_cbc);
  RegisterChildNode('FinancialInstitutionBranch', TXMLBranchType_cac);
  inherited;
end;

function TXMLFinancialAccountType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLFinancialAccountType_cac.Get_CurrencyCode: IXMLCurrencyCodeType_cbc;
begin
  Result := ChildNodes['CurrencyCode'] as IXMLCurrencyCodeType_cbc;
end;

function TXMLFinancialAccountType_cac.Get_PaymentNote: IXMLPaymentNoteType_cbc;
begin
  Result := ChildNodes['PaymentNote'] as IXMLPaymentNoteType_cbc;
end;

function TXMLFinancialAccountType_cac.Get_FinancialInstitutionBranch: IXMLBranchType_cac;
begin
  Result := ChildNodes['FinancialInstitutionBranch'] as IXMLBranchType_cac;
end;

{ TXMLCurrencyCodeType_cbc }

{ TXMLPaymentNoteType_cbc }

{ TXMLBranchType_cac }

procedure TXMLBranchType_cac.AfterConstruction;
begin
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('FinancialInstitution', TXMLFinancialInstitutionType_cac);
  inherited;
end;

function TXMLBranchType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLBranchType_cac.Get_FinancialInstitution: IXMLFinancialInstitutionType_cac;
begin
  Result := ChildNodes['FinancialInstitution'] as IXMLFinancialInstitutionType_cac;
end;

{ TXMLFinancialInstitutionType_cac }

procedure TXMLFinancialInstitutionType_cac.AfterConstruction;
begin
  RegisterChildNode('Name', TXMLNameType_cbc);
  inherited;
end;

function TXMLFinancialInstitutionType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

{ TXMLSignatureType_cac }

procedure TXMLSignatureType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('SignatoryParty', TXMLPartyType_cac);
  RegisterChildNode('DigitalSignatureAttachment', TXMLAttachmentType_cac);
  inherited;
end;

function TXMLSignatureType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLSignatureType_cac.Get_SignatoryParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['SignatoryParty'] as IXMLPartyType_cac;
end;

function TXMLSignatureType_cac.Get_DigitalSignatureAttachment: IXMLAttachmentType_cac;
begin
  Result := ChildNodes['DigitalSignatureAttachment'] as IXMLAttachmentType_cac;
end;

{ TXMLSignatureType_cacList }

function TXMLSignatureType_cacList.Add: IXMLSignatureType_cac;
begin
  Result := AddItem(-1) as IXMLSignatureType_cac;
end;

function TXMLSignatureType_cacList.Insert(const Index: Integer): IXMLSignatureType_cac;
begin
  Result := AddItem(Index) as IXMLSignatureType_cac;
end;

function TXMLSignatureType_cacList.Get_Item(Index: Integer): IXMLSignatureType_cac;
begin
  Result := List[Index] as IXMLSignatureType_cac;
end;

{ TXMLSupplierPartyType_cac }

procedure TXMLSupplierPartyType_cac.AfterConstruction;
begin
  RegisterChildNode('Party', TXMLPartyType_cac);
  RegisterChildNode('DespatchContact', TXMLContactType_cac);
  inherited;
end;

function TXMLSupplierPartyType_cac.Get_Party: IXMLPartyType_cac;
begin
  Result := ChildNodes['Party'] as IXMLPartyType_cac;
end;

function TXMLSupplierPartyType_cac.Get_DespatchContact: IXMLContactType_cac;
begin
  Result := ChildNodes['DespatchContact'] as IXMLContactType_cac;
end;

{ TXMLCustomerPartyType_cac }

procedure TXMLCustomerPartyType_cac.AfterConstruction;
begin
  RegisterChildNode('Party', TXMLPartyType_cac);
  RegisterChildNode('DeliveryContact', TXMLContactType_cac);
  inherited;
end;

function TXMLCustomerPartyType_cac.Get_Party: IXMLPartyType_cac;
begin
  Result := ChildNodes['Party'] as IXMLPartyType_cac;
end;

function TXMLCustomerPartyType_cac.Get_DeliveryContact: IXMLContactType_cac;
begin
  Result := ChildNodes['DeliveryContact'] as IXMLContactType_cac;
end;

{ TXMLShipmentType_cac }

procedure TXMLShipmentType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('HandlingCode', TXMLHandlingCodeType_cbc);
  RegisterChildNode('HandlingInstructions', TXMLHandlingInstructionsType_cbc);
  RegisterChildNode('GrossWeightMeasure', TXMLGrossWeightMeasureType_cbc);
  RegisterChildNode('NetWeightMeasure', TXMLNetWeightMeasureType_cbc);
  RegisterChildNode('GrossVolumeMeasure', TXMLGrossVolumeMeasureType_cbc);
  RegisterChildNode('NetVolumeMeasure', TXMLNetVolumeMeasureType_cbc);
  RegisterChildNode('TotalGoodsItemQuantity', TXMLTotalGoodsItemQuantityType_cbc);
  RegisterChildNode('TotalTransportHandlingUnitQuantity', TXMLTotalTransportHandlingUnitQuantityType_cbc);
  RegisterChildNode('InsuranceValueAmount', TXMLInsuranceValueAmountType_cbc);
  RegisterChildNode('DeclaredCustomsValueAmount', TXMLDeclaredCustomsValueAmountType_cbc);
  RegisterChildNode('DeclaredForCarriageValueAmount', TXMLDeclaredForCarriageValueAmountType_cbc);
  RegisterChildNode('DeclaredStatisticsValueAmount', TXMLDeclaredStatisticsValueAmountType_cbc);
  RegisterChildNode('FreeOnBoardValueAmount', TXMLFreeOnBoardValueAmountType_cbc);
  RegisterChildNode('SpecialInstructions', TXMLSpecialInstructionsType_cbc);
  RegisterChildNode('GoodsItem', TXMLGoodsItemType_cac);
  RegisterChildNode('ShipmentStage', TXMLShipmentStageType_cac);
  RegisterChildNode('Delivery', TXMLDeliveryType_cac);
  RegisterChildNode('TransportHandlingUnit', TXMLTransportHandlingUnitType_cac);
  RegisterChildNode('ReturnAddress', TXMLAddressType_cac);
  RegisterChildNode('FirstArrivalPortLocation', TXMLLocationType_cac);
  RegisterChildNode('LastExitPortLocation', TXMLLocationType_cac);
  FSpecialInstructions := CreateCollection(TXMLSpecialInstructionsType_cbcList, IXMLSpecialInstructionsType_cbc, 'SpecialInstructions') as IXMLSpecialInstructionsType_cbcList;
  FGoodsItem := CreateCollection(TXMLGoodsItemType_cacList, IXMLGoodsItemType_cac, 'GoodsItem') as IXMLGoodsItemType_cacList;
  FShipmentStage := CreateCollection(TXMLShipmentStageType_cacList, IXMLShipmentStageType_cac, 'ShipmentStage') as IXMLShipmentStageType_cacList;
  FTransportHandlingUnit := CreateCollection(TXMLTransportHandlingUnitType_cacList, IXMLTransportHandlingUnitType_cac, 'TransportHandlingUnit') as IXMLTransportHandlingUnitType_cacList;
  inherited;
end;

function TXMLShipmentType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLShipmentType_cac.Get_HandlingCode: IXMLHandlingCodeType_cbc;
begin
  Result := ChildNodes['HandlingCode'] as IXMLHandlingCodeType_cbc;
end;

function TXMLShipmentType_cac.Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
begin
  Result := ChildNodes['HandlingInstructions'] as IXMLHandlingInstructionsType_cbc;
end;

function TXMLShipmentType_cac.Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
begin
  Result := ChildNodes['GrossWeightMeasure'] as IXMLGrossWeightMeasureType_cbc;
end;

function TXMLShipmentType_cac.Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
begin
  Result := ChildNodes['NetWeightMeasure'] as IXMLNetWeightMeasureType_cbc;
end;

function TXMLShipmentType_cac.Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
begin
  Result := ChildNodes['GrossVolumeMeasure'] as IXMLGrossVolumeMeasureType_cbc;
end;

function TXMLShipmentType_cac.Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
begin
  Result := ChildNodes['NetVolumeMeasure'] as IXMLNetVolumeMeasureType_cbc;
end;

function TXMLShipmentType_cac.Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
begin
  Result := ChildNodes['TotalGoodsItemQuantity'] as IXMLTotalGoodsItemQuantityType_cbc;
end;

function TXMLShipmentType_cac.Get_TotalTransportHandlingUnitQuantity: IXMLTotalTransportHandlingUnitQuantityType_cbc;
begin
  Result := ChildNodes['TotalTransportHandlingUnitQuantity'] as IXMLTotalTransportHandlingUnitQuantityType_cbc;
end;

function TXMLShipmentType_cac.Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
begin
  Result := ChildNodes['InsuranceValueAmount'] as IXMLInsuranceValueAmountType_cbc;
end;

function TXMLShipmentType_cac.Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredCustomsValueAmount'] as IXMLDeclaredCustomsValueAmountType_cbc;
end;

function TXMLShipmentType_cac.Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredForCarriageValueAmount'] as IXMLDeclaredForCarriageValueAmountType_cbc;
end;

function TXMLShipmentType_cac.Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredStatisticsValueAmount'] as IXMLDeclaredStatisticsValueAmountType_cbc;
end;

function TXMLShipmentType_cac.Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
begin
  Result := ChildNodes['FreeOnBoardValueAmount'] as IXMLFreeOnBoardValueAmountType_cbc;
end;

function TXMLShipmentType_cac.Get_SpecialInstructions: IXMLSpecialInstructionsType_cbcList;
begin
  Result := FSpecialInstructions;
end;

function TXMLShipmentType_cac.Get_GoodsItem: IXMLGoodsItemType_cacList;
begin
  Result := FGoodsItem;
end;

function TXMLShipmentType_cac.Get_ShipmentStage: IXMLShipmentStageType_cacList;
begin
  Result := FShipmentStage;
end;

function TXMLShipmentType_cac.Get_Delivery: IXMLDeliveryType_cac;
begin
  Result := ChildNodes['Delivery'] as IXMLDeliveryType_cac;
end;

function TXMLShipmentType_cac.Get_TransportHandlingUnit: IXMLTransportHandlingUnitType_cacList;
begin
  Result := FTransportHandlingUnit;
end;

function TXMLShipmentType_cac.Get_ReturnAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['ReturnAddress'] as IXMLAddressType_cac;
end;

function TXMLShipmentType_cac.Get_FirstArrivalPortLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['FirstArrivalPortLocation'] as IXMLLocationType_cac;
end;

function TXMLShipmentType_cac.Get_LastExitPortLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['LastExitPortLocation'] as IXMLLocationType_cac;
end;

{ TXMLShipmentType_cacList }

function TXMLShipmentType_cacList.Add: IXMLShipmentType_cac;
begin
  Result := AddItem(-1) as IXMLShipmentType_cac;
end;

function TXMLShipmentType_cacList.Insert(const Index: Integer): IXMLShipmentType_cac;
begin
  Result := AddItem(Index) as IXMLShipmentType_cac;
end;

function TXMLShipmentType_cacList.Get_Item(Index: Integer): IXMLShipmentType_cac;
begin
  Result := List[Index] as IXMLShipmentType_cac;
end;

{ TXMLHandlingCodeType_cbc }

{ TXMLHandlingInstructionsType_cbc }

{ TXMLGrossWeightMeasureType_cbc }

{ TXMLNetWeightMeasureType_cbc }

{ TXMLGrossVolumeMeasureType_cbc }

{ TXMLNetVolumeMeasureType_cbc }

{ TXMLTotalGoodsItemQuantityType_cbc }

{ TXMLTotalTransportHandlingUnitQuantityType_cbc }

{ TXMLInsuranceValueAmountType_cbc }

{ TXMLDeclaredCustomsValueAmountType_cbc }

{ TXMLDeclaredForCarriageValueAmountType_cbc }

{ TXMLDeclaredStatisticsValueAmountType_cbc }

{ TXMLFreeOnBoardValueAmountType_cbc }

{ TXMLSpecialInstructionsType_cbc }

{ TXMLSpecialInstructionsType_cbcList }

function TXMLSpecialInstructionsType_cbcList.Add: IXMLSpecialInstructionsType_cbc;
begin
  Result := AddItem(-1) as IXMLSpecialInstructionsType_cbc;
end;

function TXMLSpecialInstructionsType_cbcList.Insert(const Index: Integer): IXMLSpecialInstructionsType_cbc;
begin
  Result := AddItem(Index) as IXMLSpecialInstructionsType_cbc;
end;

function TXMLSpecialInstructionsType_cbcList.Get_Item(Index: Integer): IXMLSpecialInstructionsType_cbc;
begin
  Result := List[Index] as IXMLSpecialInstructionsType_cbc;
end;

{ TXMLGoodsItemType_cac }

procedure TXMLGoodsItemType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  RegisterChildNode('HazardousRiskIndicator', TXMLHazardousRiskIndicatorType_cbc);
  RegisterChildNode('DeclaredCustomsValueAmount', TXMLDeclaredCustomsValueAmountType_cbc);
  RegisterChildNode('DeclaredForCarriageValueAmount', TXMLDeclaredForCarriageValueAmountType_cbc);
  RegisterChildNode('DeclaredStatisticsValueAmount', TXMLDeclaredStatisticsValueAmountType_cbc);
  RegisterChildNode('FreeOnBoardValueAmount', TXMLFreeOnBoardValueAmountType_cbc);
  RegisterChildNode('InsuranceValueAmount', TXMLInsuranceValueAmountType_cbc);
  RegisterChildNode('ValueAmount', TXMLValueAmountType_cbc);
  RegisterChildNode('GrossWeightMeasure', TXMLGrossWeightMeasureType_cbc);
  RegisterChildNode('NetWeightMeasure', TXMLNetWeightMeasureType_cbc);
  RegisterChildNode('ChargeableWeightMeasure', TXMLChargeableWeightMeasureType_cbc);
  RegisterChildNode('GrossVolumeMeasure', TXMLGrossVolumeMeasureType_cbc);
  RegisterChildNode('NetVolumeMeasure', TXMLNetVolumeMeasureType_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc);
  RegisterChildNode('RequiredCustomsID', TXMLRequiredCustomsIDType_cbc);
  RegisterChildNode('CustomsStatusCode', TXMLCustomsStatusCodeType_cbc);
  RegisterChildNode('CustomsTariffQuantity', TXMLCustomsTariffQuantityType_cbc);
  RegisterChildNode('CustomsImportClassifiedIndicator', TXMLCustomsImportClassifiedIndicatorType_cbc);
  RegisterChildNode('ChargeableQuantity', TXMLChargeableQuantityType_cbc);
  RegisterChildNode('ReturnableQuantity', TXMLReturnableQuantityType_cbc);
  RegisterChildNode('TraceID', TXMLTraceIDType_cbc);
  RegisterChildNode('Item', TXMLItemType_cac);
  RegisterChildNode('FreightAllowanceCharge', TXMLAllowanceChargeType_cac);
  RegisterChildNode('InvoiceLine', TXMLInvoiceLineType_cac);
  RegisterChildNode('Temperature', TXMLTemperatureType_cac);
  RegisterChildNode('OriginAddress', TXMLAddressType_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac);
  FDescription := CreateCollection(TXMLDescriptionType_cbcList, IXMLDescriptionType_cbc, 'Description') as IXMLDescriptionType_cbcList;
  FItem := CreateCollection(TXMLItemType_cacList, IXMLItemType_cac, 'Item') as IXMLItemType_cacList;
  FFreightAllowanceCharge := CreateCollection(TXMLAllowanceChargeType_cacList, IXMLAllowanceChargeType_cac, 'FreightAllowanceCharge') as IXMLAllowanceChargeType_cacList;
  FInvoiceLine := CreateCollection(TXMLInvoiceLineType_cacList, IXMLInvoiceLineType_cac, 'InvoiceLine') as IXMLInvoiceLineType_cacList;
  FTemperature := CreateCollection(TXMLTemperatureType_cacList, IXMLTemperatureType_cac, 'Temperature') as IXMLTemperatureType_cacList;
  FMeasurementDimension := CreateCollection(TXMLDimensionType_cacList, IXMLDimensionType_cac, 'MeasurementDimension') as IXMLDimensionType_cacList;
  inherited;
end;

function TXMLGoodsItemType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLGoodsItemType_cac.Get_Description: IXMLDescriptionType_cbcList;
begin
  Result := FDescription;
end;

function TXMLGoodsItemType_cac.Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
begin
  Result := ChildNodes['HazardousRiskIndicator'] as IXMLHazardousRiskIndicatorType_cbc;
end;

function TXMLGoodsItemType_cac.Get_DeclaredCustomsValueAmount: IXMLDeclaredCustomsValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredCustomsValueAmount'] as IXMLDeclaredCustomsValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_DeclaredForCarriageValueAmount: IXMLDeclaredForCarriageValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredForCarriageValueAmount'] as IXMLDeclaredForCarriageValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_DeclaredStatisticsValueAmount: IXMLDeclaredStatisticsValueAmountType_cbc;
begin
  Result := ChildNodes['DeclaredStatisticsValueAmount'] as IXMLDeclaredStatisticsValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_FreeOnBoardValueAmount: IXMLFreeOnBoardValueAmountType_cbc;
begin
  Result := ChildNodes['FreeOnBoardValueAmount'] as IXMLFreeOnBoardValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_InsuranceValueAmount: IXMLInsuranceValueAmountType_cbc;
begin
  Result := ChildNodes['InsuranceValueAmount'] as IXMLInsuranceValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_ValueAmount: IXMLValueAmountType_cbc;
begin
  Result := ChildNodes['ValueAmount'] as IXMLValueAmountType_cbc;
end;

function TXMLGoodsItemType_cac.Get_GrossWeightMeasure: IXMLGrossWeightMeasureType_cbc;
begin
  Result := ChildNodes['GrossWeightMeasure'] as IXMLGrossWeightMeasureType_cbc;
end;

function TXMLGoodsItemType_cac.Get_NetWeightMeasure: IXMLNetWeightMeasureType_cbc;
begin
  Result := ChildNodes['NetWeightMeasure'] as IXMLNetWeightMeasureType_cbc;
end;

function TXMLGoodsItemType_cac.Get_ChargeableWeightMeasure: IXMLChargeableWeightMeasureType_cbc;
begin
  Result := ChildNodes['ChargeableWeightMeasure'] as IXMLChargeableWeightMeasureType_cbc;
end;

function TXMLGoodsItemType_cac.Get_GrossVolumeMeasure: IXMLGrossVolumeMeasureType_cbc;
begin
  Result := ChildNodes['GrossVolumeMeasure'] as IXMLGrossVolumeMeasureType_cbc;
end;

function TXMLGoodsItemType_cac.Get_NetVolumeMeasure: IXMLNetVolumeMeasureType_cbc;
begin
  Result := ChildNodes['NetVolumeMeasure'] as IXMLNetVolumeMeasureType_cbc;
end;

function TXMLGoodsItemType_cac.Get_Quantity: IXMLQuantityType_cbc;
begin
  Result := ChildNodes['Quantity'] as IXMLQuantityType_cbc;
end;

function TXMLGoodsItemType_cac.Get_RequiredCustomsID: IXMLRequiredCustomsIDType_cbc;
begin
  Result := ChildNodes['RequiredCustomsID'] as IXMLRequiredCustomsIDType_cbc;
end;

function TXMLGoodsItemType_cac.Get_CustomsStatusCode: IXMLCustomsStatusCodeType_cbc;
begin
  Result := ChildNodes['CustomsStatusCode'] as IXMLCustomsStatusCodeType_cbc;
end;

function TXMLGoodsItemType_cac.Get_CustomsTariffQuantity: IXMLCustomsTariffQuantityType_cbc;
begin
  Result := ChildNodes['CustomsTariffQuantity'] as IXMLCustomsTariffQuantityType_cbc;
end;

function TXMLGoodsItemType_cac.Get_CustomsImportClassifiedIndicator: IXMLCustomsImportClassifiedIndicatorType_cbc;
begin
  Result := ChildNodes['CustomsImportClassifiedIndicator'] as IXMLCustomsImportClassifiedIndicatorType_cbc;
end;

function TXMLGoodsItemType_cac.Get_ChargeableQuantity: IXMLChargeableQuantityType_cbc;
begin
  Result := ChildNodes['ChargeableQuantity'] as IXMLChargeableQuantityType_cbc;
end;

function TXMLGoodsItemType_cac.Get_ReturnableQuantity: IXMLReturnableQuantityType_cbc;
begin
  Result := ChildNodes['ReturnableQuantity'] as IXMLReturnableQuantityType_cbc;
end;

function TXMLGoodsItemType_cac.Get_TraceID: IXMLTraceIDType_cbc;
begin
  Result := ChildNodes['TraceID'] as IXMLTraceIDType_cbc;
end;

function TXMLGoodsItemType_cac.Get_Item: IXMLItemType_cacList;
begin
  Result := FItem;
end;

function TXMLGoodsItemType_cac.Get_FreightAllowanceCharge: IXMLAllowanceChargeType_cacList;
begin
  Result := FFreightAllowanceCharge;
end;

function TXMLGoodsItemType_cac.Get_InvoiceLine: IXMLInvoiceLineType_cacList;
begin
  Result := FInvoiceLine;
end;

function TXMLGoodsItemType_cac.Get_Temperature: IXMLTemperatureType_cacList;
begin
  Result := FTemperature;
end;

function TXMLGoodsItemType_cac.Get_OriginAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['OriginAddress'] as IXMLAddressType_cac;
end;

function TXMLGoodsItemType_cac.Get_MeasurementDimension: IXMLDimensionType_cacList;
begin
  Result := FMeasurementDimension;
end;

{ TXMLGoodsItemType_cacList }

function TXMLGoodsItemType_cacList.Add: IXMLGoodsItemType_cac;
begin
  Result := AddItem(-1) as IXMLGoodsItemType_cac;
end;

function TXMLGoodsItemType_cacList.Insert(const Index: Integer): IXMLGoodsItemType_cac;
begin
  Result := AddItem(Index) as IXMLGoodsItemType_cac;
end;

function TXMLGoodsItemType_cacList.Get_Item(Index: Integer): IXMLGoodsItemType_cac;
begin
  Result := List[Index] as IXMLGoodsItemType_cac;
end;

{ TXMLHazardousRiskIndicatorType_cbc }

{ TXMLValueAmountType_cbc }

{ TXMLChargeableWeightMeasureType_cbc }

{ TXMLQuantityType_cbc }

{ TXMLRequiredCustomsIDType_cbc }

{ TXMLCustomsStatusCodeType_cbc }

{ TXMLCustomsTariffQuantityType_cbc }

{ TXMLCustomsImportClassifiedIndicatorType_cbc }

{ TXMLChargeableQuantityType_cbc }

{ TXMLReturnableQuantityType_cbc }

{ TXMLTraceIDType_cbc }

{ TXMLItemType_cac }

procedure TXMLItemType_cac.AfterConstruction;
begin
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('Keyword', TXMLKeywordType_cbc);
  RegisterChildNode('BrandName', TXMLBrandNameType_cbc);
  RegisterChildNode('ModelName', TXMLModelNameType_cbc);
  RegisterChildNode('BuyersItemIdentification', TXMLItemIdentificationType_cac);
  RegisterChildNode('SellersItemIdentification', TXMLItemIdentificationType_cac);
  RegisterChildNode('ManufacturersItemIdentification', TXMLItemIdentificationType_cac);
  RegisterChildNode('AdditionalItemIdentification', TXMLItemIdentificationType_cac);
  RegisterChildNode('OriginCountry', TXMLCountryType_cac);
  RegisterChildNode('CommodityClassification', TXMLCommodityClassificationType_cac);
  RegisterChildNode('ItemInstance', TXMLItemInstanceType_cac);
  FAdditionalItemIdentification := CreateCollection(TXMLItemIdentificationType_cacList, IXMLItemIdentificationType_cac, 'AdditionalItemIdentification') as IXMLItemIdentificationType_cacList;
  FCommodityClassification := CreateCollection(TXMLCommodityClassificationType_cacList, IXMLCommodityClassificationType_cac, 'CommodityClassification') as IXMLCommodityClassificationType_cacList;
  FItemInstance := CreateCollection(TXMLItemInstanceType_cacList, IXMLItemInstanceType_cac, 'ItemInstance') as IXMLItemInstanceType_cacList;
  inherited;
end;

function TXMLItemType_cac.Get_Description: IXMLDescriptionType_cbc;
begin
  Result := ChildNodes['Description'] as IXMLDescriptionType_cbc;
end;

function TXMLItemType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLItemType_cac.Get_Keyword: IXMLKeywordType_cbc;
begin
  Result := ChildNodes['Keyword'] as IXMLKeywordType_cbc;
end;

function TXMLItemType_cac.Get_BrandName: IXMLBrandNameType_cbc;
begin
  Result := ChildNodes['BrandName'] as IXMLBrandNameType_cbc;
end;

function TXMLItemType_cac.Get_ModelName: IXMLModelNameType_cbc;
begin
  Result := ChildNodes['ModelName'] as IXMLModelNameType_cbc;
end;

function TXMLItemType_cac.Get_BuyersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['BuyersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_SellersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['SellersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_ManufacturersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['ManufacturersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_AdditionalItemIdentification: IXMLItemIdentificationType_cacList;
begin
  Result := FAdditionalItemIdentification;
end;

function TXMLItemType_cac.Get_OriginCountry: IXMLCountryType_cac;
begin
  Result := ChildNodes['OriginCountry'] as IXMLCountryType_cac;
end;

function TXMLItemType_cac.Get_CommodityClassification: IXMLCommodityClassificationType_cacList;
begin
  Result := FCommodityClassification;
end;

function TXMLItemType_cac.Get_ItemInstance: IXMLItemInstanceType_cacList;
begin
  Result := FItemInstance;
end;

{ TXMLItemType_cacList }

function TXMLItemType_cacList.Add: IXMLItemType_cac;
begin
  Result := AddItem(-1) as IXMLItemType_cac;
end;

function TXMLItemType_cacList.Insert(const Index: Integer): IXMLItemType_cac;
begin
  Result := AddItem(Index) as IXMLItemType_cac;
end;

function TXMLItemType_cacList.Get_Item(Index: Integer): IXMLItemType_cac;
begin
  Result := List[Index] as IXMLItemType_cac;
end;

{ TXMLKeywordType_cbc }

{ TXMLBrandNameType_cbc }

{ TXMLModelNameType_cbc }

{ TXMLItemIdentificationType_cac }

procedure TXMLItemIdentificationType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  inherited;
end;

function TXMLItemIdentificationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

{ TXMLItemIdentificationType_cacList }

function TXMLItemIdentificationType_cacList.Add: IXMLItemIdentificationType_cac;
begin
  Result := AddItem(-1) as IXMLItemIdentificationType_cac;
end;

function TXMLItemIdentificationType_cacList.Insert(const Index: Integer): IXMLItemIdentificationType_cac;
begin
  Result := AddItem(Index) as IXMLItemIdentificationType_cac;
end;

function TXMLItemIdentificationType_cacList.Get_Item(Index: Integer): IXMLItemIdentificationType_cac;
begin
  Result := List[Index] as IXMLItemIdentificationType_cac;
end;

{ TXMLCommodityClassificationType_cac }

procedure TXMLCommodityClassificationType_cac.AfterConstruction;
begin
  RegisterChildNode('ItemClassificationCode', TXMLItemClassificationCodeType_cbc);
  inherited;
end;

function TXMLCommodityClassificationType_cac.Get_ItemClassificationCode: IXMLItemClassificationCodeType_cbc;
begin
  Result := ChildNodes['ItemClassificationCode'] as IXMLItemClassificationCodeType_cbc;
end;

{ TXMLCommodityClassificationType_cacList }

function TXMLCommodityClassificationType_cacList.Add: IXMLCommodityClassificationType_cac;
begin
  Result := AddItem(-1) as IXMLCommodityClassificationType_cac;
end;

function TXMLCommodityClassificationType_cacList.Insert(const Index: Integer): IXMLCommodityClassificationType_cac;
begin
  Result := AddItem(Index) as IXMLCommodityClassificationType_cac;
end;

function TXMLCommodityClassificationType_cacList.Get_Item(Index: Integer): IXMLCommodityClassificationType_cac;
begin
  Result := List[Index] as IXMLCommodityClassificationType_cac;
end;

{ TXMLItemClassificationCodeType_cbc }

{ TXMLItemInstanceType_cac }

procedure TXMLItemInstanceType_cac.AfterConstruction;
begin
  RegisterChildNode('ProductTraceID', TXMLProductTraceIDType_cbc);
  RegisterChildNode('ManufactureDate', TXMLManufactureDateType_cbc);
  RegisterChildNode('ManufactureTime', TXMLManufactureTimeType_cbc);
  RegisterChildNode('BestBeforeDate', TXMLBestBeforeDateType_cbc);
  RegisterChildNode('RegistrationID', TXMLRegistrationIDType_cbc);
  RegisterChildNode('SerialID', TXMLSerialIDType_cbc);
  RegisterChildNode('AdditionalItemProperty', TXMLItemPropertyType_cac);
  RegisterChildNode('LotIdentification', TXMLLotIdentificationType_cac);
  FAdditionalItemProperty := CreateCollection(TXMLItemPropertyType_cacList, IXMLItemPropertyType_cac, 'AdditionalItemProperty') as IXMLItemPropertyType_cacList;
  inherited;
end;

function TXMLItemInstanceType_cac.Get_ProductTraceID: IXMLProductTraceIDType_cbc;
begin
  Result := ChildNodes['ProductTraceID'] as IXMLProductTraceIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_ManufactureDate: IXMLManufactureDateType_cbc;
begin
  Result := ChildNodes['ManufactureDate'] as IXMLManufactureDateType_cbc;
end;

function TXMLItemInstanceType_cac.Get_ManufactureTime: IXMLManufactureTimeType_cbc;
begin
  Result := ChildNodes['ManufactureTime'] as IXMLManufactureTimeType_cbc;
end;

function TXMLItemInstanceType_cac.Get_BestBeforeDate: IXMLBestBeforeDateType_cbc;
begin
  Result := ChildNodes['BestBeforeDate'] as IXMLBestBeforeDateType_cbc;
end;

function TXMLItemInstanceType_cac.Get_RegistrationID: IXMLRegistrationIDType_cbc;
begin
  Result := ChildNodes['RegistrationID'] as IXMLRegistrationIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_SerialID: IXMLSerialIDType_cbc;
begin
  Result := ChildNodes['SerialID'] as IXMLSerialIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
begin
  Result := FAdditionalItemProperty;
end;

function TXMLItemInstanceType_cac.Get_LotIdentification: IXMLLotIdentificationType_cac;
begin
  Result := ChildNodes['LotIdentification'] as IXMLLotIdentificationType_cac;
end;

{ TXMLItemInstanceType_cacList }

function TXMLItemInstanceType_cacList.Add: IXMLItemInstanceType_cac;
begin
  Result := AddItem(-1) as IXMLItemInstanceType_cac;
end;

function TXMLItemInstanceType_cacList.Insert(const Index: Integer): IXMLItemInstanceType_cac;
begin
  Result := AddItem(Index) as IXMLItemInstanceType_cac;
end;

function TXMLItemInstanceType_cacList.Get_Item(Index: Integer): IXMLItemInstanceType_cac;
begin
  Result := List[Index] as IXMLItemInstanceType_cac;
end;

{ TXMLProductTraceIDType_cbc }

{ TXMLManufactureDateType_cbc }

{ TXMLManufactureTimeType_cbc }

{ TXMLBestBeforeDateType_cbc }

{ TXMLRegistrationIDType_cbc }

{ TXMLSerialIDType_cbc }

{ TXMLItemPropertyType_cac }

procedure TXMLItemPropertyType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('NameCode', TXMLNameCodeType_cbc);
  RegisterChildNode('TestMethod', TXMLTestMethodType_cbc);
  RegisterChildNode('Value', TXMLValueType_cbc);
  RegisterChildNode('ValueQuantity', TXMLValueQuantityType_cbc);
  RegisterChildNode('ValueQualifier', TXMLValueQualifierType_cbc);
  RegisterChildNode('ImportanceCode', TXMLImportanceCodeType_cbc);
  RegisterChildNode('ListValue', TXMLListValueType_cbc);
  RegisterChildNode('UsabilityPeriod', TXMLPeriodType_cac);
  RegisterChildNode('ItemPropertyGroup', TXMLItemPropertyGroupType_cac);
  RegisterChildNode('RangeDimension', TXMLDimensionType_cac);
  RegisterChildNode('ItemPropertyRange', TXMLItemPropertyRangeType_cac);
  FValueQualifier := CreateCollection(TXMLValueQualifierType_cbcList, IXMLValueQualifierType_cbc, 'ValueQualifier') as IXMLValueQualifierType_cbcList;
  FListValue := CreateCollection(TXMLListValueType_cbcList, IXMLListValueType_cbc, 'ListValue') as IXMLListValueType_cbcList;
  FItemPropertyGroup := CreateCollection(TXMLItemPropertyGroupType_cacList, IXMLItemPropertyGroupType_cac, 'ItemPropertyGroup') as IXMLItemPropertyGroupType_cacList;
  inherited;
end;

function TXMLItemPropertyType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLItemPropertyType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLItemPropertyType_cac.Get_NameCode: IXMLNameCodeType_cbc;
begin
  Result := ChildNodes['NameCode'] as IXMLNameCodeType_cbc;
end;

function TXMLItemPropertyType_cac.Get_TestMethod: IXMLTestMethodType_cbc;
begin
  Result := ChildNodes['TestMethod'] as IXMLTestMethodType_cbc;
end;

function TXMLItemPropertyType_cac.Get_Value: IXMLValueType_cbc;
begin
  Result := ChildNodes['Value'] as IXMLValueType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ValueQuantity: IXMLValueQuantityType_cbc;
begin
  Result := ChildNodes['ValueQuantity'] as IXMLValueQuantityType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ValueQualifier: IXMLValueQualifierType_cbcList;
begin
  Result := FValueQualifier;
end;

function TXMLItemPropertyType_cac.Get_ImportanceCode: IXMLImportanceCodeType_cbc;
begin
  Result := ChildNodes['ImportanceCode'] as IXMLImportanceCodeType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ListValue: IXMLListValueType_cbcList;
begin
  Result := FListValue;
end;

function TXMLItemPropertyType_cac.Get_UsabilityPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['UsabilityPeriod'] as IXMLPeriodType_cac;
end;

function TXMLItemPropertyType_cac.Get_ItemPropertyGroup: IXMLItemPropertyGroupType_cacList;
begin
  Result := FItemPropertyGroup;
end;

function TXMLItemPropertyType_cac.Get_RangeDimension: IXMLDimensionType_cac;
begin
  Result := ChildNodes['RangeDimension'] as IXMLDimensionType_cac;
end;

function TXMLItemPropertyType_cac.Get_ItemPropertyRange: IXMLItemPropertyRangeType_cac;
begin
  Result := ChildNodes['ItemPropertyRange'] as IXMLItemPropertyRangeType_cac;
end;

{ TXMLItemPropertyType_cacList }

function TXMLItemPropertyType_cacList.Add: IXMLItemPropertyType_cac;
begin
  Result := AddItem(-1) as IXMLItemPropertyType_cac;
end;

function TXMLItemPropertyType_cacList.Insert(const Index: Integer): IXMLItemPropertyType_cac;
begin
  Result := AddItem(Index) as IXMLItemPropertyType_cac;
end;

function TXMLItemPropertyType_cacList.Get_Item(Index: Integer): IXMLItemPropertyType_cac;
begin
  Result := List[Index] as IXMLItemPropertyType_cac;
end;

{ TXMLNameCodeType_cbc }

{ TXMLTestMethodType_cbc }

{ TXMLValueQuantityType_cbc }

{ TXMLValueQualifierType_cbc }

{ TXMLValueQualifierType_cbcList }

function TXMLValueQualifierType_cbcList.Add: IXMLValueQualifierType_cbc;
begin
  Result := AddItem(-1) as IXMLValueQualifierType_cbc;
end;

function TXMLValueQualifierType_cbcList.Insert(const Index: Integer): IXMLValueQualifierType_cbc;
begin
  Result := AddItem(Index) as IXMLValueQualifierType_cbc;
end;

function TXMLValueQualifierType_cbcList.Get_Item(Index: Integer): IXMLValueQualifierType_cbc;
begin
  Result := List[Index] as IXMLValueQualifierType_cbc;
end;

{ TXMLImportanceCodeType_cbc }

{ TXMLListValueType_cbc }

{ TXMLListValueType_cbcList }

function TXMLListValueType_cbcList.Add: IXMLListValueType_cbc;
begin
  Result := AddItem(-1) as IXMLListValueType_cbc;
end;

function TXMLListValueType_cbcList.Insert(const Index: Integer): IXMLListValueType_cbc;
begin
  Result := AddItem(Index) as IXMLListValueType_cbc;
end;

function TXMLListValueType_cbcList.Get_Item(Index: Integer): IXMLListValueType_cbc;
begin
  Result := List[Index] as IXMLListValueType_cbc;
end;

{ TXMLItemPropertyGroupType_cac }

procedure TXMLItemPropertyGroupType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('ImportanceCode', TXMLImportanceCodeType_cbc);
  inherited;
end;

function TXMLItemPropertyGroupType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLItemPropertyGroupType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLItemPropertyGroupType_cac.Get_ImportanceCode: IXMLImportanceCodeType_cbc;
begin
  Result := ChildNodes['ImportanceCode'] as IXMLImportanceCodeType_cbc;
end;

{ TXMLItemPropertyGroupType_cacList }

function TXMLItemPropertyGroupType_cacList.Add: IXMLItemPropertyGroupType_cac;
begin
  Result := AddItem(-1) as IXMLItemPropertyGroupType_cac;
end;

function TXMLItemPropertyGroupType_cacList.Insert(const Index: Integer): IXMLItemPropertyGroupType_cac;
begin
  Result := AddItem(Index) as IXMLItemPropertyGroupType_cac;
end;

function TXMLItemPropertyGroupType_cacList.Get_Item(Index: Integer): IXMLItemPropertyGroupType_cac;
begin
  Result := List[Index] as IXMLItemPropertyGroupType_cac;
end;

{ TXMLDimensionType_cac }

procedure TXMLDimensionType_cac.AfterConstruction;
begin
  RegisterChildNode('AttributeID', TXMLAttributeIDType_cbc);
  RegisterChildNode('Measure', TXMLMeasureType_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  RegisterChildNode('MinimumMeasure', TXMLMinimumMeasureType_cbc);
  RegisterChildNode('MaximumMeasure', TXMLMaximumMeasureType_cbc);
  FDescription := CreateCollection(TXMLDescriptionType_cbcList, IXMLDescriptionType_cbc, 'Description') as IXMLDescriptionType_cbcList;
  inherited;
end;

function TXMLDimensionType_cac.Get_AttributeID: IXMLAttributeIDType_cbc;
begin
  Result := ChildNodes['AttributeID'] as IXMLAttributeIDType_cbc;
end;

function TXMLDimensionType_cac.Get_Measure: IXMLMeasureType_cbc;
begin
  Result := ChildNodes['Measure'] as IXMLMeasureType_cbc;
end;

function TXMLDimensionType_cac.Get_Description: IXMLDescriptionType_cbcList;
begin
  Result := FDescription;
end;

function TXMLDimensionType_cac.Get_MinimumMeasure: IXMLMinimumMeasureType_cbc;
begin
  Result := ChildNodes['MinimumMeasure'] as IXMLMinimumMeasureType_cbc;
end;

function TXMLDimensionType_cac.Get_MaximumMeasure: IXMLMaximumMeasureType_cbc;
begin
  Result := ChildNodes['MaximumMeasure'] as IXMLMaximumMeasureType_cbc;
end;

{ TXMLDimensionType_cacList }

function TXMLDimensionType_cacList.Add: IXMLDimensionType_cac;
begin
  Result := AddItem(-1) as IXMLDimensionType_cac;
end;

function TXMLDimensionType_cacList.Insert(const Index: Integer): IXMLDimensionType_cac;
begin
  Result := AddItem(Index) as IXMLDimensionType_cac;
end;

function TXMLDimensionType_cacList.Get_Item(Index: Integer): IXMLDimensionType_cac;
begin
  Result := List[Index] as IXMLDimensionType_cac;
end;

{ TXMLAttributeIDType_cbc }

{ TXMLMeasureType_cbc }

{ TXMLMinimumMeasureType_cbc }

{ TXMLMaximumMeasureType_cbc }

{ TXMLItemPropertyRangeType_cac }

procedure TXMLItemPropertyRangeType_cac.AfterConstruction;
begin
  RegisterChildNode('MinimumValue', TXMLMinimumValueType_cbc);
  RegisterChildNode('MaximumValue', TXMLMaximumValueType_cbc);
  inherited;
end;

function TXMLItemPropertyRangeType_cac.Get_MinimumValue: IXMLMinimumValueType_cbc;
begin
  Result := ChildNodes['MinimumValue'] as IXMLMinimumValueType_cbc;
end;

function TXMLItemPropertyRangeType_cac.Get_MaximumValue: IXMLMaximumValueType_cbc;
begin
  Result := ChildNodes['MaximumValue'] as IXMLMaximumValueType_cbc;
end;

{ TXMLMinimumValueType_cbc }

{ TXMLMaximumValueType_cbc }

{ TXMLLotIdentificationType_cac }

procedure TXMLLotIdentificationType_cac.AfterConstruction;
begin
  RegisterChildNode('LotNumberID', TXMLLotNumberIDType_cbc);
  RegisterChildNode('ExpiryDate', TXMLExpiryDateType_cbc);
  RegisterChildNode('AdditionalItemProperty', TXMLItemPropertyType_cac);
  FAdditionalItemProperty := CreateCollection(TXMLItemPropertyType_cacList, IXMLItemPropertyType_cac, 'AdditionalItemProperty') as IXMLItemPropertyType_cacList;
  inherited;
end;

function TXMLLotIdentificationType_cac.Get_LotNumberID: IXMLLotNumberIDType_cbc;
begin
  Result := ChildNodes['LotNumberID'] as IXMLLotNumberIDType_cbc;
end;

function TXMLLotIdentificationType_cac.Get_ExpiryDate: IXMLExpiryDateType_cbc;
begin
  Result := ChildNodes['ExpiryDate'] as IXMLExpiryDateType_cbc;
end;

function TXMLLotIdentificationType_cac.Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
begin
  Result := FAdditionalItemProperty;
end;

{ TXMLLotNumberIDType_cbc }

{ TXMLExpiryDateType_cbc }

{ TXMLAllowanceChargeType_cac }

procedure TXMLAllowanceChargeType_cac.AfterConstruction;
begin
  RegisterChildNode('ChargeIndicator', TXMLChargeIndicatorType_cbc);
  RegisterChildNode('AllowanceChargeReason', TXMLAllowanceChargeReasonType_cbc);
  RegisterChildNode('MultiplierFactorNumeric', TXMLMultiplierFactorNumericType_cbc);
  RegisterChildNode('SequenceNumeric', TXMLSequenceNumericType_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc);
  RegisterChildNode('BaseAmount', TXMLBaseAmountType_cbc);
  RegisterChildNode('PerUnitAmount', TXMLPerUnitAmountType_cbc);
  inherited;
end;

function TXMLAllowanceChargeType_cac.Get_ChargeIndicator: IXMLChargeIndicatorType_cbc;
begin
  Result := ChildNodes['ChargeIndicator'] as IXMLChargeIndicatorType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_AllowanceChargeReason: IXMLAllowanceChargeReasonType_cbc;
begin
  Result := ChildNodes['AllowanceChargeReason'] as IXMLAllowanceChargeReasonType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_MultiplierFactorNumeric: IXMLMultiplierFactorNumericType_cbc;
begin
  Result := ChildNodes['MultiplierFactorNumeric'] as IXMLMultiplierFactorNumericType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_SequenceNumeric: IXMLSequenceNumericType_cbc;
begin
  Result := ChildNodes['SequenceNumeric'] as IXMLSequenceNumericType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_Amount: IXMLAmountType_cbc;
begin
  Result := ChildNodes['Amount'] as IXMLAmountType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_BaseAmount: IXMLBaseAmountType_cbc;
begin
  Result := ChildNodes['BaseAmount'] as IXMLBaseAmountType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
begin
  Result := ChildNodes['PerUnitAmount'] as IXMLPerUnitAmountType_cbc;
end;

{ TXMLAllowanceChargeType_cacList }

function TXMLAllowanceChargeType_cacList.Add: IXMLAllowanceChargeType_cac;
begin
  Result := AddItem(-1) as IXMLAllowanceChargeType_cac;
end;

function TXMLAllowanceChargeType_cacList.Insert(const Index: Integer): IXMLAllowanceChargeType_cac;
begin
  Result := AddItem(Index) as IXMLAllowanceChargeType_cac;
end;

function TXMLAllowanceChargeType_cacList.Get_Item(Index: Integer): IXMLAllowanceChargeType_cac;
begin
  Result := List[Index] as IXMLAllowanceChargeType_cac;
end;

{ TXMLChargeIndicatorType_cbc }

{ TXMLAllowanceChargeReasonType_cbc }

{ TXMLMultiplierFactorNumericType_cbc }

{ TXMLSequenceNumericType_cbc }

{ TXMLAmountType_cbc }

{ TXMLBaseAmountType_cbc }

{ TXMLPerUnitAmountType_cbc }

{ TXMLInvoiceLineType_cac }

procedure TXMLInvoiceLineType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc);
  RegisterChildNode('InvoicedQuantity', TXMLInvoicedQuantityType_cbc);
  RegisterChildNode('LineExtensionAmount', TXMLLineExtensionAmountType_cbc);
  RegisterChildNode('OrderLineReference', TXMLOrderLineReferenceType_cac);
  RegisterChildNode('DespatchLineReference', TXMLLineReferenceType_cac);
  RegisterChildNode('ReceiptLineReference', TXMLLineReferenceType_cac);
  RegisterChildNode('Delivery', TXMLDeliveryType_cac);
  RegisterChildNode('AllowanceCharge', TXMLAllowanceChargeType_cac);
  RegisterChildNode('TaxTotal', TXMLTaxTotalType_cac);
  RegisterChildNode('WithholdingTaxTotal', TXMLTaxTotalType_cac);
  RegisterChildNode('Item', TXMLItemType_cac);
  RegisterChildNode('Price', TXMLPriceType_cac);
  RegisterChildNode('SubInvoiceLine', TXMLInvoiceLineType_cac);
  FNote := CreateCollection(TXMLNoteType_cbcList, IXMLNoteType_cbc, 'Note') as IXMLNoteType_cbcList;
  FOrderLineReference := CreateCollection(TXMLOrderLineReferenceType_cacList, IXMLOrderLineReferenceType_cac, 'OrderLineReference') as IXMLOrderLineReferenceType_cacList;
  FDespatchLineReference := CreateCollection(TXMLLineReferenceType_cacList, IXMLLineReferenceType_cac, 'DespatchLineReference') as IXMLLineReferenceType_cacList;
  FReceiptLineReference := CreateCollection(TXMLLineReferenceType_cacList, IXMLLineReferenceType_cac, 'ReceiptLineReference') as IXMLLineReferenceType_cacList;
  FDelivery := CreateCollection(TXMLDeliveryType_cacList, IXMLDeliveryType_cac, 'Delivery') as IXMLDeliveryType_cacList;
  FAllowanceCharge := CreateCollection(TXMLAllowanceChargeType_cacList, IXMLAllowanceChargeType_cac, 'AllowanceCharge') as IXMLAllowanceChargeType_cacList;
  FWithholdingTaxTotal := CreateCollection(TXMLTaxTotalType_cacList, IXMLTaxTotalType_cac, 'WithholdingTaxTotal') as IXMLTaxTotalType_cacList;
  FSubInvoiceLine := CreateCollection(TXMLInvoiceLineType_cacList, IXMLInvoiceLineType_cac, 'SubInvoiceLine') as IXMLInvoiceLineType_cacList;
  inherited;
end;

function TXMLInvoiceLineType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLInvoiceLineType_cac.Get_Note: IXMLNoteType_cbcList;
begin
  Result := FNote;
end;

function TXMLInvoiceLineType_cac.Get_InvoicedQuantity: IXMLInvoicedQuantityType_cbc;
begin
  Result := ChildNodes['InvoicedQuantity'] as IXMLInvoicedQuantityType_cbc;
end;

function TXMLInvoiceLineType_cac.Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
begin
  Result := ChildNodes['LineExtensionAmount'] as IXMLLineExtensionAmountType_cbc;
end;

function TXMLInvoiceLineType_cac.Get_OrderLineReference: IXMLOrderLineReferenceType_cacList;
begin
  Result := FOrderLineReference;
end;

function TXMLInvoiceLineType_cac.Get_DespatchLineReference: IXMLLineReferenceType_cacList;
begin
  Result := FDespatchLineReference;
end;

function TXMLInvoiceLineType_cac.Get_ReceiptLineReference: IXMLLineReferenceType_cacList;
begin
  Result := FReceiptLineReference;
end;

function TXMLInvoiceLineType_cac.Get_Delivery: IXMLDeliveryType_cacList;
begin
  Result := FDelivery;
end;

function TXMLInvoiceLineType_cac.Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
begin
  Result := FAllowanceCharge;
end;

function TXMLInvoiceLineType_cac.Get_TaxTotal: IXMLTaxTotalType_cac;
begin
  Result := ChildNodes['TaxTotal'] as IXMLTaxTotalType_cac;
end;

function TXMLInvoiceLineType_cac.Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
begin
  Result := FWithholdingTaxTotal;
end;

function TXMLInvoiceLineType_cac.Get_Item: IXMLItemType_cac;
begin
  Result := ChildNodes['Item'] as IXMLItemType_cac;
end;

function TXMLInvoiceLineType_cac.Get_Price: IXMLPriceType_cac;
begin
  Result := ChildNodes['Price'] as IXMLPriceType_cac;
end;

function TXMLInvoiceLineType_cac.Get_SubInvoiceLine: IXMLInvoiceLineType_cacList;
begin
  Result := FSubInvoiceLine;
end;

{ TXMLInvoiceLineType_cacList }

function TXMLInvoiceLineType_cacList.Add: IXMLInvoiceLineType_cac;
begin
  Result := AddItem(-1) as IXMLInvoiceLineType_cac;
end;

function TXMLInvoiceLineType_cacList.Insert(const Index: Integer): IXMLInvoiceLineType_cac;
begin
  Result := AddItem(Index) as IXMLInvoiceLineType_cac;
end;

function TXMLInvoiceLineType_cacList.Get_Item(Index: Integer): IXMLInvoiceLineType_cac;
begin
  Result := List[Index] as IXMLInvoiceLineType_cac;
end;

{ TXMLInvoicedQuantityType_cbc }

{ TXMLLineExtensionAmountType_cbc }

{ TXMLOrderLineReferenceType_cac }

procedure TXMLOrderLineReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('LineID', TXMLLineIDType_cbc);
  RegisterChildNode('SalesOrderLineID', TXMLSalesOrderLineIDType_cbc);
  RegisterChildNode('UUID', TXMLUUIDType_cbc);
  RegisterChildNode('LineStatusCode', TXMLLineStatusCodeType_cbc);
  RegisterChildNode('OrderReference', TXMLOrderReferenceType_cac);
  inherited;
end;

function TXMLOrderLineReferenceType_cac.Get_LineID: IXMLLineIDType_cbc;
begin
  Result := ChildNodes['LineID'] as IXMLLineIDType_cbc;
end;

function TXMLOrderLineReferenceType_cac.Get_SalesOrderLineID: IXMLSalesOrderLineIDType_cbc;
begin
  Result := ChildNodes['SalesOrderLineID'] as IXMLSalesOrderLineIDType_cbc;
end;

function TXMLOrderLineReferenceType_cac.Get_UUID: IXMLUUIDType_cbc;
begin
  Result := ChildNodes['UUID'] as IXMLUUIDType_cbc;
end;

function TXMLOrderLineReferenceType_cac.Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
begin
  Result := ChildNodes['LineStatusCode'] as IXMLLineStatusCodeType_cbc;
end;

function TXMLOrderLineReferenceType_cac.Get_OrderReference: IXMLOrderReferenceType_cac;
begin
  Result := ChildNodes['OrderReference'] as IXMLOrderReferenceType_cac;
end;

{ TXMLOrderLineReferenceType_cacList }

function TXMLOrderLineReferenceType_cacList.Add: IXMLOrderLineReferenceType_cac;
begin
  Result := AddItem(-1) as IXMLOrderLineReferenceType_cac;
end;

function TXMLOrderLineReferenceType_cacList.Insert(const Index: Integer): IXMLOrderLineReferenceType_cac;
begin
  Result := AddItem(Index) as IXMLOrderLineReferenceType_cac;
end;

function TXMLOrderLineReferenceType_cacList.Get_Item(Index: Integer): IXMLOrderLineReferenceType_cac;
begin
  Result := List[Index] as IXMLOrderLineReferenceType_cac;
end;

{ TXMLLineIDType_cbc }

{ TXMLSalesOrderLineIDType_cbc }

{ TXMLLineStatusCodeType_cbc }

{ TXMLLineReferenceType_cac }

procedure TXMLLineReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('LineID', TXMLLineIDType_cbc);
  RegisterChildNode('LineStatusCode', TXMLLineStatusCodeType_cbc);
  RegisterChildNode('DocumentReference', TXMLDocumentReferenceType_cac);
  inherited;
end;

function TXMLLineReferenceType_cac.Get_LineID: IXMLLineIDType_cbc;
begin
  Result := ChildNodes['LineID'] as IXMLLineIDType_cbc;
end;

function TXMLLineReferenceType_cac.Get_LineStatusCode: IXMLLineStatusCodeType_cbc;
begin
  Result := ChildNodes['LineStatusCode'] as IXMLLineStatusCodeType_cbc;
end;

function TXMLLineReferenceType_cac.Get_DocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['DocumentReference'] as IXMLDocumentReferenceType_cac;
end;

{ TXMLLineReferenceType_cacList }

function TXMLLineReferenceType_cacList.Add: IXMLLineReferenceType_cac;
begin
  Result := AddItem(-1) as IXMLLineReferenceType_cac;
end;

function TXMLLineReferenceType_cacList.Insert(const Index: Integer): IXMLLineReferenceType_cac;
begin
  Result := AddItem(Index) as IXMLLineReferenceType_cac;
end;

function TXMLLineReferenceType_cacList.Get_Item(Index: Integer): IXMLLineReferenceType_cac;
begin
  Result := List[Index] as IXMLLineReferenceType_cac;
end;

{ TXMLDeliveryType_cac }

procedure TXMLDeliveryType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc);
  RegisterChildNode('ActualDeliveryDate', TXMLActualDeliveryDateType_cbc);
  RegisterChildNode('ActualDeliveryTime', TXMLActualDeliveryTimeType_cbc);
  RegisterChildNode('LatestDeliveryDate', TXMLLatestDeliveryDateType_cbc);
  RegisterChildNode('LatestDeliveryTime', TXMLLatestDeliveryTimeType_cbc);
  RegisterChildNode('TrackingID', TXMLTrackingIDType_cbc);
  RegisterChildNode('DeliveryAddress', TXMLAddressType_cac);
  RegisterChildNode('AlternativeDeliveryLocation', TXMLLocationType_cac);
  RegisterChildNode('EstimatedDeliveryPeriod', TXMLPeriodType_cac);
  RegisterChildNode('CarrierParty', TXMLPartyType_cac);
  RegisterChildNode('DeliveryParty', TXMLPartyType_cac);
  RegisterChildNode('Despatch', TXMLDespatchType_cac);
  RegisterChildNode('DeliveryTerms', TXMLDeliveryTermsType_cac);
  RegisterChildNode('Shipment', TXMLShipmentType_cac);
  FDeliveryTerms := CreateCollection(TXMLDeliveryTermsType_cacList, IXMLDeliveryTermsType_cac, 'DeliveryTerms') as IXMLDeliveryTermsType_cacList;
  inherited;
end;

function TXMLDeliveryType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDeliveryType_cac.Get_Quantity: IXMLQuantityType_cbc;
begin
  Result := ChildNodes['Quantity'] as IXMLQuantityType_cbc;
end;

function TXMLDeliveryType_cac.Get_ActualDeliveryDate: IXMLActualDeliveryDateType_cbc;
begin
  Result := ChildNodes['ActualDeliveryDate'] as IXMLActualDeliveryDateType_cbc;
end;

function TXMLDeliveryType_cac.Get_ActualDeliveryTime: IXMLActualDeliveryTimeType_cbc;
begin
  Result := ChildNodes['ActualDeliveryTime'] as IXMLActualDeliveryTimeType_cbc;
end;

function TXMLDeliveryType_cac.Get_LatestDeliveryDate: IXMLLatestDeliveryDateType_cbc;
begin
  Result := ChildNodes['LatestDeliveryDate'] as IXMLLatestDeliveryDateType_cbc;
end;

function TXMLDeliveryType_cac.Get_LatestDeliveryTime: IXMLLatestDeliveryTimeType_cbc;
begin
  Result := ChildNodes['LatestDeliveryTime'] as IXMLLatestDeliveryTimeType_cbc;
end;

function TXMLDeliveryType_cac.Get_TrackingID: IXMLTrackingIDType_cbc;
begin
  Result := ChildNodes['TrackingID'] as IXMLTrackingIDType_cbc;
end;

function TXMLDeliveryType_cac.Get_DeliveryAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['DeliveryAddress'] as IXMLAddressType_cac;
end;

function TXMLDeliveryType_cac.Get_AlternativeDeliveryLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['AlternativeDeliveryLocation'] as IXMLLocationType_cac;
end;

function TXMLDeliveryType_cac.Get_EstimatedDeliveryPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['EstimatedDeliveryPeriod'] as IXMLPeriodType_cac;
end;

function TXMLDeliveryType_cac.Get_CarrierParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['CarrierParty'] as IXMLPartyType_cac;
end;

function TXMLDeliveryType_cac.Get_DeliveryParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['DeliveryParty'] as IXMLPartyType_cac;
end;

function TXMLDeliveryType_cac.Get_Despatch: IXMLDespatchType_cac;
begin
  Result := ChildNodes['Despatch'] as IXMLDespatchType_cac;
end;

function TXMLDeliveryType_cac.Get_DeliveryTerms: IXMLDeliveryTermsType_cacList;
begin
  Result := FDeliveryTerms;
end;

function TXMLDeliveryType_cac.Get_Shipment: IXMLShipmentType_cac;
begin
  Result := ChildNodes['Shipment'] as IXMLShipmentType_cac;
end;

{ TXMLDeliveryType_cacList }

function TXMLDeliveryType_cacList.Add: IXMLDeliveryType_cac;
begin
  Result := AddItem(-1) as IXMLDeliveryType_cac;
end;

function TXMLDeliveryType_cacList.Insert(const Index: Integer): IXMLDeliveryType_cac;
begin
  Result := AddItem(Index) as IXMLDeliveryType_cac;
end;

function TXMLDeliveryType_cacList.Get_Item(Index: Integer): IXMLDeliveryType_cac;
begin
  Result := List[Index] as IXMLDeliveryType_cac;
end;

{ TXMLActualDeliveryDateType_cbc }

{ TXMLActualDeliveryTimeType_cbc }

{ TXMLLatestDeliveryDateType_cbc }

{ TXMLLatestDeliveryTimeType_cbc }

{ TXMLTrackingIDType_cbc }

{ TXMLDespatchType_cac }

procedure TXMLDespatchType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('ActualDespatchDate', TXMLActualDespatchDateType_cbc);
  RegisterChildNode('ActualDespatchTime', TXMLActualDespatchTimeType_cbc);
  RegisterChildNode('Instructions', TXMLInstructionsType_cbc);
  RegisterChildNode('DespatchAddress', TXMLAddressType_cac);
  RegisterChildNode('DespatchParty', TXMLPartyType_cac);
  RegisterChildNode('Contact', TXMLContactType_cac);
  RegisterChildNode('EstimatedDespatchPeriod', TXMLPeriodType_cac);
  inherited;
end;

function TXMLDespatchType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDespatchType_cac.Get_ActualDespatchDate: IXMLActualDespatchDateType_cbc;
begin
  Result := ChildNodes['ActualDespatchDate'] as IXMLActualDespatchDateType_cbc;
end;

function TXMLDespatchType_cac.Get_ActualDespatchTime: IXMLActualDespatchTimeType_cbc;
begin
  Result := ChildNodes['ActualDespatchTime'] as IXMLActualDespatchTimeType_cbc;
end;

function TXMLDespatchType_cac.Get_Instructions: IXMLInstructionsType_cbc;
begin
  Result := ChildNodes['Instructions'] as IXMLInstructionsType_cbc;
end;

function TXMLDespatchType_cac.Get_DespatchAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['DespatchAddress'] as IXMLAddressType_cac;
end;

function TXMLDespatchType_cac.Get_DespatchParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['DespatchParty'] as IXMLPartyType_cac;
end;

function TXMLDespatchType_cac.Get_Contact: IXMLContactType_cac;
begin
  Result := ChildNodes['Contact'] as IXMLContactType_cac;
end;

function TXMLDespatchType_cac.Get_EstimatedDespatchPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['EstimatedDespatchPeriod'] as IXMLPeriodType_cac;
end;

{ TXMLActualDespatchDateType_cbc }

{ TXMLActualDespatchTimeType_cbc }

{ TXMLInstructionsType_cbc }

{ TXMLInstructionsType_cbcList }

function TXMLInstructionsType_cbcList.Add: IXMLInstructionsType_cbc;
begin
  Result := AddItem(-1) as IXMLInstructionsType_cbc;
end;

function TXMLInstructionsType_cbcList.Insert(const Index: Integer): IXMLInstructionsType_cbc;
begin
  Result := AddItem(Index) as IXMLInstructionsType_cbc;
end;

function TXMLInstructionsType_cbcList.Get_Item(Index: Integer): IXMLInstructionsType_cbc;
begin
  Result := List[Index] as IXMLInstructionsType_cbc;
end;

{ TXMLDeliveryTermsType_cac }

procedure TXMLDeliveryTermsType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('SpecialTerms', TXMLSpecialTermsType_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc);
  inherited;
end;

function TXMLDeliveryTermsType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDeliveryTermsType_cac.Get_SpecialTerms: IXMLSpecialTermsType_cbc;
begin
  Result := ChildNodes['SpecialTerms'] as IXMLSpecialTermsType_cbc;
end;

function TXMLDeliveryTermsType_cac.Get_Amount: IXMLAmountType_cbc;
begin
  Result := ChildNodes['Amount'] as IXMLAmountType_cbc;
end;

{ TXMLDeliveryTermsType_cacList }

function TXMLDeliveryTermsType_cacList.Add: IXMLDeliveryTermsType_cac;
begin
  Result := AddItem(-1) as IXMLDeliveryTermsType_cac;
end;

function TXMLDeliveryTermsType_cacList.Insert(const Index: Integer): IXMLDeliveryTermsType_cac;
begin
  Result := AddItem(Index) as IXMLDeliveryTermsType_cac;
end;

function TXMLDeliveryTermsType_cacList.Get_Item(Index: Integer): IXMLDeliveryTermsType_cac;
begin
  Result := List[Index] as IXMLDeliveryTermsType_cac;
end;

{ TXMLSpecialTermsType_cbc }

{ TXMLTaxTotalType_cac }

procedure TXMLTaxTotalType_cac.AfterConstruction;
begin
  RegisterChildNode('TaxAmount', TXMLTaxAmountType_cbc);
  RegisterChildNode('TaxSubtotal', TXMLTaxSubtotalType_cac);
  FTaxSubtotal := CreateCollection(TXMLTaxSubtotalType_cacList, IXMLTaxSubtotalType_cac, 'TaxSubtotal') as IXMLTaxSubtotalType_cacList;
  inherited;
end;

function TXMLTaxTotalType_cac.Get_TaxAmount: IXMLTaxAmountType_cbc;
begin
  Result := ChildNodes['TaxAmount'] as IXMLTaxAmountType_cbc;
end;

function TXMLTaxTotalType_cac.Get_TaxSubtotal: IXMLTaxSubtotalType_cacList;
begin
  Result := FTaxSubtotal;
end;

{ TXMLTaxTotalType_cacList }

function TXMLTaxTotalType_cacList.Add: IXMLTaxTotalType_cac;
begin
  Result := AddItem(-1) as IXMLTaxTotalType_cac;
end;

function TXMLTaxTotalType_cacList.Insert(const Index: Integer): IXMLTaxTotalType_cac;
begin
  Result := AddItem(Index) as IXMLTaxTotalType_cac;
end;

function TXMLTaxTotalType_cacList.Get_Item(Index: Integer): IXMLTaxTotalType_cac;
begin
  Result := List[Index] as IXMLTaxTotalType_cac;
end;

{ TXMLTaxAmountType_cbc }

{ TXMLTaxSubtotalType_cac }

procedure TXMLTaxSubtotalType_cac.AfterConstruction;
begin
  RegisterChildNode('TaxableAmount', TXMLTaxableAmountType_cbc);
  RegisterChildNode('TaxAmount', TXMLTaxAmountType_cbc);
  RegisterChildNode('CalculationSequenceNumeric', TXMLCalculationSequenceNumericType_cbc);
  RegisterChildNode('TransactionCurrencyTaxAmount', TXMLTransactionCurrencyTaxAmountType_cbc);
  RegisterChildNode('Percent', TXMLPercentType_cbc);
  RegisterChildNode('BaseUnitMeasure', TXMLBaseUnitMeasureType_cbc);
  RegisterChildNode('PerUnitAmount', TXMLPerUnitAmountType_cbc);
  RegisterChildNode('TaxCategory', TXMLTaxCategoryType_cac);
  inherited;
end;

function TXMLTaxSubtotalType_cac.Get_TaxableAmount: IXMLTaxableAmountType_cbc;
begin
  Result := ChildNodes['TaxableAmount'] as IXMLTaxableAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TaxAmount: IXMLTaxAmountType_cbc;
begin
  Result := ChildNodes['TaxAmount'] as IXMLTaxAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_CalculationSequenceNumeric: IXMLCalculationSequenceNumericType_cbc;
begin
  Result := ChildNodes['CalculationSequenceNumeric'] as IXMLCalculationSequenceNumericType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TransactionCurrencyTaxAmount: IXMLTransactionCurrencyTaxAmountType_cbc;
begin
  Result := ChildNodes['TransactionCurrencyTaxAmount'] as IXMLTransactionCurrencyTaxAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_Percent: IXMLPercentType_cbc;
begin
  Result := ChildNodes['Percent'] as IXMLPercentType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_BaseUnitMeasure: IXMLBaseUnitMeasureType_cbc;
begin
  Result := ChildNodes['BaseUnitMeasure'] as IXMLBaseUnitMeasureType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
begin
  Result := ChildNodes['PerUnitAmount'] as IXMLPerUnitAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TaxCategory: IXMLTaxCategoryType_cac;
begin
  Result := ChildNodes['TaxCategory'] as IXMLTaxCategoryType_cac;
end;

{ TXMLTaxSubtotalType_cacList }

function TXMLTaxSubtotalType_cacList.Add: IXMLTaxSubtotalType_cac;
begin
  Result := AddItem(-1) as IXMLTaxSubtotalType_cac;
end;

function TXMLTaxSubtotalType_cacList.Insert(const Index: Integer): IXMLTaxSubtotalType_cac;
begin
  Result := AddItem(Index) as IXMLTaxSubtotalType_cac;
end;

function TXMLTaxSubtotalType_cacList.Get_Item(Index: Integer): IXMLTaxSubtotalType_cac;
begin
  Result := List[Index] as IXMLTaxSubtotalType_cac;
end;

{ TXMLTaxableAmountType_cbc }

{ TXMLCalculationSequenceNumericType_cbc }

{ TXMLTransactionCurrencyTaxAmountType_cbc }

{ TXMLPercentType_cbc }

{ TXMLBaseUnitMeasureType_cbc }

{ TXMLTaxCategoryType_cac }

procedure TXMLTaxCategoryType_cac.AfterConstruction;
begin
  RegisterChildNode('Name', TXMLNameType_cbc);
  RegisterChildNode('TaxExemptionReasonCode', TXMLTaxExemptionReasonCodeType_cbc);
  RegisterChildNode('TaxExemptionReason', TXMLTaxExemptionReasonType_cbc);
  RegisterChildNode('TaxScheme', TXMLTaxSchemeType_cac);
  inherited;
end;

function TXMLTaxCategoryType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxExemptionReasonCode: IXMLTaxExemptionReasonCodeType_cbc;
begin
  Result := ChildNodes['TaxExemptionReasonCode'] as IXMLTaxExemptionReasonCodeType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxExemptionReason: IXMLTaxExemptionReasonType_cbc;
begin
  Result := ChildNodes['TaxExemptionReason'] as IXMLTaxExemptionReasonType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxScheme: IXMLTaxSchemeType_cac;
begin
  Result := ChildNodes['TaxScheme'] as IXMLTaxSchemeType_cac;
end;

{ TXMLTaxExemptionReasonCodeType_cbc }

{ TXMLTaxExemptionReasonType_cbc }

{ TXMLPriceType_cac }

procedure TXMLPriceType_cac.AfterConstruction;
begin
  RegisterChildNode('PriceAmount', TXMLPriceAmountType_cbc);
  inherited;
end;

function TXMLPriceType_cac.Get_PriceAmount: IXMLPriceAmountType_cbc;
begin
  Result := ChildNodes['PriceAmount'] as IXMLPriceAmountType_cbc;
end;

{ TXMLPriceAmountType_cbc }

{ TXMLTemperatureType_cac }

procedure TXMLTemperatureType_cac.AfterConstruction;
begin
  RegisterChildNode('AttributeID', TXMLAttributeIDType_cbc);
  RegisterChildNode('Measure', TXMLMeasureType_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  FDescription := CreateCollection(TXMLDescriptionType_cbcList, IXMLDescriptionType_cbc, 'Description') as IXMLDescriptionType_cbcList;
  inherited;
end;

function TXMLTemperatureType_cac.Get_AttributeID: IXMLAttributeIDType_cbc;
begin
  Result := ChildNodes['AttributeID'] as IXMLAttributeIDType_cbc;
end;

function TXMLTemperatureType_cac.Get_Measure: IXMLMeasureType_cbc;
begin
  Result := ChildNodes['Measure'] as IXMLMeasureType_cbc;
end;

function TXMLTemperatureType_cac.Get_Description: IXMLDescriptionType_cbcList;
begin
  Result := FDescription;
end;

{ TXMLTemperatureType_cacList }

function TXMLTemperatureType_cacList.Add: IXMLTemperatureType_cac;
begin
  Result := AddItem(-1) as IXMLTemperatureType_cac;
end;

function TXMLTemperatureType_cacList.Insert(const Index: Integer): IXMLTemperatureType_cac;
begin
  Result := AddItem(Index) as IXMLTemperatureType_cac;
end;

function TXMLTemperatureType_cacList.Get_Item(Index: Integer): IXMLTemperatureType_cac;
begin
  Result := List[Index] as IXMLTemperatureType_cac;
end;

{ TXMLShipmentStageType_cac }

procedure TXMLShipmentStageType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('TransportModeCode', TXMLTransportModeCodeType_cbc);
  RegisterChildNode('TransportMeansTypeCode', TXMLTransportMeansTypeCodeType_cbc);
  RegisterChildNode('TransitDirectionCode', TXMLTransitDirectionCodeType_cbc);
  RegisterChildNode('Instructions', TXMLInstructionsType_cbc);
  RegisterChildNode('TransitPeriod', TXMLPeriodType_cac);
  RegisterChildNode('TransportMeans', TXMLTransportMeansType_cac);
  RegisterChildNode('DriverPerson', TXMLPersonType_cac);
  FInstructions := CreateCollection(TXMLInstructionsType_cbcList, IXMLInstructionsType_cbc, 'Instructions') as IXMLInstructionsType_cbcList;
  FDriverPerson := CreateCollection(TXMLPersonType_cacList, IXMLPersonType_cac, 'DriverPerson') as IXMLPersonType_cacList;
  inherited;
end;

function TXMLShipmentStageType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLShipmentStageType_cac.Get_TransportModeCode: IXMLTransportModeCodeType_cbc;
begin
  Result := ChildNodes['TransportModeCode'] as IXMLTransportModeCodeType_cbc;
end;

function TXMLShipmentStageType_cac.Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
begin
  Result := ChildNodes['TransportMeansTypeCode'] as IXMLTransportMeansTypeCodeType_cbc;
end;

function TXMLShipmentStageType_cac.Get_TransitDirectionCode: IXMLTransitDirectionCodeType_cbc;
begin
  Result := ChildNodes['TransitDirectionCode'] as IXMLTransitDirectionCodeType_cbc;
end;

function TXMLShipmentStageType_cac.Get_Instructions: IXMLInstructionsType_cbcList;
begin
  Result := FInstructions;
end;

function TXMLShipmentStageType_cac.Get_TransitPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['TransitPeriod'] as IXMLPeriodType_cac;
end;

function TXMLShipmentStageType_cac.Get_TransportMeans: IXMLTransportMeansType_cac;
begin
  Result := ChildNodes['TransportMeans'] as IXMLTransportMeansType_cac;
end;

function TXMLShipmentStageType_cac.Get_DriverPerson: IXMLPersonType_cacList;
begin
  Result := FDriverPerson;
end;

{ TXMLShipmentStageType_cacList }

function TXMLShipmentStageType_cacList.Add: IXMLShipmentStageType_cac;
begin
  Result := AddItem(-1) as IXMLShipmentStageType_cac;
end;

function TXMLShipmentStageType_cacList.Insert(const Index: Integer): IXMLShipmentStageType_cac;
begin
  Result := AddItem(Index) as IXMLShipmentStageType_cac;
end;

function TXMLShipmentStageType_cacList.Get_Item(Index: Integer): IXMLShipmentStageType_cac;
begin
  Result := List[Index] as IXMLShipmentStageType_cac;
end;

{ TXMLTransportModeCodeType_cbc }

{ TXMLTransportMeansTypeCodeType_cbc }

{ TXMLTransitDirectionCodeType_cbc }

{ TXMLTransportMeansType_cac }

procedure TXMLTransportMeansType_cac.AfterConstruction;
begin
  RegisterChildNode('JourneyID', TXMLJourneyIDType_cbc);
  RegisterChildNode('RegistrationNationalityID', TXMLRegistrationNationalityIDType_cbc);
  RegisterChildNode('RegistrationNationality', TXMLRegistrationNationalityType_cbc);
  RegisterChildNode('DirectionCode', TXMLDirectionCodeType_cbc);
  RegisterChildNode('TransportMeansTypeCode', TXMLTransportMeansTypeCodeType_cbc);
  RegisterChildNode('TradeServiceCode', TXMLTradeServiceCodeType_cbc);
  RegisterChildNode('Stowage', TXMLStowageType_cac);
  RegisterChildNode('AirTransport', TXMLAirTransportType_cac);
  RegisterChildNode('RoadTransport', TXMLRoadTransportType_cac);
  RegisterChildNode('RailTransport', TXMLRailTransportType_cac);
  RegisterChildNode('MaritimeTransport', TXMLMaritimeTransportType_cac);
  RegisterChildNode('OwnerParty', TXMLPartyType_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac);
  FRegistrationNationality := CreateCollection(TXMLRegistrationNationalityType_cbcList, IXMLRegistrationNationalityType_cbc, 'RegistrationNationality') as IXMLRegistrationNationalityType_cbcList;
  FMeasurementDimension := CreateCollection(TXMLDimensionType_cacList, IXMLDimensionType_cac, 'MeasurementDimension') as IXMLDimensionType_cacList;
  inherited;
end;

function TXMLTransportMeansType_cac.Get_JourneyID: IXMLJourneyIDType_cbc;
begin
  Result := ChildNodes['JourneyID'] as IXMLJourneyIDType_cbc;
end;

function TXMLTransportMeansType_cac.Get_RegistrationNationalityID: IXMLRegistrationNationalityIDType_cbc;
begin
  Result := ChildNodes['RegistrationNationalityID'] as IXMLRegistrationNationalityIDType_cbc;
end;

function TXMLTransportMeansType_cac.Get_RegistrationNationality: IXMLRegistrationNationalityType_cbcList;
begin
  Result := FRegistrationNationality;
end;

function TXMLTransportMeansType_cac.Get_DirectionCode: IXMLDirectionCodeType_cbc;
begin
  Result := ChildNodes['DirectionCode'] as IXMLDirectionCodeType_cbc;
end;

function TXMLTransportMeansType_cac.Get_TransportMeansTypeCode: IXMLTransportMeansTypeCodeType_cbc;
begin
  Result := ChildNodes['TransportMeansTypeCode'] as IXMLTransportMeansTypeCodeType_cbc;
end;

function TXMLTransportMeansType_cac.Get_TradeServiceCode: IXMLTradeServiceCodeType_cbc;
begin
  Result := ChildNodes['TradeServiceCode'] as IXMLTradeServiceCodeType_cbc;
end;

function TXMLTransportMeansType_cac.Get_Stowage: IXMLStowageType_cac;
begin
  Result := ChildNodes['Stowage'] as IXMLStowageType_cac;
end;

function TXMLTransportMeansType_cac.Get_AirTransport: IXMLAirTransportType_cac;
begin
  Result := ChildNodes['AirTransport'] as IXMLAirTransportType_cac;
end;

function TXMLTransportMeansType_cac.Get_RoadTransport: IXMLRoadTransportType_cac;
begin
  Result := ChildNodes['RoadTransport'] as IXMLRoadTransportType_cac;
end;

function TXMLTransportMeansType_cac.Get_RailTransport: IXMLRailTransportType_cac;
begin
  Result := ChildNodes['RailTransport'] as IXMLRailTransportType_cac;
end;

function TXMLTransportMeansType_cac.Get_MaritimeTransport: IXMLMaritimeTransportType_cac;
begin
  Result := ChildNodes['MaritimeTransport'] as IXMLMaritimeTransportType_cac;
end;

function TXMLTransportMeansType_cac.Get_OwnerParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['OwnerParty'] as IXMLPartyType_cac;
end;

function TXMLTransportMeansType_cac.Get_MeasurementDimension: IXMLDimensionType_cacList;
begin
  Result := FMeasurementDimension;
end;

{ TXMLTransportMeansType_cacList }

function TXMLTransportMeansType_cacList.Add: IXMLTransportMeansType_cac;
begin
  Result := AddItem(-1) as IXMLTransportMeansType_cac;
end;

function TXMLTransportMeansType_cacList.Insert(const Index: Integer): IXMLTransportMeansType_cac;
begin
  Result := AddItem(Index) as IXMLTransportMeansType_cac;
end;

function TXMLTransportMeansType_cacList.Get_Item(Index: Integer): IXMLTransportMeansType_cac;
begin
  Result := List[Index] as IXMLTransportMeansType_cac;
end;

{ TXMLJourneyIDType_cbc }

{ TXMLRegistrationNationalityIDType_cbc }

{ TXMLRegistrationNationalityType_cbc }

{ TXMLRegistrationNationalityType_cbcList }

function TXMLRegistrationNationalityType_cbcList.Add: IXMLRegistrationNationalityType_cbc;
begin
  Result := AddItem(-1) as IXMLRegistrationNationalityType_cbc;
end;

function TXMLRegistrationNationalityType_cbcList.Insert(const Index: Integer): IXMLRegistrationNationalityType_cbc;
begin
  Result := AddItem(Index) as IXMLRegistrationNationalityType_cbc;
end;

function TXMLRegistrationNationalityType_cbcList.Get_Item(Index: Integer): IXMLRegistrationNationalityType_cbc;
begin
  Result := List[Index] as IXMLRegistrationNationalityType_cbc;
end;

{ TXMLDirectionCodeType_cbc }

{ TXMLTradeServiceCodeType_cbc }

{ TXMLStowageType_cac }

procedure TXMLStowageType_cac.AfterConstruction;
begin
  RegisterChildNode('LocationID', TXMLLocationIDType_cbc);
  RegisterChildNode('Location', TXMLLocationType_cbc);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac);
  FLocation := CreateCollection(TXMLLocationType_cbcList, IXMLLocationType_cbc, 'Location') as IXMLLocationType_cbcList;
  FMeasurementDimension := CreateCollection(TXMLDimensionType_cacList, IXMLDimensionType_cac, 'MeasurementDimension') as IXMLDimensionType_cacList;
  inherited;
end;

function TXMLStowageType_cac.Get_LocationID: IXMLLocationIDType_cbc;
begin
  Result := ChildNodes['LocationID'] as IXMLLocationIDType_cbc;
end;

function TXMLStowageType_cac.Get_Location: IXMLLocationType_cbcList;
begin
  Result := FLocation;
end;

function TXMLStowageType_cac.Get_MeasurementDimension: IXMLDimensionType_cacList;
begin
  Result := FMeasurementDimension;
end;

{ TXMLLocationIDType_cbc }

{ TXMLLocationType_cbc }

{ TXMLLocationType_cbcList }

function TXMLLocationType_cbcList.Add: IXMLLocationType_cbc;
begin
  Result := AddItem(-1) as IXMLLocationType_cbc;
end;

function TXMLLocationType_cbcList.Insert(const Index: Integer): IXMLLocationType_cbc;
begin
  Result := AddItem(Index) as IXMLLocationType_cbc;
end;

function TXMLLocationType_cbcList.Get_Item(Index: Integer): IXMLLocationType_cbc;
begin
  Result := List[Index] as IXMLLocationType_cbc;
end;

{ TXMLAirTransportType_cac }

procedure TXMLAirTransportType_cac.AfterConstruction;
begin
  RegisterChildNode('AircraftID', TXMLAircraftIDType_cbc);
  inherited;
end;

function TXMLAirTransportType_cac.Get_AircraftID: IXMLAircraftIDType_cbc;
begin
  Result := ChildNodes['AircraftID'] as IXMLAircraftIDType_cbc;
end;

{ TXMLAircraftIDType_cbc }

{ TXMLRoadTransportType_cac }

procedure TXMLRoadTransportType_cac.AfterConstruction;
begin
  RegisterChildNode('LicensePlateID', TXMLLicensePlateIDType_cbc);
  inherited;
end;

function TXMLRoadTransportType_cac.Get_LicensePlateID: IXMLLicensePlateIDType_cbc;
begin
  Result := ChildNodes['LicensePlateID'] as IXMLLicensePlateIDType_cbc;
end;

{ TXMLLicensePlateIDType_cbc }

{ TXMLRailTransportType_cac }

procedure TXMLRailTransportType_cac.AfterConstruction;
begin
  RegisterChildNode('TrainID', TXMLTrainIDType_cbc);
  RegisterChildNode('RailCarID', TXMLRailCarIDType_cbc);
  inherited;
end;

function TXMLRailTransportType_cac.Get_TrainID: IXMLTrainIDType_cbc;
begin
  Result := ChildNodes['TrainID'] as IXMLTrainIDType_cbc;
end;

function TXMLRailTransportType_cac.Get_RailCarID: IXMLRailCarIDType_cbc;
begin
  Result := ChildNodes['RailCarID'] as IXMLRailCarIDType_cbc;
end;

{ TXMLTrainIDType_cbc }

{ TXMLRailCarIDType_cbc }

{ TXMLMaritimeTransportType_cac }

procedure TXMLMaritimeTransportType_cac.AfterConstruction;
begin
  RegisterChildNode('VesselID', TXMLVesselIDType_cbc);
  RegisterChildNode('VesselName', TXMLVesselNameType_cbc);
  RegisterChildNode('RadioCallSignID', TXMLRadioCallSignIDType_cbc);
  RegisterChildNode('ShipsRequirements', TXMLShipsRequirementsType_cbc);
  RegisterChildNode('GrossTonnageMeasure', TXMLGrossTonnageMeasureType_cbc);
  RegisterChildNode('NetTonnageMeasure', TXMLNetTonnageMeasureType_cbc);
  RegisterChildNode('RegistryCertificateDocumentReference', TXMLDocumentReferenceType_cac);
  RegisterChildNode('RegistryPortLocation', TXMLLocationType_cac);
  FShipsRequirements := CreateCollection(TXMLShipsRequirementsType_cbcList, IXMLShipsRequirementsType_cbc, 'ShipsRequirements') as IXMLShipsRequirementsType_cbcList;
  inherited;
end;

function TXMLMaritimeTransportType_cac.Get_VesselID: IXMLVesselIDType_cbc;
begin
  Result := ChildNodes['VesselID'] as IXMLVesselIDType_cbc;
end;

function TXMLMaritimeTransportType_cac.Get_VesselName: IXMLVesselNameType_cbc;
begin
  Result := ChildNodes['VesselName'] as IXMLVesselNameType_cbc;
end;

function TXMLMaritimeTransportType_cac.Get_RadioCallSignID: IXMLRadioCallSignIDType_cbc;
begin
  Result := ChildNodes['RadioCallSignID'] as IXMLRadioCallSignIDType_cbc;
end;

function TXMLMaritimeTransportType_cac.Get_ShipsRequirements: IXMLShipsRequirementsType_cbcList;
begin
  Result := FShipsRequirements;
end;

function TXMLMaritimeTransportType_cac.Get_GrossTonnageMeasure: IXMLGrossTonnageMeasureType_cbc;
begin
  Result := ChildNodes['GrossTonnageMeasure'] as IXMLGrossTonnageMeasureType_cbc;
end;

function TXMLMaritimeTransportType_cac.Get_NetTonnageMeasure: IXMLNetTonnageMeasureType_cbc;
begin
  Result := ChildNodes['NetTonnageMeasure'] as IXMLNetTonnageMeasureType_cbc;
end;

function TXMLMaritimeTransportType_cac.Get_RegistryCertificateDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['RegistryCertificateDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLMaritimeTransportType_cac.Get_RegistryPortLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['RegistryPortLocation'] as IXMLLocationType_cac;
end;

{ TXMLVesselIDType_cbc }

{ TXMLVesselNameType_cbc }

{ TXMLRadioCallSignIDType_cbc }

{ TXMLShipsRequirementsType_cbc }

{ TXMLShipsRequirementsType_cbcList }

function TXMLShipsRequirementsType_cbcList.Add: IXMLShipsRequirementsType_cbc;
begin
  Result := AddItem(-1) as IXMLShipsRequirementsType_cbc;
end;

function TXMLShipsRequirementsType_cbcList.Insert(const Index: Integer): IXMLShipsRequirementsType_cbc;
begin
  Result := AddItem(Index) as IXMLShipsRequirementsType_cbc;
end;

function TXMLShipsRequirementsType_cbcList.Get_Item(Index: Integer): IXMLShipsRequirementsType_cbc;
begin
  Result := List[Index] as IXMLShipsRequirementsType_cbc;
end;

{ TXMLGrossTonnageMeasureType_cbc }

{ TXMLNetTonnageMeasureType_cbc }

{ TXMLTransportHandlingUnitType_cac }

procedure TXMLTransportHandlingUnitType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('TransportHandlingUnitTypeCode', TXMLTransportHandlingUnitTypeCodeType_cbc);
  RegisterChildNode('HandlingCode', TXMLHandlingCodeType_cbc);
  RegisterChildNode('HandlingInstructions', TXMLHandlingInstructionsType_cbc);
  RegisterChildNode('HazardousRiskIndicator', TXMLHazardousRiskIndicatorType_cbc);
  RegisterChildNode('TotalGoodsItemQuantity', TXMLTotalGoodsItemQuantityType_cbc);
  RegisterChildNode('TotalPackageQuantity', TXMLTotalPackageQuantityType_cbc);
  RegisterChildNode('DamageRemarks', TXMLDamageRemarksType_cbc);
  RegisterChildNode('TraceID', TXMLTraceIDType_cbc);
  RegisterChildNode('ActualPackage', TXMLPackageType_cac);
  RegisterChildNode('TransportEquipment', TXMLTransportEquipmentType_cac);
  RegisterChildNode('TransportMeans', TXMLTransportMeansType_cac);
  RegisterChildNode('HazardousGoodsTransit', TXMLHazardousGoodsTransitType_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac);
  RegisterChildNode('MinimumTemperature', TXMLTemperatureType_cac);
  RegisterChildNode('MaximumTemperature', TXMLTemperatureType_cac);
  RegisterChildNode('FloorSpaceMeasurementDimension', TXMLDimensionType_cac);
  RegisterChildNode('PalletSpaceMeasurementDimension', TXMLDimensionType_cac);
  RegisterChildNode('ShipmentDocumentReference', TXMLDocumentReferenceType_cac);
  RegisterChildNode('CustomsDeclaration', TXMLCustomsDeclarationType_cac);
  FDamageRemarks := CreateCollection(TXMLDamageRemarksType_cbcList, IXMLDamageRemarksType_cbc, 'DamageRemarks') as IXMLDamageRemarksType_cbcList;
  FActualPackage := CreateCollection(TXMLPackageType_cacList, IXMLPackageType_cac, 'ActualPackage') as IXMLPackageType_cacList;
  FTransportEquipment := CreateCollection(TXMLTransportEquipmentType_cacList, IXMLTransportEquipmentType_cac, 'TransportEquipment') as IXMLTransportEquipmentType_cacList;
  FTransportMeans := CreateCollection(TXMLTransportMeansType_cacList, IXMLTransportMeansType_cac, 'TransportMeans') as IXMLTransportMeansType_cacList;
  FHazardousGoodsTransit := CreateCollection(TXMLHazardousGoodsTransitType_cacList, IXMLHazardousGoodsTransitType_cac, 'HazardousGoodsTransit') as IXMLHazardousGoodsTransitType_cacList;
  FMeasurementDimension := CreateCollection(TXMLDimensionType_cacList, IXMLDimensionType_cac, 'MeasurementDimension') as IXMLDimensionType_cacList;
  FShipmentDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'ShipmentDocumentReference') as IXMLDocumentReferenceType_cacList;
  FCustomsDeclaration := CreateCollection(TXMLCustomsDeclarationType_cacList, IXMLCustomsDeclarationType_cac, 'CustomsDeclaration') as IXMLCustomsDeclarationType_cacList;
  inherited;
end;

function TXMLTransportHandlingUnitType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_TransportHandlingUnitTypeCode: IXMLTransportHandlingUnitTypeCodeType_cbc;
begin
  Result := ChildNodes['TransportHandlingUnitTypeCode'] as IXMLTransportHandlingUnitTypeCodeType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_HandlingCode: IXMLHandlingCodeType_cbc;
begin
  Result := ChildNodes['HandlingCode'] as IXMLHandlingCodeType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_HandlingInstructions: IXMLHandlingInstructionsType_cbc;
begin
  Result := ChildNodes['HandlingInstructions'] as IXMLHandlingInstructionsType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_HazardousRiskIndicator: IXMLHazardousRiskIndicatorType_cbc;
begin
  Result := ChildNodes['HazardousRiskIndicator'] as IXMLHazardousRiskIndicatorType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_TotalGoodsItemQuantity: IXMLTotalGoodsItemQuantityType_cbc;
begin
  Result := ChildNodes['TotalGoodsItemQuantity'] as IXMLTotalGoodsItemQuantityType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_TotalPackageQuantity: IXMLTotalPackageQuantityType_cbc;
begin
  Result := ChildNodes['TotalPackageQuantity'] as IXMLTotalPackageQuantityType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_DamageRemarks: IXMLDamageRemarksType_cbcList;
begin
  Result := FDamageRemarks;
end;

function TXMLTransportHandlingUnitType_cac.Get_TraceID: IXMLTraceIDType_cbc;
begin
  Result := ChildNodes['TraceID'] as IXMLTraceIDType_cbc;
end;

function TXMLTransportHandlingUnitType_cac.Get_ActualPackage: IXMLPackageType_cacList;
begin
  Result := FActualPackage;
end;

function TXMLTransportHandlingUnitType_cac.Get_TransportEquipment: IXMLTransportEquipmentType_cacList;
begin
  Result := FTransportEquipment;
end;

function TXMLTransportHandlingUnitType_cac.Get_TransportMeans: IXMLTransportMeansType_cacList;
begin
  Result := FTransportMeans;
end;

function TXMLTransportHandlingUnitType_cac.Get_HazardousGoodsTransit: IXMLHazardousGoodsTransitType_cacList;
begin
  Result := FHazardousGoodsTransit;
end;

function TXMLTransportHandlingUnitType_cac.Get_MeasurementDimension: IXMLDimensionType_cacList;
begin
  Result := FMeasurementDimension;
end;

function TXMLTransportHandlingUnitType_cac.Get_MinimumTemperature: IXMLTemperatureType_cac;
begin
  Result := ChildNodes['MinimumTemperature'] as IXMLTemperatureType_cac;
end;

function TXMLTransportHandlingUnitType_cac.Get_MaximumTemperature: IXMLTemperatureType_cac;
begin
  Result := ChildNodes['MaximumTemperature'] as IXMLTemperatureType_cac;
end;

function TXMLTransportHandlingUnitType_cac.Get_FloorSpaceMeasurementDimension: IXMLDimensionType_cac;
begin
  Result := ChildNodes['FloorSpaceMeasurementDimension'] as IXMLDimensionType_cac;
end;

function TXMLTransportHandlingUnitType_cac.Get_PalletSpaceMeasurementDimension: IXMLDimensionType_cac;
begin
  Result := ChildNodes['PalletSpaceMeasurementDimension'] as IXMLDimensionType_cac;
end;

function TXMLTransportHandlingUnitType_cac.Get_ShipmentDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FShipmentDocumentReference;
end;

function TXMLTransportHandlingUnitType_cac.Get_CustomsDeclaration: IXMLCustomsDeclarationType_cacList;
begin
  Result := FCustomsDeclaration;
end;

{ TXMLTransportHandlingUnitType_cacList }

function TXMLTransportHandlingUnitType_cacList.Add: IXMLTransportHandlingUnitType_cac;
begin
  Result := AddItem(-1) as IXMLTransportHandlingUnitType_cac;
end;

function TXMLTransportHandlingUnitType_cacList.Insert(const Index: Integer): IXMLTransportHandlingUnitType_cac;
begin
  Result := AddItem(Index) as IXMLTransportHandlingUnitType_cac;
end;

function TXMLTransportHandlingUnitType_cacList.Get_Item(Index: Integer): IXMLTransportHandlingUnitType_cac;
begin
  Result := List[Index] as IXMLTransportHandlingUnitType_cac;
end;

{ TXMLTransportHandlingUnitTypeCodeType_cbc }

{ TXMLTotalPackageQuantityType_cbc }

{ TXMLDamageRemarksType_cbc }

{ TXMLDamageRemarksType_cbcList }

function TXMLDamageRemarksType_cbcList.Add: IXMLDamageRemarksType_cbc;
begin
  Result := AddItem(-1) as IXMLDamageRemarksType_cbc;
end;

function TXMLDamageRemarksType_cbcList.Insert(const Index: Integer): IXMLDamageRemarksType_cbc;
begin
  Result := AddItem(Index) as IXMLDamageRemarksType_cbc;
end;

function TXMLDamageRemarksType_cbcList.Get_Item(Index: Integer): IXMLDamageRemarksType_cbc;
begin
  Result := List[Index] as IXMLDamageRemarksType_cbc;
end;

{ TXMLPackageType_cac }

procedure TXMLPackageType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc);
  RegisterChildNode('ReturnableMaterialIndicator', TXMLReturnableMaterialIndicatorType_cbc);
  RegisterChildNode('PackageLevelCode', TXMLPackageLevelCodeType_cbc);
  RegisterChildNode('PackagingTypeCode', TXMLPackagingTypeCodeType_cbc);
  RegisterChildNode('PackingMaterial', TXMLPackingMaterialType_cbc);
  RegisterChildNode('ContainedPackage', TXMLPackageType_cac);
  RegisterChildNode('GoodsItem', TXMLGoodsItemType_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac);
  FPackingMaterial := CreateCollection(TXMLPackingMaterialType_cbcList, IXMLPackingMaterialType_cbc, 'PackingMaterial') as IXMLPackingMaterialType_cbcList;
  FContainedPackage := CreateCollection(TXMLPackageType_cacList, IXMLPackageType_cac, 'ContainedPackage') as IXMLPackageType_cacList;
  FGoodsItem := CreateCollection(TXMLGoodsItemType_cacList, IXMLGoodsItemType_cac, 'GoodsItem') as IXMLGoodsItemType_cacList;
  FMeasurementDimension := CreateCollection(TXMLDimensionType_cacList, IXMLDimensionType_cac, 'MeasurementDimension') as IXMLDimensionType_cacList;
  inherited;
end;

function TXMLPackageType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLPackageType_cac.Get_Quantity: IXMLQuantityType_cbc;
begin
  Result := ChildNodes['Quantity'] as IXMLQuantityType_cbc;
end;

function TXMLPackageType_cac.Get_ReturnableMaterialIndicator: IXMLReturnableMaterialIndicatorType_cbc;
begin
  Result := ChildNodes['ReturnableMaterialIndicator'] as IXMLReturnableMaterialIndicatorType_cbc;
end;

function TXMLPackageType_cac.Get_PackageLevelCode: IXMLPackageLevelCodeType_cbc;
begin
  Result := ChildNodes['PackageLevelCode'] as IXMLPackageLevelCodeType_cbc;
end;

function TXMLPackageType_cac.Get_PackagingTypeCode: IXMLPackagingTypeCodeType_cbc;
begin
  Result := ChildNodes['PackagingTypeCode'] as IXMLPackagingTypeCodeType_cbc;
end;

function TXMLPackageType_cac.Get_PackingMaterial: IXMLPackingMaterialType_cbcList;
begin
  Result := FPackingMaterial;
end;

function TXMLPackageType_cac.Get_ContainedPackage: IXMLPackageType_cacList;
begin
  Result := FContainedPackage;
end;

function TXMLPackageType_cac.Get_GoodsItem: IXMLGoodsItemType_cacList;
begin
  Result := FGoodsItem;
end;

function TXMLPackageType_cac.Get_MeasurementDimension: IXMLDimensionType_cacList;
begin
  Result := FMeasurementDimension;
end;

{ TXMLPackageType_cacList }

function TXMLPackageType_cacList.Add: IXMLPackageType_cac;
begin
  Result := AddItem(-1) as IXMLPackageType_cac;
end;

function TXMLPackageType_cacList.Insert(const Index: Integer): IXMLPackageType_cac;
begin
  Result := AddItem(Index) as IXMLPackageType_cac;
end;

function TXMLPackageType_cacList.Get_Item(Index: Integer): IXMLPackageType_cac;
begin
  Result := List[Index] as IXMLPackageType_cac;
end;

{ TXMLReturnableMaterialIndicatorType_cbc }

{ TXMLPackageLevelCodeType_cbc }

{ TXMLPackagingTypeCodeType_cbc }

{ TXMLPackingMaterialType_cbc }

{ TXMLPackingMaterialType_cbcList }

function TXMLPackingMaterialType_cbcList.Add: IXMLPackingMaterialType_cbc;
begin
  Result := AddItem(-1) as IXMLPackingMaterialType_cbc;
end;

function TXMLPackingMaterialType_cbcList.Insert(const Index: Integer): IXMLPackingMaterialType_cbc;
begin
  Result := AddItem(Index) as IXMLPackingMaterialType_cbc;
end;

function TXMLPackingMaterialType_cbcList.Get_Item(Index: Integer): IXMLPackingMaterialType_cbc;
begin
  Result := List[Index] as IXMLPackingMaterialType_cbc;
end;

{ TXMLTransportEquipmentType_cac }

procedure TXMLTransportEquipmentType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('TransportEquipmentTypeCode', TXMLTransportEquipmentTypeCodeType_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc);
  inherited;
end;

function TXMLTransportEquipmentType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLTransportEquipmentType_cac.Get_TransportEquipmentTypeCode: IXMLTransportEquipmentTypeCodeType_cbc;
begin
  Result := ChildNodes['TransportEquipmentTypeCode'] as IXMLTransportEquipmentTypeCodeType_cbc;
end;

function TXMLTransportEquipmentType_cac.Get_Description: IXMLDescriptionType_cbc;
begin
  Result := ChildNodes['Description'] as IXMLDescriptionType_cbc;
end;

{ TXMLTransportEquipmentType_cacList }

function TXMLTransportEquipmentType_cacList.Add: IXMLTransportEquipmentType_cac;
begin
  Result := AddItem(-1) as IXMLTransportEquipmentType_cac;
end;

function TXMLTransportEquipmentType_cacList.Insert(const Index: Integer): IXMLTransportEquipmentType_cac;
begin
  Result := AddItem(Index) as IXMLTransportEquipmentType_cac;
end;

function TXMLTransportEquipmentType_cacList.Get_Item(Index: Integer): IXMLTransportEquipmentType_cac;
begin
  Result := List[Index] as IXMLTransportEquipmentType_cac;
end;

{ TXMLTransportEquipmentTypeCodeType_cbc }

{ TXMLHazardousGoodsTransitType_cac }

procedure TXMLHazardousGoodsTransitType_cac.AfterConstruction;
begin
  RegisterChildNode('TransportEmergencyCardCode', TXMLTransportEmergencyCardCodeType_cbc);
  RegisterChildNode('PackingCriteriaCode', TXMLPackingCriteriaCodeType_cbc);
  RegisterChildNode('HazardousRegulationCode', TXMLHazardousRegulationCodeType_cbc);
  RegisterChildNode('InhalationToxicityZoneCode', TXMLInhalationToxicityZoneCodeType_cbc);
  RegisterChildNode('TransportAuthorizationCode', TXMLTransportAuthorizationCodeType_cbc);
  RegisterChildNode('MaximumTemperature', TXMLTemperatureType_cac);
  RegisterChildNode('MinimumTemperature', TXMLTemperatureType_cac);
  inherited;
end;

function TXMLHazardousGoodsTransitType_cac.Get_TransportEmergencyCardCode: IXMLTransportEmergencyCardCodeType_cbc;
begin
  Result := ChildNodes['TransportEmergencyCardCode'] as IXMLTransportEmergencyCardCodeType_cbc;
end;

function TXMLHazardousGoodsTransitType_cac.Get_PackingCriteriaCode: IXMLPackingCriteriaCodeType_cbc;
begin
  Result := ChildNodes['PackingCriteriaCode'] as IXMLPackingCriteriaCodeType_cbc;
end;

function TXMLHazardousGoodsTransitType_cac.Get_HazardousRegulationCode: IXMLHazardousRegulationCodeType_cbc;
begin
  Result := ChildNodes['HazardousRegulationCode'] as IXMLHazardousRegulationCodeType_cbc;
end;

function TXMLHazardousGoodsTransitType_cac.Get_InhalationToxicityZoneCode: IXMLInhalationToxicityZoneCodeType_cbc;
begin
  Result := ChildNodes['InhalationToxicityZoneCode'] as IXMLInhalationToxicityZoneCodeType_cbc;
end;

function TXMLHazardousGoodsTransitType_cac.Get_TransportAuthorizationCode: IXMLTransportAuthorizationCodeType_cbc;
begin
  Result := ChildNodes['TransportAuthorizationCode'] as IXMLTransportAuthorizationCodeType_cbc;
end;

function TXMLHazardousGoodsTransitType_cac.Get_MaximumTemperature: IXMLTemperatureType_cac;
begin
  Result := ChildNodes['MaximumTemperature'] as IXMLTemperatureType_cac;
end;

function TXMLHazardousGoodsTransitType_cac.Get_MinimumTemperature: IXMLTemperatureType_cac;
begin
  Result := ChildNodes['MinimumTemperature'] as IXMLTemperatureType_cac;
end;

{ TXMLHazardousGoodsTransitType_cacList }

function TXMLHazardousGoodsTransitType_cacList.Add: IXMLHazardousGoodsTransitType_cac;
begin
  Result := AddItem(-1) as IXMLHazardousGoodsTransitType_cac;
end;

function TXMLHazardousGoodsTransitType_cacList.Insert(const Index: Integer): IXMLHazardousGoodsTransitType_cac;
begin
  Result := AddItem(Index) as IXMLHazardousGoodsTransitType_cac;
end;

function TXMLHazardousGoodsTransitType_cacList.Get_Item(Index: Integer): IXMLHazardousGoodsTransitType_cac;
begin
  Result := List[Index] as IXMLHazardousGoodsTransitType_cac;
end;

{ TXMLTransportEmergencyCardCodeType_cbc }

{ TXMLPackingCriteriaCodeType_cbc }

{ TXMLHazardousRegulationCodeType_cbc }

{ TXMLInhalationToxicityZoneCodeType_cbc }

{ TXMLTransportAuthorizationCodeType_cbc }

{ TXMLCustomsDeclarationType_cac }

procedure TXMLCustomsDeclarationType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('IssuerParty', TXMLPartyType_cac);
  inherited;
end;

function TXMLCustomsDeclarationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLCustomsDeclarationType_cac.Get_IssuerParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['IssuerParty'] as IXMLPartyType_cac;
end;

{ TXMLCustomsDeclarationType_cacList }

function TXMLCustomsDeclarationType_cacList.Add: IXMLCustomsDeclarationType_cac;
begin
  Result := AddItem(-1) as IXMLCustomsDeclarationType_cac;
end;

function TXMLCustomsDeclarationType_cacList.Insert(const Index: Integer): IXMLCustomsDeclarationType_cac;
begin
  Result := AddItem(Index) as IXMLCustomsDeclarationType_cac;
end;

function TXMLCustomsDeclarationType_cacList.Get_Item(Index: Integer): IXMLCustomsDeclarationType_cac;
begin
  Result := List[Index] as IXMLCustomsDeclarationType_cac;
end;

{ TXMLDespatchLineType_cac }

procedure TXMLDespatchLineType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc);
  RegisterChildNode('DeliveredQuantity', TXMLDeliveredQuantityType_cbc);
  RegisterChildNode('OutstandingQuantity', TXMLOutstandingQuantityType_cbc);
  RegisterChildNode('OutstandingReason', TXMLOutstandingReasonType_cbc);
  RegisterChildNode('OversupplyQuantity', TXMLOversupplyQuantityType_cbc);
  RegisterChildNode('OrderLineReference', TXMLOrderLineReferenceType_cac);
  RegisterChildNode('DocumentReference', TXMLDocumentReferenceType_cac);
  RegisterChildNode('Item', TXMLItemType_cac);
  RegisterChildNode('Shipment', TXMLShipmentType_cac);
  FNote := CreateCollection(TXMLNoteType_cbcList, IXMLNoteType_cbc, 'Note') as IXMLNoteType_cbcList;
  FOutstandingReason := CreateCollection(TXMLOutstandingReasonType_cbcList, IXMLOutstandingReasonType_cbc, 'OutstandingReason') as IXMLOutstandingReasonType_cbcList;
  FDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'DocumentReference') as IXMLDocumentReferenceType_cacList;
  FShipment := CreateCollection(TXMLShipmentType_cacList, IXMLShipmentType_cac, 'Shipment') as IXMLShipmentType_cacList;
  inherited;
end;

function TXMLDespatchLineType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['ID'] as IXMLIDType_cbc;
end;

function TXMLDespatchLineType_cac.Get_Note: IXMLNoteType_cbcList;
begin
  Result := FNote;
end;

function TXMLDespatchLineType_cac.Get_DeliveredQuantity: IXMLDeliveredQuantityType_cbc;
begin
  Result := ChildNodes['DeliveredQuantity'] as IXMLDeliveredQuantityType_cbc;
end;

function TXMLDespatchLineType_cac.Get_OutstandingQuantity: IXMLOutstandingQuantityType_cbc;
begin
  Result := ChildNodes['OutstandingQuantity'] as IXMLOutstandingQuantityType_cbc;
end;

function TXMLDespatchLineType_cac.Get_OutstandingReason: IXMLOutstandingReasonType_cbcList;
begin
  Result := FOutstandingReason;
end;

function TXMLDespatchLineType_cac.Get_OversupplyQuantity: IXMLOversupplyQuantityType_cbc;
begin
  Result := ChildNodes['OversupplyQuantity'] as IXMLOversupplyQuantityType_cbc;
end;

function TXMLDespatchLineType_cac.Get_OrderLineReference: IXMLOrderLineReferenceType_cac;
begin
  Result := ChildNodes['OrderLineReference'] as IXMLOrderLineReferenceType_cac;
end;

function TXMLDespatchLineType_cac.Get_DocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FDocumentReference;
end;

function TXMLDespatchLineType_cac.Get_Item: IXMLItemType_cac;
begin
  Result := ChildNodes['Item'] as IXMLItemType_cac;
end;

function TXMLDespatchLineType_cac.Get_Shipment: IXMLShipmentType_cacList;
begin
  Result := FShipment;
end;

{ TXMLDespatchLineType_cacList }

function TXMLDespatchLineType_cacList.Add: IXMLDespatchLineType_cac;
begin
  Result := AddItem(-1) as IXMLDespatchLineType_cac;
end;

function TXMLDespatchLineType_cacList.Insert(const Index: Integer): IXMLDespatchLineType_cac;
begin
  Result := AddItem(Index) as IXMLDespatchLineType_cac;
end;

function TXMLDespatchLineType_cacList.Get_Item(Index: Integer): IXMLDespatchLineType_cac;
begin
  Result := List[Index] as IXMLDespatchLineType_cac;
end;

{ TXMLDeliveredQuantityType_cbc }

{ TXMLOutstandingQuantityType_cbc }

{ TXMLOutstandingReasonType_cbc }

{ TXMLOutstandingReasonType_cbcList }

function TXMLOutstandingReasonType_cbcList.Add: IXMLOutstandingReasonType_cbc;
begin
  Result := AddItem(-1) as IXMLOutstandingReasonType_cbc;
end;

function TXMLOutstandingReasonType_cbcList.Insert(const Index: Integer): IXMLOutstandingReasonType_cbc;
begin
  Result := AddItem(Index) as IXMLOutstandingReasonType_cbc;
end;

function TXMLOutstandingReasonType_cbcList.Get_Item(Index: Integer): IXMLOutstandingReasonType_cbc;
begin
  Result := List[Index] as IXMLOutstandingReasonType_cbc;
end;

{ TXMLOversupplyQuantityType_cbc }

end.