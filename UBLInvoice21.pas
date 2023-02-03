
{***********************************************************************************************}
{                                                                                               }
{                                       XML Data Binding                                        }
{                                                                                               }
{         Generated on: 04.04.2019 10:51:26                                                     }
{       Generated from: XSD\maindoc\UBL-Invoice-2.1_unsigned.xsd   }
{   Settings stored in: UBL-Invoice-2.1.xdb           }
{                                                                                               }
{***********************************************************************************************}

unit UBLInvoice21;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLInvoiceType = interface;
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
  IXMLInvoiceTypeCodeType_cbc = interface;
  IXMLNoteType_cbc = interface;
  IXMLNoteType_cbcList = interface;
  IXMLDocumentCurrencyCodeType_cbc = interface;
  IXMLTaxCurrencyCodeType_cbc = interface;
  IXMLPricingCurrencyCodeType_cbc = interface;
  IXMLPaymentCurrencyCodeType_cbc = interface;
  IXMLPaymentAlternativeCurrencyCodeType_cbc = interface;
  IXMLAccountingCostType_cbc = interface;
  IXMLLineCountNumericType_cbc = interface;
  IXMLPeriodType_cac = interface;
  IXMLStartDateType_cbc = interface;
  IXMLStartTimeType_cbc = interface;
  IXMLEndDateType_cbc = interface;
  IXMLEndTimeType_cbc = interface;
  IXMLDurationMeasureType_cbc = interface;
  IXMLDescriptionType_cbc = interface;
  IXMLDescriptionType_cbcList = interface;
  IXMLOrderReferenceType_cac = interface;
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
  IXMLBillingReferenceType_cac = interface;
  IXMLBillingReferenceType_cacList = interface;
  IXMLBillingReferenceLineType_cac = interface;
  IXMLBillingReferenceLineType_cacList = interface;
  IXMLAmountType_cbc = interface;
  IXMLAllowanceChargeType_cac = interface;
  IXMLAllowanceChargeType_cacList = interface;
  IXMLChargeIndicatorType_cbc = interface;
  IXMLAllowanceChargeReasonType_cbc = interface;
  IXMLMultiplierFactorNumericType_cbc = interface;
  IXMLSequenceNumericType_cbc = interface;
  IXMLBaseAmountType_cbc = interface;
  IXMLPerUnitAmountType_cbc = interface;
  IXMLSignatureType_cac = interface;
  IXMLSignatureType_cacList = interface;
  IXMLSupplierPartyType_cac = interface;
  IXMLCustomerPartyType_cac = interface;
  IXMLDeliveryType_cac = interface;
  IXMLDeliveryType_cacList = interface;
  IXMLQuantityType_cbc = interface;
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
  IXMLShipmentType_cac = interface;
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
  IXMLPaymentMeansType_cac = interface;
  IXMLPaymentMeansType_cacList = interface;
  IXMLPaymentMeansCodeType_cbc = interface;
  IXMLPaymentDueDateType_cbc = interface;
  IXMLPaymentChannelCodeType_cbc = interface;
  IXMLInstructionNoteType_cbc = interface;
  IXMLPaymentTermsType_cac = interface;
  IXMLPenaltySurchargePercentType_cbc = interface;
  IXMLPenaltyAmountType_cbc = interface;
  IXMLExchangeRateType_cac = interface;
  IXMLSourceCurrencyCodeType_cbc = interface;
  IXMLTargetCurrencyCodeType_cbc = interface;
  IXMLCalculationRateType_cbc = interface;
  IXMLDateType_cbc = interface;
  IXMLMonetaryTotalType_cac = interface;
  IXMLTaxExclusiveAmountType_cbc = interface;
  IXMLTaxInclusiveAmountType_cbc = interface;
  IXMLAllowanceTotalAmountType_cbc = interface;
  IXMLChargeTotalAmountType_cbc = interface;
  IXMLPayableRoundingAmountType_cbc = interface;
  IXMLPayableAmountType_cbc = interface;

{ IXMLInvoiceType }

  IXMLInvoiceType = interface(IXMLNode)
    ['{96DFF5FC-A455-4D3D-B3DC-3FF6AC621152}']
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
    function Get_InvoiceTypeCode: IXMLInvoiceTypeCodeType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_DocumentCurrencyCode: IXMLDocumentCurrencyCodeType_cbc;
    function Get_TaxCurrencyCode: IXMLTaxCurrencyCodeType_cbc;
    function Get_PricingCurrencyCode: IXMLPricingCurrencyCodeType_cbc;
    function Get_PaymentCurrencyCode: IXMLPaymentCurrencyCodeType_cbc;
    function Get_PaymentAlternativeCurrencyCode: IXMLPaymentAlternativeCurrencyCodeType_cbc;
    function Get_AccountingCost: IXMLAccountingCostType_cbc;
    function Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
    function Get_InvoicePeriod: IXMLPeriodType_cac;
    function Get_OrderReference: IXMLOrderReferenceType_cac;
    function Get_BillingReference: IXMLBillingReferenceType_cacList;
    function Get_DespatchDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_ReceiptDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_OriginatorDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_ContractDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Signature: IXMLSignatureType_cacList;
    function Get_AccountingSupplierParty: IXMLSupplierPartyType_cac;
    function Get_AccountingCustomerParty: IXMLCustomerPartyType_cac;
    function Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
    function Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
    function Get_TaxRepresentativeParty: IXMLPartyType_cac;
    function Get_Delivery: IXMLDeliveryType_cacList;
    function Get_PaymentMeans: IXMLPaymentMeansType_cacList;
    function Get_PaymentTerms: IXMLPaymentTermsType_cac;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_TaxExchangeRate: IXMLExchangeRateType_cac;
    function Get_PricingExchangeRate: IXMLExchangeRateType_cac;
    function Get_PaymentExchangeRate: IXMLExchangeRateType_cac;
    function Get_PaymentAlternativeExchangeRate: IXMLExchangeRateType_cac;
    function Get_TaxTotal: IXMLTaxTotalType_cacList;
    function Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
    function Get_LegalMonetaryTotal: IXMLMonetaryTotalType_cac;
    function Get_InvoiceLine: IXMLInvoiceLineType_cacList;
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
    property InvoiceTypeCode: IXMLInvoiceTypeCodeType_cbc read Get_InvoiceTypeCode;
    property Note: IXMLNoteType_cbcList read Get_Note;
    property DocumentCurrencyCode: IXMLDocumentCurrencyCodeType_cbc read Get_DocumentCurrencyCode;
    property TaxCurrencyCode: IXMLTaxCurrencyCodeType_cbc read Get_TaxCurrencyCode;
    property PricingCurrencyCode: IXMLPricingCurrencyCodeType_cbc read Get_PricingCurrencyCode;
    property PaymentCurrencyCode: IXMLPaymentCurrencyCodeType_cbc read Get_PaymentCurrencyCode;
    property PaymentAlternativeCurrencyCode: IXMLPaymentAlternativeCurrencyCodeType_cbc read Get_PaymentAlternativeCurrencyCode;
    property AccountingCost: IXMLAccountingCostType_cbc read Get_AccountingCost;
    property LineCountNumeric: IXMLLineCountNumericType_cbc read Get_LineCountNumeric;
    property InvoicePeriod: IXMLPeriodType_cac read Get_InvoicePeriod;
    property OrderReference: IXMLOrderReferenceType_cac read Get_OrderReference;
    property BillingReference: IXMLBillingReferenceType_cacList read Get_BillingReference;
    property DespatchDocumentReference: IXMLDocumentReferenceType_cacList read Get_DespatchDocumentReference;
    property ReceiptDocumentReference: IXMLDocumentReferenceType_cacList read Get_ReceiptDocumentReference;
    property OriginatorDocumentReference: IXMLDocumentReferenceType_cacList read Get_OriginatorDocumentReference;
    property ContractDocumentReference: IXMLDocumentReferenceType_cacList read Get_ContractDocumentReference;
    property AdditionalDocumentReference: IXMLDocumentReferenceType_cacList read Get_AdditionalDocumentReference;
    property Signature: IXMLSignatureType_cacList read Get_Signature;
    property AccountingSupplierParty: IXMLSupplierPartyType_cac read Get_AccountingSupplierParty;
    property AccountingCustomerParty: IXMLCustomerPartyType_cac read Get_AccountingCustomerParty;
    property BuyerCustomerParty: IXMLCustomerPartyType_cac read Get_BuyerCustomerParty;
    property SellerSupplierParty: IXMLSupplierPartyType_cac read Get_SellerSupplierParty;
    property TaxRepresentativeParty: IXMLPartyType_cac read Get_TaxRepresentativeParty;
    property Delivery: IXMLDeliveryType_cacList read Get_Delivery;
    property PaymentMeans: IXMLPaymentMeansType_cacList read Get_PaymentMeans;
    property PaymentTerms: IXMLPaymentTermsType_cac read Get_PaymentTerms;
    property AllowanceCharge: IXMLAllowanceChargeType_cacList read Get_AllowanceCharge;
    property TaxExchangeRate: IXMLExchangeRateType_cac read Get_TaxExchangeRate;
    property PricingExchangeRate: IXMLExchangeRateType_cac read Get_PricingExchangeRate;
    property PaymentExchangeRate: IXMLExchangeRateType_cac read Get_PaymentExchangeRate;
    property PaymentAlternativeExchangeRate: IXMLExchangeRateType_cac read Get_PaymentAlternativeExchangeRate;
    property TaxTotal: IXMLTaxTotalType_cacList read Get_TaxTotal;
    property WithholdingTaxTotal: IXMLTaxTotalType_cacList read Get_WithholdingTaxTotal;
    property LegalMonetaryTotal: IXMLMonetaryTotalType_cac read Get_LegalMonetaryTotal;
    property InvoiceLine: IXMLInvoiceLineType_cacList read Get_InvoiceLine;
  end;

{ IXMLUBLExtensionsType_ext }

  IXMLUBLExtensionsType_ext = interface(IXMLNodeCollection)
    ['{622343E0-562B-4725-B47D-B63CA6E93255}']
    { Property Accessors }
    function Get_UBLExtension(Index: Integer): IXMLUBLExtensionType_ext;
    { Methods & Properties }
    function Add: IXMLUBLExtensionType_ext;
    function Insert(const Index: Integer): IXMLUBLExtensionType_ext;
    property UBLExtension[Index: Integer]: IXMLUBLExtensionType_ext read Get_UBLExtension; default;
  end;

{ IXMLUBLExtensionType_ext }

  IXMLUBLExtensionType_ext = interface(IXMLNode)
    ['{A316F530-8D6A-4BAD-A030-64ECB30F5D9A}']
    { Property Accessors }
    function Get_ExtensionContent: IXMLExtensionContentType;
    { Methods & Properties }
    property ExtensionContent: IXMLExtensionContentType read Get_ExtensionContent;
  end;

{ IXMLExtensionContentType }

  IXMLExtensionContentType = interface(IXMLNode)
    ['{2B88501B-7918-4CEF-B3B8-29AB6699DD88}']
  end;

{ IXMLUBLVersionIDType_cbc }

  IXMLUBLVersionIDType_cbc = interface(IXMLNode)
    ['{71617774-DC77-476B-980E-D7436AACEBA9}']
  end;

{ IXMLCustomizationIDType_cbc }

  IXMLCustomizationIDType_cbc = interface(IXMLNode)
    ['{EBF9C914-00E9-47FF-A537-50B849197A92}']
  end;

{ IXMLProfileIDType_cbc }

  IXMLProfileIDType_cbc = interface(IXMLNode)
    ['{EDA6CF68-2FE4-4C63-B78C-2CF757154171}']
  end;

{ IXMLIDType_cbc }

  IXMLIDType_cbc = interface(IXMLNode)
    ['{45EEF6BF-C442-4933-ADF4-F6B0905CAAA7}']
  end;

{ IXMLCopyIndicatorType_cbc }

  IXMLCopyIndicatorType_cbc = interface(IXMLNode)
    ['{D1E8A8F6-A464-4007-8877-54D5ABC66EB5}']
  end;

{ IXMLUUIDType_cbc }

  IXMLUUIDType_cbc = interface(IXMLNode)
    ['{23AE8554-40B4-4FB1-8107-76CFD74DB07E}']
  end;

{ IXMLIssueDateType_cbc }

  IXMLIssueDateType_cbc = interface(IXMLNode)
    ['{77D39FE6-870F-42C4-A577-E70CA8601F51}']
  end;

{ IXMLIssueTimeType_cbc }

  IXMLIssueTimeType_cbc = interface(IXMLNode)
    ['{D3F7441F-A63B-430D-B24E-EE1D685CBF98}']
  end;

{ IXMLInvoiceTypeCodeType_cbc }

  IXMLInvoiceTypeCodeType_cbc = interface(IXMLNode)
    ['{D39686BC-B21D-4565-B68E-2AA2EF580B3E}']
  end;

{ IXMLNoteType_cbc }

  IXMLNoteType_cbc = interface(IXMLNode)
    ['{2112E573-7A1B-4A7B-B4AE-39E8AB7DCC40}']
  end;

{ IXMLNoteType_cbcList }

  IXMLNoteType_cbcList = interface(IXMLNodeCollection)
    ['{05754F46-AB45-42CF-AF29-FC67F42EAFC9}']
    { Methods & Properties }
    function Add: IXMLNoteType_cbc;
    function Insert(const Index: Integer): IXMLNoteType_cbc;

    function Get_Item(Index: Integer): IXMLNoteType_cbc;
    property Items[Index: Integer]: IXMLNoteType_cbc read Get_Item; default;
  end;

{ IXMLDocumentCurrencyCodeType_cbc }

  IXMLDocumentCurrencyCodeType_cbc = interface(IXMLNode)
    ['{DE07CA83-9710-465A-B2C7-DA75DE8D2EFF}']
  end;

{ IXMLTaxCurrencyCodeType_cbc }

  IXMLTaxCurrencyCodeType_cbc = interface(IXMLNode)
    ['{055EF078-191A-4B69-98EE-07EC5445E0BD}']
  end;

{ IXMLPricingCurrencyCodeType_cbc }

  IXMLPricingCurrencyCodeType_cbc = interface(IXMLNode)
    ['{38DE12B1-8B81-4605-9BE6-1511372DD143}']
  end;

{ IXMLPaymentCurrencyCodeType_cbc }

  IXMLPaymentCurrencyCodeType_cbc = interface(IXMLNode)
    ['{B6F8CBF5-4C30-44E5-AB22-22AEA2EC7AF9}']
  end;

{ IXMLPaymentAlternativeCurrencyCodeType_cbc }

  IXMLPaymentAlternativeCurrencyCodeType_cbc = interface(IXMLNode)
    ['{7A906130-B70A-447D-A282-2C5C814ECD84}']
  end;

{ IXMLAccountingCostType_cbc }

  IXMLAccountingCostType_cbc = interface(IXMLNode)
    ['{76E64C2D-86DF-497E-ADEB-8BB252B16F7A}']
  end;

{ IXMLLineCountNumericType_cbc }

  IXMLLineCountNumericType_cbc = interface(IXMLNode)
    ['{E78A15A2-9599-43D4-A387-2768EFB329AF}']
  end;

{ IXMLPeriodType_cac }

  IXMLPeriodType_cac = interface(IXMLNode)
    ['{713F6A19-8075-4F66-9EA4-522C70E6F516}']
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
    ['{B53B12F2-4BAE-4948-932D-9F5833C3092F}']
  end;

{ IXMLStartTimeType_cbc }

  IXMLStartTimeType_cbc = interface(IXMLNode)
    ['{2E88A4C6-2909-4E58-8E67-30F3A6116402}']
  end;

{ IXMLEndDateType_cbc }

  IXMLEndDateType_cbc = interface(IXMLNode)
    ['{B616D0A7-9372-4C31-9EC6-467BCA22B5BD}']
  end;

{ IXMLEndTimeType_cbc }

  IXMLEndTimeType_cbc = interface(IXMLNode)
    ['{BB7B19A2-0CD1-4A81-9B8F-9D94A9F406E6}']
  end;

{ IXMLDurationMeasureType_cbc }

  IXMLDurationMeasureType_cbc = interface(IXMLNode)
    ['{1B1A37F8-19BF-421D-B54A-07A251D9A16A}']
  end;

{ IXMLDescriptionType_cbc }

  IXMLDescriptionType_cbc = interface(IXMLNode)
    ['{960A2F91-B1C7-47D2-BFE4-510F01E33F27}']
  end;

{ IXMLDescriptionType_cbcList }

  IXMLDescriptionType_cbcList = interface(IXMLNodeCollection)
    ['{8F4AC0B1-8093-4997-91DE-06C3E57CCB16}']
    { Methods & Properties }
    function Add: IXMLDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDescriptionType_cbc;
    property Items[Index: Integer]: IXMLDescriptionType_cbc read Get_Item; default;
  end;

{ IXMLOrderReferenceType_cac }

  IXMLOrderReferenceType_cac = interface(IXMLNode)
    ['{55532428-7905-49BC-940B-60A103E6F48D}']
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

{ IXMLSalesOrderIDType_cbc }

  IXMLSalesOrderIDType_cbc = interface(IXMLNode)
    ['{70FA7AEA-C305-4AA0-B912-974BBA6C89B6}']
  end;

{ IXMLOrderTypeCodeType_cbc }

  IXMLOrderTypeCodeType_cbc = interface(IXMLNode)
    ['{C5607F03-4309-42A3-AA61-EF61ECC5F828}']
  end;

{ IXMLDocumentReferenceType_cac }

  IXMLDocumentReferenceType_cac = interface(IXMLNode)
    ['{4AA37E5F-9E60-4329-A94E-7F1EC5BC6FED}']
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
    ['{14368130-D751-4CDB-A351-DED5984B6FDD}']
    { Methods & Properties }
    function Add: IXMLDocumentReferenceType_cac;
    function Insert(const Index: Integer): IXMLDocumentReferenceType_cac;

    function Get_Item(Index: Integer): IXMLDocumentReferenceType_cac;
    property Items[Index: Integer]: IXMLDocumentReferenceType_cac read Get_Item; default;
  end;

{ IXMLDocumentTypeCodeType_cbc }

  IXMLDocumentTypeCodeType_cbc = interface(IXMLNode)
    ['{A04AC1EF-4CFD-41B0-AC96-288EC44A9250}']
  end;

{ IXMLDocumentTypeType_cbc }

  IXMLDocumentTypeType_cbc = interface(IXMLNode)
    ['{B279C185-DE86-4DE2-A0C4-36EB6E9D00ED}']
  end;

{ IXMLDocumentDescriptionType_cbc }

  IXMLDocumentDescriptionType_cbc = interface(IXMLNode)
    ['{D0006588-854B-40A0-9781-2B193A4C5646}']
  end;

{ IXMLDocumentDescriptionType_cbcList }

  IXMLDocumentDescriptionType_cbcList = interface(IXMLNodeCollection)
    ['{E0FD0FE9-26BF-4715-9C4B-8977633A3CDB}']
    { Methods & Properties }
    function Add: IXMLDocumentDescriptionType_cbc;
    function Insert(const Index: Integer): IXMLDocumentDescriptionType_cbc;

    function Get_Item(Index: Integer): IXMLDocumentDescriptionType_cbc;
    property Items[Index: Integer]: IXMLDocumentDescriptionType_cbc read Get_Item; default;
  end;

{ IXMLAttachmentType_cac }

  IXMLAttachmentType_cac = interface(IXMLNode)
    ['{C89525F6-7034-4600-932F-68F5A032E14E}']
    { Property Accessors }
    function Get_EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc;
    function Get_ExternalReference: IXMLExternalReferenceType_cac;
    { Methods & Properties }
    property EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc read Get_EmbeddedDocumentBinaryObject;
    property ExternalReference: IXMLExternalReferenceType_cac read Get_ExternalReference;
  end;

{ IXMLEmbeddedDocumentBinaryObjectType_cbc }

  IXMLEmbeddedDocumentBinaryObjectType_cbc = interface(IXMLNode)
    ['{1889FB56-7DED-4E1F-A3C5-DE841451B4EB}']
  end;

{ IXMLExternalReferenceType_cac }

  IXMLExternalReferenceType_cac = interface(IXMLNode)
    ['{E261373E-8C10-46F0-9AA7-DA01C8BB456E}']
    { Property Accessors }
    function Get_URI: IXMLURIType_cbc;
    { Methods & Properties }
    property URI: IXMLURIType_cbc read Get_URI;
  end;

{ IXMLURIType_cbc }

  IXMLURIType_cbc = interface(IXMLNode)
    ['{152B4CD3-3434-43F4-941D-0E94CF7D8D20}']
  end;

{ IXMLPartyType_cac }

  IXMLPartyType_cac = interface(IXMLNode)
    ['{634625C7-6001-4CAF-9EBC-64BBA4E89414}']
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
    ['{DD954171-E913-467D-A9BA-05611CF38BA5}']
  end;

{ IXMLEndpointIDType_cbc }

  IXMLEndpointIDType_cbc = interface(IXMLNode)
    ['{C457DF4A-3367-4262-98ED-078161E4720E}']
  end;

{ IXMLIndustryClassificationCodeType_cbc }

  IXMLIndustryClassificationCodeType_cbc = interface(IXMLNode)
    ['{87A88833-0655-4E32-921D-FBEDEF8B7C60}']
  end;

{ IXMLPartyIdentificationType_cac }

  IXMLPartyIdentificationType_cac = interface(IXMLNode)
    ['{7D0707B7-7186-48B3-8694-A952F941CBB7}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
  end;

{ IXMLPartyIdentificationType_cacList }

  IXMLPartyIdentificationType_cacList = interface(IXMLNodeCollection)
    ['{817FF382-D27B-49BF-B14E-3C441CC2E782}']
    { Methods & Properties }
    function Add: IXMLPartyIdentificationType_cac;
    function Insert(const Index: Integer): IXMLPartyIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLPartyIdentificationType_cac;
    property Items[Index: Integer]: IXMLPartyIdentificationType_cac read Get_Item; default;
  end;

{ IXMLPartyNameType_cac }

  IXMLPartyNameType_cac = interface(IXMLNode)
    ['{2D3F287F-2327-420F-A4EE-24C4D2232A79}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLNameType_cbc }

  IXMLNameType_cbc = interface(IXMLNode)
    ['{2E73AEA5-A9B9-47BD-8DD6-AF4EE858D853}']
  end;

{ IXMLAddressType_cac }

  IXMLAddressType_cac = interface(IXMLNode)
    ['{E32F1083-773B-4214-BB41-12EA93999CD9}']
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
    ['{E51C20A0-A25A-4761-A179-7C3EC9E64221}']
    { Methods & Properties }
    function Add: IXMLAddressType_cac;
    function Insert(const Index: Integer): IXMLAddressType_cac;

    function Get_Item(Index: Integer): IXMLAddressType_cac;
    property Items[Index: Integer]: IXMLAddressType_cac read Get_Item; default;
  end;

{ IXMLPostboxType_cbc }

  IXMLPostboxType_cbc = interface(IXMLNode)
    ['{F174AF78-759C-46FC-9068-D3E595066B37}']
  end;

{ IXMLRoomType_cbc }

  IXMLRoomType_cbc = interface(IXMLNode)
    ['{90BB38DA-F274-49CC-A148-3557900581A0}']
  end;

{ IXMLStreetNameType_cbc }

  IXMLStreetNameType_cbc = interface(IXMLNode)
    ['{5D1D5438-2D64-4E65-9988-D9B3EE981C4D}']
  end;

{ IXMLBlockNameType_cbc }

  IXMLBlockNameType_cbc = interface(IXMLNode)
    ['{B23068DD-E47B-42D7-BC17-52827302A1A0}']
  end;

{ IXMLBuildingNameType_cbc }

  IXMLBuildingNameType_cbc = interface(IXMLNode)
    ['{20E04047-5255-4FB5-B94F-63844FA2657B}']
  end;

{ IXMLBuildingNumberType_cbc }

  IXMLBuildingNumberType_cbc = interface(IXMLNode)
    ['{79A4A689-8721-4DC6-8EA8-A85AC946938A}']
  end;

{ IXMLCitySubdivisionNameType_cbc }

  IXMLCitySubdivisionNameType_cbc = interface(IXMLNode)
    ['{A292380B-DF7E-44FE-B882-7DD7F444D543}']
  end;

{ IXMLCityNameType_cbc }

  IXMLCityNameType_cbc = interface(IXMLNode)
    ['{2A8CD541-F9BF-4A1C-A316-0B11F0ACABEF}']
  end;

{ IXMLPostalZoneType_cbc }

  IXMLPostalZoneType_cbc = interface(IXMLNode)
    ['{F9F64C7B-B90F-49CD-A861-9776793C14C5}']
  end;

{ IXMLRegionType_cbc }

  IXMLRegionType_cbc = interface(IXMLNode)
    ['{A7958AB5-4B44-4DD0-86B1-222E47F82C7A}']
  end;

{ IXMLDistrictType_cbc }

  IXMLDistrictType_cbc = interface(IXMLNode)
    ['{854CACA8-4FAD-47D0-87D7-500F9CC4EF4B}']
  end;

{ IXMLCountryType_cac }

  IXMLCountryType_cac = interface(IXMLNode)
    ['{DCE46B23-98AF-4618-A63C-D41E55CE8463}']
    { Property Accessors }
    function Get_IdentificationCode: IXMLIdentificationCodeType_cbc;
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property IdentificationCode: IXMLIdentificationCodeType_cbc read Get_IdentificationCode;
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLIdentificationCodeType_cbc }

  IXMLIdentificationCodeType_cbc = interface(IXMLNode)
    ['{80DBFB56-0662-48CB-A269-A6024A3702DC}']
  end;

{ IXMLLocationType_cac }

  IXMLLocationType_cac = interface(IXMLNode)
    ['{4571E305-DC4D-4256-ACB3-09151054DA0D}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Address: IXMLAddressType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Address: IXMLAddressType_cac read Get_Address;
  end;

{ IXMLPartyTaxSchemeType_cac }

  IXMLPartyTaxSchemeType_cac = interface(IXMLNode)
    ['{356D6A68-C0F5-4968-96E0-3F3E9C0DF184}']
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
    ['{F150A0E7-EDE2-4E11-91E8-03ACF8F673C6}']
  end;

{ IXMLCompanyIDType_cbc }

  IXMLCompanyIDType_cbc = interface(IXMLNode)
    ['{36EF7C58-1E55-48FE-B522-417B220A9B8B}']
  end;

{ IXMLTaxSchemeType_cac }

  IXMLTaxSchemeType_cac = interface(IXMLNode)
    ['{08BC62DC-22F8-4E2E-8E23-7F51089E717D}']
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
    ['{AA9071FD-D535-423B-A67F-79D715069233}']
  end;

{ IXMLPartyLegalEntityType_cac }

  IXMLPartyLegalEntityType_cac = interface(IXMLNode)
    ['{7C9029DF-4D40-413C-8034-D93EE9E2E2FC}']
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
    ['{35E0CF8C-12E1-4EB2-A79C-44DC35714D41}']
    { Methods & Properties }
    function Add: IXMLPartyLegalEntityType_cac;
    function Insert(const Index: Integer): IXMLPartyLegalEntityType_cac;

    function Get_Item(Index: Integer): IXMLPartyLegalEntityType_cac;
    property Items[Index: Integer]: IXMLPartyLegalEntityType_cac read Get_Item; default;
  end;

{ IXMLRegistrationDateType_cbc }

  IXMLRegistrationDateType_cbc = interface(IXMLNode)
    ['{AC84893D-F9BD-4349-9763-119963B5761A}']
  end;

{ IXMLSoleProprietorshipIndicatorType_cbc }

  IXMLSoleProprietorshipIndicatorType_cbc = interface(IXMLNode)
    ['{B1A7F5F2-3AEC-4161-ABB2-0F8F8639C2CD}']
  end;

{ IXMLCorporateStockAmountType_cbc }

  IXMLCorporateStockAmountType_cbc = interface(IXMLNode)
    ['{023FE512-ABC2-4ECC-8CA3-1BC003005A65}']
  end;

{ IXMLFullyPaidSharesIndicatorType_cbc }

  IXMLFullyPaidSharesIndicatorType_cbc = interface(IXMLNode)
    ['{ABC5C596-8522-46E3-B43E-11D5AAE02FDD}']
  end;

{ IXMLCorporateRegistrationSchemeType_cac }

  IXMLCorporateRegistrationSchemeType_cac = interface(IXMLNode)
    ['{CA61C2B2-0F75-4849-B762-EFEF7834A615}']
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
    ['{461056B9-F97A-448C-A7BF-8CC05EE22CB5}']
  end;

{ IXMLContactType_cac }

  IXMLContactType_cac = interface(IXMLNode)
    ['{223DC670-A588-4409-8DCF-5E0210B7E844}']
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
    ['{3DAB7341-30E2-4705-A5F5-9CFC5384228C}']
  end;

{ IXMLTelefaxType_cbc }

  IXMLTelefaxType_cbc = interface(IXMLNode)
    ['{11DD4B96-6D32-442B-9F67-459A9BE8C60A}']
  end;

{ IXMLElectronicMailType_cbc }

  IXMLElectronicMailType_cbc = interface(IXMLNode)
    ['{CE14D8A7-ADFA-4CE2-BB84-B60B0E44465A}']
  end;

{ IXMLCommunicationType_cac }

  IXMLCommunicationType_cac = interface(IXMLNode)
    ['{54908162-6E6C-4296-9CF9-B3E2182BE86C}']
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
    ['{75C93F34-3BC3-43DC-A372-1D2D5F93BA61}']
    { Methods & Properties }
    function Add: IXMLCommunicationType_cac;
    function Insert(const Index: Integer): IXMLCommunicationType_cac;

    function Get_Item(Index: Integer): IXMLCommunicationType_cac;
    property Items[Index: Integer]: IXMLCommunicationType_cac read Get_Item; default;
  end;

{ IXMLChannelCodeType_cbc }

  IXMLChannelCodeType_cbc = interface(IXMLNode)
    ['{85A4D7FF-39FF-49AC-B2CC-795D50D0436D}']
  end;

{ IXMLChannelType_cbc }

  IXMLChannelType_cbc = interface(IXMLNode)
    ['{6EA6CC50-E27B-46C1-80B4-2C650727EAC8}']
  end;

{ IXMLValueType_cbc }

  IXMLValueType_cbc = interface(IXMLNode)
    ['{428A6D02-3ABD-44AC-B97E-266463DA6324}']
  end;

{ IXMLPersonType_cac }

  IXMLPersonType_cac = interface(IXMLNode)
    ['{F91E9A2B-697F-4DFD-A3C5-CE5B14D01334}']
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
    ['{0F906FC4-65BB-4932-B57B-58704835D193}']
    { Methods & Properties }
    function Add: IXMLPersonType_cac;
    function Insert(const Index: Integer): IXMLPersonType_cac;

    function Get_Item(Index: Integer): IXMLPersonType_cac;
    property Items[Index: Integer]: IXMLPersonType_cac read Get_Item; default;
  end;

{ IXMLFirstNameType_cbc }

  IXMLFirstNameType_cbc = interface(IXMLNode)
    ['{0A4A1602-A3FC-469D-BFC6-AD4EFFBC791E}']
  end;

{ IXMLFamilyNameType_cbc }

  IXMLFamilyNameType_cbc = interface(IXMLNode)
    ['{17F1D04A-C189-45AF-AF9C-7BD126EA03A8}']
  end;

{ IXMLTitleType_cbc }

  IXMLTitleType_cbc = interface(IXMLNode)
    ['{18ACB7E3-63F2-43C3-9576-ED6C790648CF}']
  end;

{ IXMLMiddleNameType_cbc }

  IXMLMiddleNameType_cbc = interface(IXMLNode)
    ['{EF2C0262-3B0E-416F-A64C-D49DAEACF646}']
  end;

{ IXMLNameSuffixType_cbc }

  IXMLNameSuffixType_cbc = interface(IXMLNode)
    ['{3585A61E-6C76-4608-A362-16650A42B065}']
  end;

{ IXMLNationalityIDType_cbc }

  IXMLNationalityIDType_cbc = interface(IXMLNode)
    ['{5F70E7AE-CD75-4114-8B12-E919003B8DC8}']
  end;

{ IXMLFinancialAccountType_cac }

  IXMLFinancialAccountType_cac = interface(IXMLNode)
    ['{C4223175-6449-460A-BD30-B2C225F10563}']
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
    ['{DE10ACF4-4AE4-4398-806F-16723166B4F3}']
  end;

{ IXMLPaymentNoteType_cbc }

  IXMLPaymentNoteType_cbc = interface(IXMLNode)
    ['{36B7D904-D013-4B42-9781-0BA4841B0290}']
  end;

{ IXMLBranchType_cac }

  IXMLBranchType_cac = interface(IXMLNode)
    ['{3F3217CA-A1C8-4486-B99A-089788F9F28F}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    function Get_FinancialInstitution: IXMLFinancialInstitutionType_cac;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
    property FinancialInstitution: IXMLFinancialInstitutionType_cac read Get_FinancialInstitution;
  end;

{ IXMLFinancialInstitutionType_cac }

  IXMLFinancialInstitutionType_cac = interface(IXMLNode)
    ['{9ADABB37-8C35-4B84-A7DF-E0F00D579339}']
    { Property Accessors }
    function Get_Name: IXMLNameType_cbc;
    { Methods & Properties }
    property Name: IXMLNameType_cbc read Get_Name;
  end;

{ IXMLBillingReferenceType_cac }

  IXMLBillingReferenceType_cac = interface(IXMLNode)
    ['{3514C2E9-7BA7-4067-898E-D000576EC0BB}']
    { Property Accessors }
    function Get_InvoiceDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_SelfBilledInvoiceDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_CreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_SelfBilledCreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_DebitNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_ReminderDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_BillingReferenceLine: IXMLBillingReferenceLineType_cacList;
    { Methods & Properties }
    property InvoiceDocumentReference: IXMLDocumentReferenceType_cac read Get_InvoiceDocumentReference;
    property SelfBilledInvoiceDocumentReference: IXMLDocumentReferenceType_cac read Get_SelfBilledInvoiceDocumentReference;
    property CreditNoteDocumentReference: IXMLDocumentReferenceType_cac read Get_CreditNoteDocumentReference;
    property SelfBilledCreditNoteDocumentReference: IXMLDocumentReferenceType_cac read Get_SelfBilledCreditNoteDocumentReference;
    property DebitNoteDocumentReference: IXMLDocumentReferenceType_cac read Get_DebitNoteDocumentReference;
    property ReminderDocumentReference: IXMLDocumentReferenceType_cac read Get_ReminderDocumentReference;
    property AdditionalDocumentReference: IXMLDocumentReferenceType_cac read Get_AdditionalDocumentReference;
    property BillingReferenceLine: IXMLBillingReferenceLineType_cacList read Get_BillingReferenceLine;
  end;

{ IXMLBillingReferenceType_cacList }

  IXMLBillingReferenceType_cacList = interface(IXMLNodeCollection)
    ['{C0D8ACAD-1CC2-4AC4-B4B2-86EA26834600}']
    { Methods & Properties }
    function Add: IXMLBillingReferenceType_cac;
    function Insert(const Index: Integer): IXMLBillingReferenceType_cac;

    function Get_Item(Index: Integer): IXMLBillingReferenceType_cac;
    property Items[Index: Integer]: IXMLBillingReferenceType_cac read Get_Item; default;
  end;

{ IXMLBillingReferenceLineType_cac }

  IXMLBillingReferenceLineType_cac = interface(IXMLNode)
    ['{C94EE588-CAEE-444B-AF2D-78047B8BCFA7}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property Amount: IXMLAmountType_cbc read Get_Amount;
    property AllowanceCharge: IXMLAllowanceChargeType_cacList read Get_AllowanceCharge;
  end;

{ IXMLBillingReferenceLineType_cacList }

  IXMLBillingReferenceLineType_cacList = interface(IXMLNodeCollection)
    ['{150E851F-5F8B-4F31-87FE-90D70BA0B857}']
    { Methods & Properties }
    function Add: IXMLBillingReferenceLineType_cac;
    function Insert(const Index: Integer): IXMLBillingReferenceLineType_cac;

    function Get_Item(Index: Integer): IXMLBillingReferenceLineType_cac;
    property Items[Index: Integer]: IXMLBillingReferenceLineType_cac read Get_Item; default;
  end;

{ IXMLAmountType_cbc }

  IXMLAmountType_cbc = interface(IXMLNode)
    ['{07433CE9-54CF-438F-B497-11B98F76ED36}']
  end;

{ IXMLAllowanceChargeType_cac }

  IXMLAllowanceChargeType_cac = interface(IXMLNode)
    ['{AE4C02EC-0F8E-4236-A7B9-823934090005}']
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
    ['{50EA00D3-AFB8-47FA-AA1E-A2B331FEEDA2}']
    { Methods & Properties }
    function Add: IXMLAllowanceChargeType_cac;
    function Insert(const Index: Integer): IXMLAllowanceChargeType_cac;

    function Get_Item(Index: Integer): IXMLAllowanceChargeType_cac;
    property Items[Index: Integer]: IXMLAllowanceChargeType_cac read Get_Item; default;
  end;

{ IXMLChargeIndicatorType_cbc }

  IXMLChargeIndicatorType_cbc = interface(IXMLNode)
    ['{A7C2BBF5-092F-4B64-BA6B-49265BE6D33E}']
  end;

{ IXMLAllowanceChargeReasonType_cbc }

  IXMLAllowanceChargeReasonType_cbc = interface(IXMLNode)
    ['{8452B453-BC8B-41F2-B643-3391112E1D81}']
  end;

{ IXMLMultiplierFactorNumericType_cbc }

  IXMLMultiplierFactorNumericType_cbc = interface(IXMLNode)
    ['{BE1DF673-BC26-44DE-8866-025961F28865}']
  end;

{ IXMLSequenceNumericType_cbc }

  IXMLSequenceNumericType_cbc = interface(IXMLNode)
    ['{8F81BBD9-C557-451B-A42E-B501E699D032}']
  end;

{ IXMLBaseAmountType_cbc }

  IXMLBaseAmountType_cbc = interface(IXMLNode)
    ['{E2958C86-ED29-4F29-83F2-F68FF1BAB33E}']
  end;

{ IXMLPerUnitAmountType_cbc }

  IXMLPerUnitAmountType_cbc = interface(IXMLNode)
    ['{14E475EC-E99D-4827-9BE8-19FD01FF0D08}']
  end;

{ IXMLSignatureType_cac }

  IXMLSignatureType_cac = interface(IXMLNode)
    ['{6D3D91CE-A4C1-442C-B38F-50F6ACF1651F}']
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
    ['{40DE7D0F-0B28-44CF-8291-D2411B5B7123}']
    { Methods & Properties }
    function Add: IXMLSignatureType_cac;
    function Insert(const Index: Integer): IXMLSignatureType_cac;

    function Get_Item(Index: Integer): IXMLSignatureType_cac;
    property Items[Index: Integer]: IXMLSignatureType_cac read Get_Item; default;
  end;

{ IXMLSupplierPartyType_cac }

  IXMLSupplierPartyType_cac = interface(IXMLNode)
    ['{02540AAA-2E66-4F30-A3C6-7FE64EB12F30}']
    { Property Accessors }
    function Get_Party: IXMLPartyType_cac;
    function Get_DespatchContact: IXMLContactType_cac;
    { Methods & Properties }
    property Party: IXMLPartyType_cac read Get_Party;
    property DespatchContact: IXMLContactType_cac read Get_DespatchContact;
  end;

{ IXMLCustomerPartyType_cac }

  IXMLCustomerPartyType_cac = interface(IXMLNode)
    ['{7B5570D5-1FE6-48E5-98B9-5D45420D99B0}']
    { Property Accessors }
    function Get_Party: IXMLPartyType_cac;
    function Get_DeliveryContact: IXMLContactType_cac;
    { Methods & Properties }
    property Party: IXMLPartyType_cac read Get_Party;
    property DeliveryContact: IXMLContactType_cac read Get_DeliveryContact;
  end;

{ IXMLDeliveryType_cac }

  IXMLDeliveryType_cac = interface(IXMLNode)
    ['{F8D9AB83-B276-426C-AAE8-5272EEAEA388}']
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
    ['{0624F91B-5193-421A-B2EA-1BFA280608CF}']
    { Methods & Properties }
    function Add: IXMLDeliveryType_cac;
    function Insert(const Index: Integer): IXMLDeliveryType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryType_cac;
    property Items[Index: Integer]: IXMLDeliveryType_cac read Get_Item; default;
  end;

{ IXMLQuantityType_cbc }

  IXMLQuantityType_cbc = interface(IXMLNode)
    ['{19696787-B495-4853-9B39-B9371E8344E0}']
  end;

{ IXMLActualDeliveryDateType_cbc }

  IXMLActualDeliveryDateType_cbc = interface(IXMLNode)
    ['{9D9CB3B8-6E1C-475A-B55D-0207ED438098}']
  end;

{ IXMLActualDeliveryTimeType_cbc }

  IXMLActualDeliveryTimeType_cbc = interface(IXMLNode)
    ['{52B9E069-D3CA-4A9A-A4C6-01EBDC59FE34}']
  end;

{ IXMLLatestDeliveryDateType_cbc }

  IXMLLatestDeliveryDateType_cbc = interface(IXMLNode)
    ['{70EF30D0-1A7D-4D3A-9D2F-A5C6B1E93C6C}']
  end;

{ IXMLLatestDeliveryTimeType_cbc }

  IXMLLatestDeliveryTimeType_cbc = interface(IXMLNode)
    ['{0CC03577-F309-42BA-898C-75C5431F6070}']
  end;

{ IXMLTrackingIDType_cbc }

  IXMLTrackingIDType_cbc = interface(IXMLNode)
    ['{36709B29-2E4C-46E1-B0B1-DCBF4B4D2783}']
  end;

{ IXMLDespatchType_cac }

  IXMLDespatchType_cac = interface(IXMLNode)
    ['{49F97D99-FB5A-4BD7-AFC8-13D232FECE10}']
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
    ['{F07BFD9A-610F-4DAF-8066-ACF7D23E2D4E}']
  end;

{ IXMLActualDespatchTimeType_cbc }

  IXMLActualDespatchTimeType_cbc = interface(IXMLNode)
    ['{8567D3C8-DB8A-4E02-9F4E-5222802256D1}']
  end;

{ IXMLInstructionsType_cbc }

  IXMLInstructionsType_cbc = interface(IXMLNode)
    ['{0B3EDB45-ECE1-4C48-8782-0F62BF7CAFEA}']
  end;

{ IXMLInstructionsType_cbcList }

  IXMLInstructionsType_cbcList = interface(IXMLNodeCollection)
    ['{CD7DFFFE-1FE2-4F0E-8ED7-678CA3FC605F}']
    { Methods & Properties }
    function Add: IXMLInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLInstructionsType_cbc;
    property Items[Index: Integer]: IXMLInstructionsType_cbc read Get_Item; default;
  end;

{ IXMLDeliveryTermsType_cac }

  IXMLDeliveryTermsType_cac = interface(IXMLNode)
    ['{84989455-BB50-4760-9EFA-181DF14963DA}']
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
    ['{C3D30AA7-6193-43C5-A3CC-3A8E83EC0238}']
    { Methods & Properties }
    function Add: IXMLDeliveryTermsType_cac;
    function Insert(const Index: Integer): IXMLDeliveryTermsType_cac;

    function Get_Item(Index: Integer): IXMLDeliveryTermsType_cac;
    property Items[Index: Integer]: IXMLDeliveryTermsType_cac read Get_Item; default;
  end;

{ IXMLSpecialTermsType_cbc }

  IXMLSpecialTermsType_cbc = interface(IXMLNode)
    ['{0E575FCF-CF83-4640-8C0E-3E906B131EF0}']
  end;

{ IXMLShipmentType_cac }

  IXMLShipmentType_cac = interface(IXMLNode)
    ['{4F08C53D-6368-43A6-BB90-C2F9080F382D}']
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

{ IXMLHandlingCodeType_cbc }

  IXMLHandlingCodeType_cbc = interface(IXMLNode)
    ['{270A4F42-F7E4-4BAB-99AB-10552DC00721}']
  end;

{ IXMLHandlingInstructionsType_cbc }

  IXMLHandlingInstructionsType_cbc = interface(IXMLNode)
    ['{5C8A217E-48C9-4498-BFFC-5F0382A74655}']
  end;

{ IXMLGrossWeightMeasureType_cbc }

  IXMLGrossWeightMeasureType_cbc = interface(IXMLNode)
    ['{6A54A467-0808-4678-97EA-A173DD267498}']
  end;

{ IXMLNetWeightMeasureType_cbc }

  IXMLNetWeightMeasureType_cbc = interface(IXMLNode)
    ['{6EFF3CFF-532E-46F8-82A1-9F903D64DDF6}']
  end;

{ IXMLGrossVolumeMeasureType_cbc }

  IXMLGrossVolumeMeasureType_cbc = interface(IXMLNode)
    ['{8B44A5D6-2BEF-47F0-B070-277B9848151D}']
  end;

{ IXMLNetVolumeMeasureType_cbc }

  IXMLNetVolumeMeasureType_cbc = interface(IXMLNode)
    ['{47009A39-6D36-45D1-B5BA-6C7BD1E7BF9E}']
  end;

{ IXMLTotalGoodsItemQuantityType_cbc }

  IXMLTotalGoodsItemQuantityType_cbc = interface(IXMLNode)
    ['{B36AF7CE-1DF0-41ED-8482-E2FBCBFCA107}']
  end;

{ IXMLTotalTransportHandlingUnitQuantityType_cbc }

  IXMLTotalTransportHandlingUnitQuantityType_cbc = interface(IXMLNode)
    ['{AE88F375-A25D-4794-8A9F-F990B9F08F3D}']
  end;

{ IXMLInsuranceValueAmountType_cbc }

  IXMLInsuranceValueAmountType_cbc = interface(IXMLNode)
    ['{BE849ED1-7FAB-4C43-98C6-D9AF8015D2D9}']
  end;

{ IXMLDeclaredCustomsValueAmountType_cbc }

  IXMLDeclaredCustomsValueAmountType_cbc = interface(IXMLNode)
    ['{61CB1FD8-3133-40D0-BFE4-628555245971}']
  end;

{ IXMLDeclaredForCarriageValueAmountType_cbc }

  IXMLDeclaredForCarriageValueAmountType_cbc = interface(IXMLNode)
    ['{4A01E049-EDF8-40DB-8B73-E6A91BD5D64D}']
  end;

{ IXMLDeclaredStatisticsValueAmountType_cbc }

  IXMLDeclaredStatisticsValueAmountType_cbc = interface(IXMLNode)
    ['{581C775A-8C56-49C6-B5FC-0C93DE620B6A}']
  end;

{ IXMLFreeOnBoardValueAmountType_cbc }

  IXMLFreeOnBoardValueAmountType_cbc = interface(IXMLNode)
    ['{6454ECA1-A8BA-41B7-BDAE-BECA422ACD5D}']
  end;

{ IXMLSpecialInstructionsType_cbc }

  IXMLSpecialInstructionsType_cbc = interface(IXMLNode)
    ['{CDE3E5B0-6218-476C-B156-D0189A3A1ABA}']
  end;

{ IXMLSpecialInstructionsType_cbcList }

  IXMLSpecialInstructionsType_cbcList = interface(IXMLNodeCollection)
    ['{0D8DA30B-FA00-41DB-A8DE-49FC986175A6}']
    { Methods & Properties }
    function Add: IXMLSpecialInstructionsType_cbc;
    function Insert(const Index: Integer): IXMLSpecialInstructionsType_cbc;

    function Get_Item(Index: Integer): IXMLSpecialInstructionsType_cbc;
    property Items[Index: Integer]: IXMLSpecialInstructionsType_cbc read Get_Item; default;
  end;

{ IXMLGoodsItemType_cac }

  IXMLGoodsItemType_cac = interface(IXMLNode)
    ['{7A451ED4-121F-465A-A56A-95B0BFDE84A9}']
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
    ['{C5FFC6BC-8CA9-4807-BFB9-4F4B124D09AE}']
    { Methods & Properties }
    function Add: IXMLGoodsItemType_cac;
    function Insert(const Index: Integer): IXMLGoodsItemType_cac;

    function Get_Item(Index: Integer): IXMLGoodsItemType_cac;
    property Items[Index: Integer]: IXMLGoodsItemType_cac read Get_Item; default;
  end;

{ IXMLHazardousRiskIndicatorType_cbc }

  IXMLHazardousRiskIndicatorType_cbc = interface(IXMLNode)
    ['{19944E47-9E36-42FA-B0B7-93CC23744104}']
  end;

{ IXMLValueAmountType_cbc }

  IXMLValueAmountType_cbc = interface(IXMLNode)
    ['{BC28099C-95A0-42A2-A1EF-66A512BE121E}']
  end;

{ IXMLChargeableWeightMeasureType_cbc }

  IXMLChargeableWeightMeasureType_cbc = interface(IXMLNode)
    ['{BD3E6B44-77A6-4028-AB21-C1A8952E74E5}']
  end;

{ IXMLRequiredCustomsIDType_cbc }

  IXMLRequiredCustomsIDType_cbc = interface(IXMLNode)
    ['{0D35989A-6744-4DCA-B460-6035B3337E90}']
  end;

{ IXMLCustomsStatusCodeType_cbc }

  IXMLCustomsStatusCodeType_cbc = interface(IXMLNode)
    ['{122898A6-79C5-4B2F-B149-409E4FF26BF3}']
  end;

{ IXMLCustomsTariffQuantityType_cbc }

  IXMLCustomsTariffQuantityType_cbc = interface(IXMLNode)
    ['{44CB839E-027A-4AF8-A4A9-C411BC4F03E1}']
  end;

{ IXMLCustomsImportClassifiedIndicatorType_cbc }

  IXMLCustomsImportClassifiedIndicatorType_cbc = interface(IXMLNode)
    ['{7FA35407-BAF9-4341-A6DC-9180B825161B}']
  end;

{ IXMLChargeableQuantityType_cbc }

  IXMLChargeableQuantityType_cbc = interface(IXMLNode)
    ['{A252F7B8-37FB-4311-8205-3F655A76CD7F}']
  end;

{ IXMLReturnableQuantityType_cbc }

  IXMLReturnableQuantityType_cbc = interface(IXMLNode)
    ['{44F08861-861A-4A1F-915F-1810A23188B7}']
  end;

{ IXMLTraceIDType_cbc }

  IXMLTraceIDType_cbc = interface(IXMLNode)
    ['{D1190878-2C61-4F5E-89D4-54F71D42EE90}']
  end;

{ IXMLItemType_cac }

  IXMLItemType_cac = interface(IXMLNode)
    ['{FD5B3E29-7C5E-429B-8078-D4A7EDCA11D1}']
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
    ['{1C2A8074-27C4-4906-9DB4-757F0BA0F373}']
    { Methods & Properties }
    function Add: IXMLItemType_cac;
    function Insert(const Index: Integer): IXMLItemType_cac;

    function Get_Item(Index: Integer): IXMLItemType_cac;
    property Items[Index: Integer]: IXMLItemType_cac read Get_Item; default;
  end;

{ IXMLKeywordType_cbc }

  IXMLKeywordType_cbc = interface(IXMLNode)
    ['{06968FE9-6C31-4768-91D5-1025E58F0D14}']
  end;

{ IXMLBrandNameType_cbc }

  IXMLBrandNameType_cbc = interface(IXMLNode)
    ['{11697F4F-EC9E-40E4-B817-890CC70DD82B}']
  end;

{ IXMLModelNameType_cbc }

  IXMLModelNameType_cbc = interface(IXMLNode)
    ['{00B4FD76-09DF-452B-867D-F379E770B070}']
  end;

{ IXMLItemIdentificationType_cac }

  IXMLItemIdentificationType_cac = interface(IXMLNode)
    ['{D8445329-4503-4D5A-B9A9-07108FE9078C}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
  end;

{ IXMLItemIdentificationType_cacList }

  IXMLItemIdentificationType_cacList = interface(IXMLNodeCollection)
    ['{9A18A03D-CDF2-409B-B8F5-272A408100FB}']
    { Methods & Properties }
    function Add: IXMLItemIdentificationType_cac;
    function Insert(const Index: Integer): IXMLItemIdentificationType_cac;

    function Get_Item(Index: Integer): IXMLItemIdentificationType_cac;
    property Items[Index: Integer]: IXMLItemIdentificationType_cac read Get_Item; default;
  end;

{ IXMLCommodityClassificationType_cac }

  IXMLCommodityClassificationType_cac = interface(IXMLNode)
    ['{1A44D597-7779-4C6F-AF0F-F81BBF7A7DE2}']
    { Property Accessors }
    function Get_ItemClassificationCode: IXMLItemClassificationCodeType_cbc;
    { Methods & Properties }
    property ItemClassificationCode: IXMLItemClassificationCodeType_cbc read Get_ItemClassificationCode;
  end;

{ IXMLCommodityClassificationType_cacList }

  IXMLCommodityClassificationType_cacList = interface(IXMLNodeCollection)
    ['{DE55D8BA-05BC-47A1-BD1B-E69B62072551}']
    { Methods & Properties }
    function Add: IXMLCommodityClassificationType_cac;
    function Insert(const Index: Integer): IXMLCommodityClassificationType_cac;

    function Get_Item(Index: Integer): IXMLCommodityClassificationType_cac;
    property Items[Index: Integer]: IXMLCommodityClassificationType_cac read Get_Item; default;
  end;

{ IXMLItemClassificationCodeType_cbc }

  IXMLItemClassificationCodeType_cbc = interface(IXMLNode)
    ['{8A3FA1C4-1563-4702-9C26-437F20AC5252}']
  end;

{ IXMLItemInstanceType_cac }

  IXMLItemInstanceType_cac = interface(IXMLNode)
    ['{C1AC44CD-1FB5-43E8-96C7-D03FAA872686}']
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
    ['{AC69D225-0B0E-44CF-A52A-45D61070F638}']
    { Methods & Properties }
    function Add: IXMLItemInstanceType_cac;
    function Insert(const Index: Integer): IXMLItemInstanceType_cac;

    function Get_Item(Index: Integer): IXMLItemInstanceType_cac;
    property Items[Index: Integer]: IXMLItemInstanceType_cac read Get_Item; default;
  end;

{ IXMLProductTraceIDType_cbc }

  IXMLProductTraceIDType_cbc = interface(IXMLNode)
    ['{20C31316-67EE-486A-8C7E-21E9004CDC7A}']
  end;

{ IXMLManufactureDateType_cbc }

  IXMLManufactureDateType_cbc = interface(IXMLNode)
    ['{1D3200AB-D367-4FFE-967A-F458F02578C6}']
  end;

{ IXMLManufactureTimeType_cbc }

  IXMLManufactureTimeType_cbc = interface(IXMLNode)
    ['{ECEB61A0-04D0-4401-84F6-178DF1A57D05}']
  end;

{ IXMLBestBeforeDateType_cbc }

  IXMLBestBeforeDateType_cbc = interface(IXMLNode)
    ['{B67BD19B-024D-433C-AC75-12729644CB41}']
  end;

{ IXMLRegistrationIDType_cbc }

  IXMLRegistrationIDType_cbc = interface(IXMLNode)
    ['{CECF49A1-7352-4381-BC1C-70187B7F47A2}']
  end;

{ IXMLSerialIDType_cbc }

  IXMLSerialIDType_cbc = interface(IXMLNode)
    ['{155FAF2C-DB82-4E1B-906D-B8D127A03CE6}']
  end;

{ IXMLItemPropertyType_cac }

  IXMLItemPropertyType_cac = interface(IXMLNode)
    ['{064965DD-AB64-452A-873D-DA152007DE14}']
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
    ['{B68D2BCA-7B0E-4DD3-AEF8-CDF5AF3CBD87}']
    { Methods & Properties }
    function Add: IXMLItemPropertyType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyType_cac;
    property Items[Index: Integer]: IXMLItemPropertyType_cac read Get_Item; default;
  end;

{ IXMLNameCodeType_cbc }

  IXMLNameCodeType_cbc = interface(IXMLNode)
    ['{C75B26D1-2198-42A5-8A08-D9669926D24E}']
  end;

{ IXMLTestMethodType_cbc }

  IXMLTestMethodType_cbc = interface(IXMLNode)
    ['{512D3913-05EE-479E-8F9A-EEE454162595}']
  end;

{ IXMLValueQuantityType_cbc }

  IXMLValueQuantityType_cbc = interface(IXMLNode)
    ['{C1D59702-759F-44C7-9FF0-6D59269B62BD}']
  end;

{ IXMLValueQualifierType_cbc }

  IXMLValueQualifierType_cbc = interface(IXMLNode)
    ['{F27A8652-ED4A-4CB9-A827-E4CD48536719}']
  end;

{ IXMLValueQualifierType_cbcList }

  IXMLValueQualifierType_cbcList = interface(IXMLNodeCollection)
    ['{B74EF0E2-5D6A-45D6-88AC-9748DB9EC7C3}']
    { Methods & Properties }
    function Add: IXMLValueQualifierType_cbc;
    function Insert(const Index: Integer): IXMLValueQualifierType_cbc;

    function Get_Item(Index: Integer): IXMLValueQualifierType_cbc;
    property Items[Index: Integer]: IXMLValueQualifierType_cbc read Get_Item; default;
  end;

{ IXMLImportanceCodeType_cbc }

  IXMLImportanceCodeType_cbc = interface(IXMLNode)
    ['{EB997333-80EF-466D-ACDB-774B9C4A9C46}']
  end;

{ IXMLListValueType_cbc }

  IXMLListValueType_cbc = interface(IXMLNode)
    ['{1852AB2F-6C37-463F-9C56-8247F8DB88F7}']
  end;

{ IXMLListValueType_cbcList }

  IXMLListValueType_cbcList = interface(IXMLNodeCollection)
    ['{A675D4B1-DDBE-4192-B4F9-5FEF137C432C}']
    { Methods & Properties }
    function Add: IXMLListValueType_cbc;
    function Insert(const Index: Integer): IXMLListValueType_cbc;

    function Get_Item(Index: Integer): IXMLListValueType_cbc;
    property Items[Index: Integer]: IXMLListValueType_cbc read Get_Item; default;
  end;

{ IXMLItemPropertyGroupType_cac }

  IXMLItemPropertyGroupType_cac = interface(IXMLNode)
    ['{F86BE8E9-E8D4-4CB9-BD57-903DA4A21F23}']
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
    ['{4909C170-BD2E-4CEE-8829-7573CBABAD1C}']
    { Methods & Properties }
    function Add: IXMLItemPropertyGroupType_cac;
    function Insert(const Index: Integer): IXMLItemPropertyGroupType_cac;

    function Get_Item(Index: Integer): IXMLItemPropertyGroupType_cac;
    property Items[Index: Integer]: IXMLItemPropertyGroupType_cac read Get_Item; default;
  end;

{ IXMLDimensionType_cac }

  IXMLDimensionType_cac = interface(IXMLNode)
    ['{040D412F-42DE-446B-B500-DD725F181B97}']
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
    ['{5B29EB72-8C3E-4BD9-A2D7-96686392B808}']
    { Methods & Properties }
    function Add: IXMLDimensionType_cac;
    function Insert(const Index: Integer): IXMLDimensionType_cac;

    function Get_Item(Index: Integer): IXMLDimensionType_cac;
    property Items[Index: Integer]: IXMLDimensionType_cac read Get_Item; default;
  end;

{ IXMLAttributeIDType_cbc }

  IXMLAttributeIDType_cbc = interface(IXMLNode)
    ['{D6DAEFC9-7F41-4DEF-A23C-F9FCB9C2D83A}']
  end;

{ IXMLMeasureType_cbc }

  IXMLMeasureType_cbc = interface(IXMLNode)
    ['{75716A36-EF7B-47A7-ACB4-8C690AD6CBC1}']
  end;

{ IXMLMinimumMeasureType_cbc }

  IXMLMinimumMeasureType_cbc = interface(IXMLNode)
    ['{AE96DAA9-FB41-400F-96EA-1A54C0649B72}']
  end;

{ IXMLMaximumMeasureType_cbc }

  IXMLMaximumMeasureType_cbc = interface(IXMLNode)
    ['{ABE4D71C-E32B-4165-9137-6C1C2D2157C2}']
  end;

{ IXMLItemPropertyRangeType_cac }

  IXMLItemPropertyRangeType_cac = interface(IXMLNode)
    ['{166A2227-989D-4DD4-8807-08CB9EEE7F79}']
    { Property Accessors }
    function Get_MinimumValue: IXMLMinimumValueType_cbc;
    function Get_MaximumValue: IXMLMaximumValueType_cbc;
    { Methods & Properties }
    property MinimumValue: IXMLMinimumValueType_cbc read Get_MinimumValue;
    property MaximumValue: IXMLMaximumValueType_cbc read Get_MaximumValue;
  end;

{ IXMLMinimumValueType_cbc }

  IXMLMinimumValueType_cbc = interface(IXMLNode)
    ['{F2B9CD6E-F379-4938-BF99-A60644CBA42D}']
  end;

{ IXMLMaximumValueType_cbc }

  IXMLMaximumValueType_cbc = interface(IXMLNode)
    ['{D4F35380-D36F-4B89-AE91-51D9E90F3CD6}']
  end;

{ IXMLLotIdentificationType_cac }

  IXMLLotIdentificationType_cac = interface(IXMLNode)
    ['{E76E046A-4222-4C01-9032-DF69EEF179CA}']
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
    ['{5EF68975-92CB-488F-9AF3-1F6B378FB4B1}']
  end;

{ IXMLExpiryDateType_cbc }

  IXMLExpiryDateType_cbc = interface(IXMLNode)
    ['{74852A65-2FC9-480E-A204-9E6208C1DA99}']
  end;

{ IXMLInvoiceLineType_cac }

  IXMLInvoiceLineType_cac = interface(IXMLNode)
    ['{AEB341F5-818A-4745-8EA1-AB5EC0206DFD}']
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
    ['{B16EDE6D-CB1D-4BFC-844C-7A4E97A3725E}']
    { Methods & Properties }
    function Add: IXMLInvoiceLineType_cac;
    function Insert(const Index: Integer): IXMLInvoiceLineType_cac;

    function Get_Item(Index: Integer): IXMLInvoiceLineType_cac;
    property Items[Index: Integer]: IXMLInvoiceLineType_cac read Get_Item; default;
  end;

{ IXMLInvoicedQuantityType_cbc }

  IXMLInvoicedQuantityType_cbc = interface(IXMLNode)
    ['{D0AD71F6-CF9C-40B6-BA3E-FCB156C72723}']
  end;

{ IXMLLineExtensionAmountType_cbc }

  IXMLLineExtensionAmountType_cbc = interface(IXMLNode)
    ['{071615A9-BEB0-4EF4-8EE4-99B063CA86DC}']
  end;

{ IXMLOrderLineReferenceType_cac }

  IXMLOrderLineReferenceType_cac = interface(IXMLNode)
    ['{E9A35361-908B-41B3-8AB4-89104AE0A203}']
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
    ['{E2EB85A9-B002-46F4-9E56-9C701602A501}']
    { Methods & Properties }
    function Add: IXMLOrderLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLOrderLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLOrderLineReferenceType_cac;
    property Items[Index: Integer]: IXMLOrderLineReferenceType_cac read Get_Item; default;
  end;

{ IXMLLineIDType_cbc }

  IXMLLineIDType_cbc = interface(IXMLNode)
    ['{51F68470-BE53-4CD3-B845-CB2536CB6FD7}']
  end;

{ IXMLSalesOrderLineIDType_cbc }

  IXMLSalesOrderLineIDType_cbc = interface(IXMLNode)
    ['{92884C60-06C5-46F0-B1E3-A6F877693D36}']
  end;

{ IXMLLineStatusCodeType_cbc }

  IXMLLineStatusCodeType_cbc = interface(IXMLNode)
    ['{20CD7E3C-A130-44E9-B8C1-C986EDC5AE92}']
  end;

{ IXMLLineReferenceType_cac }

  IXMLLineReferenceType_cac = interface(IXMLNode)
    ['{97D65707-780D-4E17-B28E-1C97D8B4F8F1}']
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
    ['{B64C1E78-F2FB-4335-9983-37104FCF70DC}']
    { Methods & Properties }
    function Add: IXMLLineReferenceType_cac;
    function Insert(const Index: Integer): IXMLLineReferenceType_cac;

    function Get_Item(Index: Integer): IXMLLineReferenceType_cac;
    property Items[Index: Integer]: IXMLLineReferenceType_cac read Get_Item; default;
  end;

{ IXMLTaxTotalType_cac }

  IXMLTaxTotalType_cac = interface(IXMLNode)
    ['{40C7ED2B-C4CF-48A1-808A-2D421763B3D8}']
    { Property Accessors }
    function Get_TaxAmount: IXMLTaxAmountType_cbc;
    function Get_TaxSubtotal: IXMLTaxSubtotalType_cacList;
    { Methods & Properties }
    property TaxAmount: IXMLTaxAmountType_cbc read Get_TaxAmount;
    property TaxSubtotal: IXMLTaxSubtotalType_cacList read Get_TaxSubtotal;
  end;

{ IXMLTaxTotalType_cacList }

  IXMLTaxTotalType_cacList = interface(IXMLNodeCollection)
    ['{3EAA6602-5BA3-45D4-9FC8-01678ADAC908}']
    { Methods & Properties }
    function Add: IXMLTaxTotalType_cac;
    function Insert(const Index: Integer): IXMLTaxTotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxTotalType_cac;
    property Items[Index: Integer]: IXMLTaxTotalType_cac read Get_Item; default;
  end;

{ IXMLTaxAmountType_cbc }

  IXMLTaxAmountType_cbc = interface(IXMLNode)
    ['{C6D69EFD-F7F5-435E-9982-5434EADEC985}']
  end;

{ IXMLTaxSubtotalType_cac }

  IXMLTaxSubtotalType_cac = interface(IXMLNode)
    ['{392BE095-2363-4BA7-A5D9-D893925FCAFB}']
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
    ['{ABC5FC27-28C9-4D95-BD30-92EB9A767A89}']
    { Methods & Properties }
    function Add: IXMLTaxSubtotalType_cac;
    function Insert(const Index: Integer): IXMLTaxSubtotalType_cac;

    function Get_Item(Index: Integer): IXMLTaxSubtotalType_cac;
    property Items[Index: Integer]: IXMLTaxSubtotalType_cac read Get_Item; default;
  end;

{ IXMLTaxableAmountType_cbc }

  IXMLTaxableAmountType_cbc = interface(IXMLNode)
    ['{9C4B3416-9CDF-4A47-A7EF-E42D3A950ABF}']
  end;

{ IXMLCalculationSequenceNumericType_cbc }

  IXMLCalculationSequenceNumericType_cbc = interface(IXMLNode)
    ['{A2444332-4C4F-4B6C-BB9C-5D0857136E6B}']
  end;

{ IXMLTransactionCurrencyTaxAmountType_cbc }

  IXMLTransactionCurrencyTaxAmountType_cbc = interface(IXMLNode)
    ['{04A53F6E-5B6F-4843-8E60-3FAE18BB63A2}']
  end;

{ IXMLPercentType_cbc }

  IXMLPercentType_cbc = interface(IXMLNode)
    ['{83F90A50-76B8-4C0A-A9AA-9C3AF84E3E46}']
  end;

{ IXMLBaseUnitMeasureType_cbc }

  IXMLBaseUnitMeasureType_cbc = interface(IXMLNode)
    ['{0FB32FB2-4FDA-40A6-98E6-F7125594C02B}']
  end;

{ IXMLTaxCategoryType_cac }

  IXMLTaxCategoryType_cac = interface(IXMLNode)
    ['{84D16206-3878-49B0-A741-71748F06A546}']
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
    ['{A25212A2-BA56-46B1-96AD-A1321E54FD64}']
  end;

{ IXMLTaxExemptionReasonType_cbc }

  IXMLTaxExemptionReasonType_cbc = interface(IXMLNode)
    ['{BDC784CA-01AD-436C-B37B-3233763E3F97}']
  end;

{ IXMLPriceType_cac }

  IXMLPriceType_cac = interface(IXMLNode)
    ['{EDF8A3DB-C75F-4008-B0DD-3A1DA954C6E1}']
    { Property Accessors }
    function Get_PriceAmount: IXMLPriceAmountType_cbc;
    { Methods & Properties }
    property PriceAmount: IXMLPriceAmountType_cbc read Get_PriceAmount;
  end;

{ IXMLPriceAmountType_cbc }

  IXMLPriceAmountType_cbc = interface(IXMLNode)
    ['{5FB79A73-CC6B-4ACF-A894-C32914F6F0E8}']
  end;

{ IXMLTemperatureType_cac }

  IXMLTemperatureType_cac = interface(IXMLNode)
    ['{8DBCC656-A351-4E5C-8AC2-F32D6DC6EC92}']
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
    ['{185F164C-9AD3-425E-8BE5-5F07A3B2B352}']
    { Methods & Properties }
    function Add: IXMLTemperatureType_cac;
    function Insert(const Index: Integer): IXMLTemperatureType_cac;

    function Get_Item(Index: Integer): IXMLTemperatureType_cac;
    property Items[Index: Integer]: IXMLTemperatureType_cac read Get_Item; default;
  end;

{ IXMLShipmentStageType_cac }

  IXMLShipmentStageType_cac = interface(IXMLNode)
    ['{C7FEE211-765C-407A-95EE-3EB17E9356FD}']
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
    ['{F9BC90A9-3F06-4EAE-BB5A-D1D0922C0B55}']
    { Methods & Properties }
    function Add: IXMLShipmentStageType_cac;
    function Insert(const Index: Integer): IXMLShipmentStageType_cac;

    function Get_Item(Index: Integer): IXMLShipmentStageType_cac;
    property Items[Index: Integer]: IXMLShipmentStageType_cac read Get_Item; default;
  end;

{ IXMLTransportModeCodeType_cbc }

  IXMLTransportModeCodeType_cbc = interface(IXMLNode)
    ['{AECC95A7-F776-4AF4-ACDB-58C22AA5C1C0}']
  end;

{ IXMLTransportMeansTypeCodeType_cbc }

  IXMLTransportMeansTypeCodeType_cbc = interface(IXMLNode)
    ['{296CDEF3-0D3C-48A8-9C99-48EB5506D830}']
  end;

{ IXMLTransitDirectionCodeType_cbc }

  IXMLTransitDirectionCodeType_cbc = interface(IXMLNode)
    ['{CFDA31F1-468C-4C4C-ABE5-F863DFC1C04D}']
  end;

{ IXMLTransportMeansType_cac }

  IXMLTransportMeansType_cac = interface(IXMLNode)
    ['{45377C25-68F3-4A4D-A208-EB0D3A6DB3E9}']
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
    ['{77A7E03E-33CB-4169-B423-6EF64C149F08}']
    { Methods & Properties }
    function Add: IXMLTransportMeansType_cac;
    function Insert(const Index: Integer): IXMLTransportMeansType_cac;

    function Get_Item(Index: Integer): IXMLTransportMeansType_cac;
    property Items[Index: Integer]: IXMLTransportMeansType_cac read Get_Item; default;
  end;

{ IXMLJourneyIDType_cbc }

  IXMLJourneyIDType_cbc = interface(IXMLNode)
    ['{9CC8472F-17B1-4F40-AD84-668B3F423774}']
  end;

{ IXMLRegistrationNationalityIDType_cbc }

  IXMLRegistrationNationalityIDType_cbc = interface(IXMLNode)
    ['{7FB6D39A-84FF-4F9B-98DE-2A52547D4DE7}']
  end;

{ IXMLRegistrationNationalityType_cbc }

  IXMLRegistrationNationalityType_cbc = interface(IXMLNode)
    ['{7025FA23-BDF1-46FA-84E0-E7840BF5437F}']
  end;

{ IXMLRegistrationNationalityType_cbcList }

  IXMLRegistrationNationalityType_cbcList = interface(IXMLNodeCollection)
    ['{4DFA077E-EF58-4ED8-8D05-1150FAE298E1}']
    { Methods & Properties }
    function Add: IXMLRegistrationNationalityType_cbc;
    function Insert(const Index: Integer): IXMLRegistrationNationalityType_cbc;

    function Get_Item(Index: Integer): IXMLRegistrationNationalityType_cbc;
    property Items[Index: Integer]: IXMLRegistrationNationalityType_cbc read Get_Item; default;
  end;

{ IXMLDirectionCodeType_cbc }

  IXMLDirectionCodeType_cbc = interface(IXMLNode)
    ['{6FDF46AB-0D03-409B-96EA-1FD84F1BD876}']
  end;

{ IXMLTradeServiceCodeType_cbc }

  IXMLTradeServiceCodeType_cbc = interface(IXMLNode)
    ['{455AA876-7FEC-4F44-9F4C-236E48DB5305}']
  end;

{ IXMLStowageType_cac }

  IXMLStowageType_cac = interface(IXMLNode)
    ['{DF1C1109-83A4-4C2E-BDF3-67C0B7B0CEEB}']
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
    ['{E44DB0E6-02AF-49FC-B886-D46E61030DF0}']
  end;

{ IXMLLocationType_cbc }

  IXMLLocationType_cbc = interface(IXMLNode)
    ['{2A000897-E40A-4281-90E6-51D950CDA45E}']
  end;

{ IXMLLocationType_cbcList }

  IXMLLocationType_cbcList = interface(IXMLNodeCollection)
    ['{9BB3A381-1128-4BAB-BA44-3F1537BB3A07}']
    { Methods & Properties }
    function Add: IXMLLocationType_cbc;
    function Insert(const Index: Integer): IXMLLocationType_cbc;

    function Get_Item(Index: Integer): IXMLLocationType_cbc;
    property Items[Index: Integer]: IXMLLocationType_cbc read Get_Item; default;
  end;

{ IXMLAirTransportType_cac }

  IXMLAirTransportType_cac = interface(IXMLNode)
    ['{344FB72A-A704-45BF-8A2A-9CA9D12601D7}']
    { Property Accessors }
    function Get_AircraftID: IXMLAircraftIDType_cbc;
    { Methods & Properties }
    property AircraftID: IXMLAircraftIDType_cbc read Get_AircraftID;
  end;

{ IXMLAircraftIDType_cbc }

  IXMLAircraftIDType_cbc = interface(IXMLNode)
    ['{592952D6-9073-4FC9-A8FB-A416FEAB66AA}']
  end;

{ IXMLRoadTransportType_cac }

  IXMLRoadTransportType_cac = interface(IXMLNode)
    ['{D7469194-CFC2-445E-BF3A-030F0A720700}']
    { Property Accessors }
    function Get_LicensePlateID: IXMLLicensePlateIDType_cbc;
    { Methods & Properties }
    property LicensePlateID: IXMLLicensePlateIDType_cbc read Get_LicensePlateID;
  end;

{ IXMLLicensePlateIDType_cbc }

  IXMLLicensePlateIDType_cbc = interface(IXMLNode)
    ['{A5B11DFE-762E-4E43-9FA4-E33E65A6916C}']
  end;

{ IXMLRailTransportType_cac }

  IXMLRailTransportType_cac = interface(IXMLNode)
    ['{91F39D9E-0336-4B68-ADAA-F2FABE640577}']
    { Property Accessors }
    function Get_TrainID: IXMLTrainIDType_cbc;
    function Get_RailCarID: IXMLRailCarIDType_cbc;
    { Methods & Properties }
    property TrainID: IXMLTrainIDType_cbc read Get_TrainID;
    property RailCarID: IXMLRailCarIDType_cbc read Get_RailCarID;
  end;

{ IXMLTrainIDType_cbc }

  IXMLTrainIDType_cbc = interface(IXMLNode)
    ['{F09FDD4D-CEBB-4AFC-A049-DA659F65A577}']
  end;

{ IXMLRailCarIDType_cbc }

  IXMLRailCarIDType_cbc = interface(IXMLNode)
    ['{B29BF2E0-C133-41D5-AEF6-0C5E762B6FC2}']
  end;

{ IXMLMaritimeTransportType_cac }

  IXMLMaritimeTransportType_cac = interface(IXMLNode)
    ['{9879A489-C379-471E-9326-7A07B6EF7BE7}']
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
    ['{E35CA911-4D6E-44F4-8110-379C33EC5ECC}']
  end;

{ IXMLVesselNameType_cbc }

  IXMLVesselNameType_cbc = interface(IXMLNode)
    ['{5397AE39-6D48-4C64-A8A1-8B55B1C30EAF}']
  end;

{ IXMLRadioCallSignIDType_cbc }

  IXMLRadioCallSignIDType_cbc = interface(IXMLNode)
    ['{59267254-68D9-487E-8D68-E8D80DAC61DE}']
  end;

{ IXMLShipsRequirementsType_cbc }

  IXMLShipsRequirementsType_cbc = interface(IXMLNode)
    ['{49B82015-A4C0-411E-87E4-9264E7975C3C}']
  end;

{ IXMLShipsRequirementsType_cbcList }

  IXMLShipsRequirementsType_cbcList = interface(IXMLNodeCollection)
    ['{8A4E0E2C-6656-42E3-9A17-A97AAF47552C}']
    { Methods & Properties }
    function Add: IXMLShipsRequirementsType_cbc;
    function Insert(const Index: Integer): IXMLShipsRequirementsType_cbc;

    function Get_Item(Index: Integer): IXMLShipsRequirementsType_cbc;
    property Items[Index: Integer]: IXMLShipsRequirementsType_cbc read Get_Item; default;
  end;

{ IXMLGrossTonnageMeasureType_cbc }

  IXMLGrossTonnageMeasureType_cbc = interface(IXMLNode)
    ['{493D1B18-FFFB-475E-BB2A-41F4FCAFC43F}']
  end;

{ IXMLNetTonnageMeasureType_cbc }

  IXMLNetTonnageMeasureType_cbc = interface(IXMLNode)
    ['{B688FE39-214A-4B7E-BA05-366AA211D55B}']
  end;

{ IXMLTransportHandlingUnitType_cac }

  IXMLTransportHandlingUnitType_cac = interface(IXMLNode)
    ['{F71AB7C4-DAC3-4F28-9968-BC7EAE8C8FC3}']
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
    ['{DBF78A61-36CD-4171-B3A5-CC0E0CC4E512}']
    { Methods & Properties }
    function Add: IXMLTransportHandlingUnitType_cac;
    function Insert(const Index: Integer): IXMLTransportHandlingUnitType_cac;

    function Get_Item(Index: Integer): IXMLTransportHandlingUnitType_cac;
    property Items[Index: Integer]: IXMLTransportHandlingUnitType_cac read Get_Item; default;
  end;

{ IXMLTransportHandlingUnitTypeCodeType_cbc }

  IXMLTransportHandlingUnitTypeCodeType_cbc = interface(IXMLNode)
    ['{D43DAA8D-1598-449C-AC43-B92E403C9099}']
  end;

{ IXMLTotalPackageQuantityType_cbc }

  IXMLTotalPackageQuantityType_cbc = interface(IXMLNode)
    ['{BEA0577A-5658-4D9D-AF72-00C0694EE70C}']
  end;

{ IXMLDamageRemarksType_cbc }

  IXMLDamageRemarksType_cbc = interface(IXMLNode)
    ['{5B875A95-85E6-4085-8354-66D5DF972D40}']
  end;

{ IXMLDamageRemarksType_cbcList }

  IXMLDamageRemarksType_cbcList = interface(IXMLNodeCollection)
    ['{C92081B9-ECCE-4090-8675-EBF1DB9064BA}']
    { Methods & Properties }
    function Add: IXMLDamageRemarksType_cbc;
    function Insert(const Index: Integer): IXMLDamageRemarksType_cbc;

    function Get_Item(Index: Integer): IXMLDamageRemarksType_cbc;
    property Items[Index: Integer]: IXMLDamageRemarksType_cbc read Get_Item; default;
  end;

{ IXMLPackageType_cac }

  IXMLPackageType_cac = interface(IXMLNode)
    ['{C2DA71F6-E992-4AB7-9D2D-A5A8329E24F7}']
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
    ['{46733362-6917-4EC5-AFAB-879CDD82FC4D}']
    { Methods & Properties }
    function Add: IXMLPackageType_cac;
    function Insert(const Index: Integer): IXMLPackageType_cac;

    function Get_Item(Index: Integer): IXMLPackageType_cac;
    property Items[Index: Integer]: IXMLPackageType_cac read Get_Item; default;
  end;

{ IXMLReturnableMaterialIndicatorType_cbc }

  IXMLReturnableMaterialIndicatorType_cbc = interface(IXMLNode)
    ['{06B59E9D-D6A1-4186-B092-92EDF22F521F}']
  end;

{ IXMLPackageLevelCodeType_cbc }

  IXMLPackageLevelCodeType_cbc = interface(IXMLNode)
    ['{BD7B7F86-9A3B-4E18-B74F-C23A990D946C}']
  end;

{ IXMLPackagingTypeCodeType_cbc }

  IXMLPackagingTypeCodeType_cbc = interface(IXMLNode)
    ['{228EE19D-8AEA-4854-A091-D57059FEF475}']
  end;

{ IXMLPackingMaterialType_cbc }

  IXMLPackingMaterialType_cbc = interface(IXMLNode)
    ['{63C66199-6FDB-4A39-BDBF-0446BCDA637A}']
  end;

{ IXMLPackingMaterialType_cbcList }

  IXMLPackingMaterialType_cbcList = interface(IXMLNodeCollection)
    ['{ED6F7CBB-6268-4F93-A4D3-3C953DD2E74C}']
    { Methods & Properties }
    function Add: IXMLPackingMaterialType_cbc;
    function Insert(const Index: Integer): IXMLPackingMaterialType_cbc;

    function Get_Item(Index: Integer): IXMLPackingMaterialType_cbc;
    property Items[Index: Integer]: IXMLPackingMaterialType_cbc read Get_Item; default;
  end;

{ IXMLTransportEquipmentType_cac }

  IXMLTransportEquipmentType_cac = interface(IXMLNode)
    ['{D825B404-2570-47E1-8235-30FEC908048C}']
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
    ['{629A44F9-AE58-4921-8611-B1DDF63258A4}']
    { Methods & Properties }
    function Add: IXMLTransportEquipmentType_cac;
    function Insert(const Index: Integer): IXMLTransportEquipmentType_cac;

    function Get_Item(Index: Integer): IXMLTransportEquipmentType_cac;
    property Items[Index: Integer]: IXMLTransportEquipmentType_cac read Get_Item; default;
  end;

{ IXMLTransportEquipmentTypeCodeType_cbc }

  IXMLTransportEquipmentTypeCodeType_cbc = interface(IXMLNode)
    ['{F3DFEBD1-F24B-4576-BFA3-34AF5A3BEB9A}']
  end;

{ IXMLHazardousGoodsTransitType_cac }

  IXMLHazardousGoodsTransitType_cac = interface(IXMLNode)
    ['{3D3E4138-3FE2-44EB-8FCB-798F59F52C74}']
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
    ['{7151F81D-B898-4D4E-9BF2-795948B1B826}']
    { Methods & Properties }
    function Add: IXMLHazardousGoodsTransitType_cac;
    function Insert(const Index: Integer): IXMLHazardousGoodsTransitType_cac;

    function Get_Item(Index: Integer): IXMLHazardousGoodsTransitType_cac;
    property Items[Index: Integer]: IXMLHazardousGoodsTransitType_cac read Get_Item; default;
  end;

{ IXMLTransportEmergencyCardCodeType_cbc }

  IXMLTransportEmergencyCardCodeType_cbc = interface(IXMLNode)
    ['{F328263F-B234-4EF8-BA9F-66CC3DDEC652}']
  end;

{ IXMLPackingCriteriaCodeType_cbc }

  IXMLPackingCriteriaCodeType_cbc = interface(IXMLNode)
    ['{ECB73E94-A965-44D2-BCAB-E3F59199061F}']
  end;

{ IXMLHazardousRegulationCodeType_cbc }

  IXMLHazardousRegulationCodeType_cbc = interface(IXMLNode)
    ['{EEEB3259-8BED-4A9F-A5D4-44EF8C4E5985}']
  end;

{ IXMLInhalationToxicityZoneCodeType_cbc }

  IXMLInhalationToxicityZoneCodeType_cbc = interface(IXMLNode)
    ['{5587D17F-D63F-4211-9E0F-0A0E1217FC91}']
  end;

{ IXMLTransportAuthorizationCodeType_cbc }

  IXMLTransportAuthorizationCodeType_cbc = interface(IXMLNode)
    ['{685A09C6-47D8-46A0-81D4-AE94F8BD2EBE}']
  end;

{ IXMLCustomsDeclarationType_cac }

  IXMLCustomsDeclarationType_cac = interface(IXMLNode)
    ['{6DECB1CD-CD77-4662-BD17-5BFC4B8E70CF}']
    { Property Accessors }
    function Get_ID: IXMLIDType_cbc;
    function Get_IssuerParty: IXMLPartyType_cac;
    { Methods & Properties }
    property ID: IXMLIDType_cbc read Get_ID;
    property IssuerParty: IXMLPartyType_cac read Get_IssuerParty;
  end;

{ IXMLCustomsDeclarationType_cacList }

  IXMLCustomsDeclarationType_cacList = interface(IXMLNodeCollection)
    ['{900B2BB8-C96A-4F56-A029-8A7136C935AB}']
    { Methods & Properties }
    function Add: IXMLCustomsDeclarationType_cac;
    function Insert(const Index: Integer): IXMLCustomsDeclarationType_cac;

    function Get_Item(Index: Integer): IXMLCustomsDeclarationType_cac;
    property Items[Index: Integer]: IXMLCustomsDeclarationType_cac read Get_Item; default;
  end;

{ IXMLPaymentMeansType_cac }

  IXMLPaymentMeansType_cac = interface(IXMLNode)
    ['{31D732A8-5233-4167-9C2A-06DF65A17951}']
    { Property Accessors }
    function Get_PaymentMeansCode: IXMLPaymentMeansCodeType_cbc;
    function Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
    function Get_PaymentChannelCode: IXMLPaymentChannelCodeType_cbc;
    function Get_InstructionNote: IXMLInstructionNoteType_cbc;
    function Get_PayerFinancialAccount: IXMLFinancialAccountType_cac;
    function Get_PayeeFinancialAccount: IXMLFinancialAccountType_cac;
    { Methods & Properties }
    property PaymentMeansCode: IXMLPaymentMeansCodeType_cbc read Get_PaymentMeansCode;
    property PaymentDueDate: IXMLPaymentDueDateType_cbc read Get_PaymentDueDate;
    property PaymentChannelCode: IXMLPaymentChannelCodeType_cbc read Get_PaymentChannelCode;
    property InstructionNote: IXMLInstructionNoteType_cbc read Get_InstructionNote;
    property PayerFinancialAccount: IXMLFinancialAccountType_cac read Get_PayerFinancialAccount;
    property PayeeFinancialAccount: IXMLFinancialAccountType_cac read Get_PayeeFinancialAccount;
  end;

{ IXMLPaymentMeansType_cacList }

  IXMLPaymentMeansType_cacList = interface(IXMLNodeCollection)
    ['{4CFD7BA4-39C8-4531-9129-87817A3FF1DB}']
    { Methods & Properties }
    function Add: IXMLPaymentMeansType_cac;
    function Insert(const Index: Integer): IXMLPaymentMeansType_cac;

    function Get_Item(Index: Integer): IXMLPaymentMeansType_cac;
    property Items[Index: Integer]: IXMLPaymentMeansType_cac read Get_Item; default;
  end;

{ IXMLPaymentMeansCodeType_cbc }

  IXMLPaymentMeansCodeType_cbc = interface(IXMLNode)
    ['{D7D68710-D2D4-4978-886F-A342C6A6615A}']
  end;

{ IXMLPaymentDueDateType_cbc }

  IXMLPaymentDueDateType_cbc = interface(IXMLNode)
    ['{1C8EBCCF-1779-49CC-A1C9-4FA147043D9A}']
  end;

{ IXMLPaymentChannelCodeType_cbc }

  IXMLPaymentChannelCodeType_cbc = interface(IXMLNode)
    ['{655E1B6B-C167-4873-AFBA-6162ACE0C533}']
  end;

{ IXMLInstructionNoteType_cbc }

  IXMLInstructionNoteType_cbc = interface(IXMLNode)
    ['{A61B3FB9-2A2D-4CB3-988C-D31822E1BD79}']
  end;

{ IXMLPaymentTermsType_cac }

  IXMLPaymentTermsType_cac = interface(IXMLNode)
    ['{3BE4D9E5-225C-4C61-A09C-F68E6CD3C5C3}']
    { Property Accessors }
    function Get_Note: IXMLNoteType_cbc;
    function Get_PenaltySurchargePercent: IXMLPenaltySurchargePercentType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_PenaltyAmount: IXMLPenaltyAmountType_cbc;
    function Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
    function Get_SettlementPeriod: IXMLPeriodType_cac;
    { Methods & Properties }
    property Note: IXMLNoteType_cbc read Get_Note;
    property PenaltySurchargePercent: IXMLPenaltySurchargePercentType_cbc read Get_PenaltySurchargePercent;
    property Amount: IXMLAmountType_cbc read Get_Amount;
    property PenaltyAmount: IXMLPenaltyAmountType_cbc read Get_PenaltyAmount;
    property PaymentDueDate: IXMLPaymentDueDateType_cbc read Get_PaymentDueDate;
    property SettlementPeriod: IXMLPeriodType_cac read Get_SettlementPeriod;
  end;

{ IXMLPenaltySurchargePercentType_cbc }

  IXMLPenaltySurchargePercentType_cbc = interface(IXMLNode)
    ['{86EF70C1-44E0-4210-8F4B-44944E2F4D62}']
  end;

{ IXMLPenaltyAmountType_cbc }

  IXMLPenaltyAmountType_cbc = interface(IXMLNode)
    ['{9606DCE5-F1E8-4663-A46A-6EB76DB83121}']
  end;

{ IXMLExchangeRateType_cac }

  IXMLExchangeRateType_cac = interface(IXMLNode)
    ['{9827CC86-041B-4BD7-8260-5FCD436BE8B3}']
    { Property Accessors }
    function Get_SourceCurrencyCode: IXMLSourceCurrencyCodeType_cbc;
    function Get_TargetCurrencyCode: IXMLTargetCurrencyCodeType_cbc;
    function Get_CalculationRate: IXMLCalculationRateType_cbc;
    function Get_Date: IXMLDateType_cbc;
    { Methods & Properties }
    property SourceCurrencyCode: IXMLSourceCurrencyCodeType_cbc read Get_SourceCurrencyCode;
    property TargetCurrencyCode: IXMLTargetCurrencyCodeType_cbc read Get_TargetCurrencyCode;
    property CalculationRate: IXMLCalculationRateType_cbc read Get_CalculationRate;
    property Date: IXMLDateType_cbc read Get_Date;
  end;

{ IXMLSourceCurrencyCodeType_cbc }

  IXMLSourceCurrencyCodeType_cbc = interface(IXMLNode)
    ['{A1852EC1-2142-4CA7-BDE3-F834FC251A76}']
  end;

{ IXMLTargetCurrencyCodeType_cbc }

  IXMLTargetCurrencyCodeType_cbc = interface(IXMLNode)
    ['{93FB36C5-B572-4125-B541-70D93B8A5C45}']
  end;

{ IXMLCalculationRateType_cbc }

  IXMLCalculationRateType_cbc = interface(IXMLNode)
    ['{851E7FAB-4066-4267-9723-4FBA649D4DBE}']
  end;

{ IXMLDateType_cbc }

  IXMLDateType_cbc = interface(IXMLNode)
    ['{2DF67410-EF91-4298-BCD3-25A2BB23B90D}']
  end;

{ IXMLMonetaryTotalType_cac }

  IXMLMonetaryTotalType_cac = interface(IXMLNode)
    ['{44A510A7-8390-4D98-AB29-1EAEF64B50A1}']
    { Property Accessors }
    function Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
    function Get_TaxExclusiveAmount: IXMLTaxExclusiveAmountType_cbc;
    function Get_TaxInclusiveAmount: IXMLTaxInclusiveAmountType_cbc;
    function Get_AllowanceTotalAmount: IXMLAllowanceTotalAmountType_cbc;
    function Get_ChargeTotalAmount: IXMLChargeTotalAmountType_cbc;
    function Get_PayableRoundingAmount: IXMLPayableRoundingAmountType_cbc;
    function Get_PayableAmount: IXMLPayableAmountType_cbc;
    { Methods & Properties }
    property LineExtensionAmount: IXMLLineExtensionAmountType_cbc read Get_LineExtensionAmount;
    property TaxExclusiveAmount: IXMLTaxExclusiveAmountType_cbc read Get_TaxExclusiveAmount;
    property TaxInclusiveAmount: IXMLTaxInclusiveAmountType_cbc read Get_TaxInclusiveAmount;
    property AllowanceTotalAmount: IXMLAllowanceTotalAmountType_cbc read Get_AllowanceTotalAmount;
    property ChargeTotalAmount: IXMLChargeTotalAmountType_cbc read Get_ChargeTotalAmount;
    property PayableRoundingAmount: IXMLPayableRoundingAmountType_cbc read Get_PayableRoundingAmount;
    property PayableAmount: IXMLPayableAmountType_cbc read Get_PayableAmount;
  end;

{ IXMLTaxExclusiveAmountType_cbc }

  IXMLTaxExclusiveAmountType_cbc = interface(IXMLNode)
    ['{AC89BEDE-77F7-4895-9FD3-BC9E19B1E314}']
  end;

{ IXMLTaxInclusiveAmountType_cbc }

  IXMLTaxInclusiveAmountType_cbc = interface(IXMLNode)
    ['{472FBA42-C219-401D-8329-CCCC22E0B8D9}']
  end;

{ IXMLAllowanceTotalAmountType_cbc }

  IXMLAllowanceTotalAmountType_cbc = interface(IXMLNode)
    ['{9CF7BEC0-2164-4E89-8E84-0F8BE9A95E7A}']
  end;

{ IXMLChargeTotalAmountType_cbc }

  IXMLChargeTotalAmountType_cbc = interface(IXMLNode)
    ['{9EA6D591-D893-45B5-86CE-E29AAA78EE75}']
  end;

{ IXMLPayableRoundingAmountType_cbc }

  IXMLPayableRoundingAmountType_cbc = interface(IXMLNode)
    ['{8BB7A237-E535-4295-9C4B-793A13DB3AB8}']
  end;

{ IXMLPayableAmountType_cbc }

  IXMLPayableAmountType_cbc = interface(IXMLNode)
    ['{279E3E81-F64F-4F1B-BE8D-4CF11A14077B}']
  end;

{ Forward Decls }

  TXMLInvoiceType = class;
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
  TXMLInvoiceTypeCodeType_cbc = class;
  TXMLNoteType_cbc = class;
  TXMLNoteType_cbcList = class;
  TXMLDocumentCurrencyCodeType_cbc = class;
  TXMLTaxCurrencyCodeType_cbc = class;
  TXMLPricingCurrencyCodeType_cbc = class;
  TXMLPaymentCurrencyCodeType_cbc = class;
  TXMLPaymentAlternativeCurrencyCodeType_cbc = class;
  TXMLAccountingCostType_cbc = class;
  TXMLLineCountNumericType_cbc = class;
  TXMLPeriodType_cac = class;
  TXMLStartDateType_cbc = class;
  TXMLStartTimeType_cbc = class;
  TXMLEndDateType_cbc = class;
  TXMLEndTimeType_cbc = class;
  TXMLDurationMeasureType_cbc = class;
  TXMLDescriptionType_cbc = class;
  TXMLDescriptionType_cbcList = class;
  TXMLOrderReferenceType_cac = class;
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
  TXMLBillingReferenceType_cac = class;
  TXMLBillingReferenceType_cacList = class;
  TXMLBillingReferenceLineType_cac = class;
  TXMLBillingReferenceLineType_cacList = class;
  TXMLAmountType_cbc = class;
  TXMLAllowanceChargeType_cac = class;
  TXMLAllowanceChargeType_cacList = class;
  TXMLChargeIndicatorType_cbc = class;
  TXMLAllowanceChargeReasonType_cbc = class;
  TXMLMultiplierFactorNumericType_cbc = class;
  TXMLSequenceNumericType_cbc = class;
  TXMLBaseAmountType_cbc = class;
  TXMLPerUnitAmountType_cbc = class;
  TXMLSignatureType_cac = class;
  TXMLSignatureType_cacList = class;
  TXMLSupplierPartyType_cac = class;
  TXMLCustomerPartyType_cac = class;
  TXMLDeliveryType_cac = class;
  TXMLDeliveryType_cacList = class;
  TXMLQuantityType_cbc = class;
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
  TXMLShipmentType_cac = class;
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
  TXMLPaymentMeansType_cac = class;
  TXMLPaymentMeansType_cacList = class;
  TXMLPaymentMeansCodeType_cbc = class;
  TXMLPaymentDueDateType_cbc = class;
  TXMLPaymentChannelCodeType_cbc = class;
  TXMLInstructionNoteType_cbc = class;
  TXMLPaymentTermsType_cac = class;
  TXMLPenaltySurchargePercentType_cbc = class;
  TXMLPenaltyAmountType_cbc = class;
  TXMLExchangeRateType_cac = class;
  TXMLSourceCurrencyCodeType_cbc = class;
  TXMLTargetCurrencyCodeType_cbc = class;
  TXMLCalculationRateType_cbc = class;
  TXMLDateType_cbc = class;
  TXMLMonetaryTotalType_cac = class;
  TXMLTaxExclusiveAmountType_cbc = class;
  TXMLTaxInclusiveAmountType_cbc = class;
  TXMLAllowanceTotalAmountType_cbc = class;
  TXMLChargeTotalAmountType_cbc = class;
  TXMLPayableRoundingAmountType_cbc = class;
  TXMLPayableAmountType_cbc = class;

{ TXMLInvoiceType }

  TXMLInvoiceType = class(TXMLNode, IXMLInvoiceType)
  private
    FNote: IXMLNoteType_cbcList;
    FBillingReference: IXMLBillingReferenceType_cacList;
    FDespatchDocumentReference: IXMLDocumentReferenceType_cacList;
    FReceiptDocumentReference: IXMLDocumentReferenceType_cacList;
    FOriginatorDocumentReference: IXMLDocumentReferenceType_cacList;
    FContractDocumentReference: IXMLDocumentReferenceType_cacList;
    FAdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    FSignature: IXMLSignatureType_cacList;
    FDelivery: IXMLDeliveryType_cacList;
    FPaymentMeans: IXMLPaymentMeansType_cacList;
    FAllowanceCharge: IXMLAllowanceChargeType_cacList;
    FTaxTotal: IXMLTaxTotalType_cacList;
    FWithholdingTaxTotal: IXMLTaxTotalType_cacList;
    FInvoiceLine: IXMLInvoiceLineType_cacList;
  protected
    { IXMLInvoiceType }
    function Get_UBLExtensions: IXMLUBLExtensionsType_ext;
    function Get_UBLVersionID: IXMLUBLVersionIDType_cbc;
    function Get_CustomizationID: IXMLCustomizationIDType_cbc;
    function Get_ProfileID: IXMLProfileIDType_cbc;
    function Get_ID: IXMLIDType_cbc;
    function Get_CopyIndicator: IXMLCopyIndicatorType_cbc;
    function Get_UUID: IXMLUUIDType_cbc;
    function Get_IssueDate: IXMLIssueDateType_cbc;
    function Get_IssueTime: IXMLIssueTimeType_cbc;
    function Get_InvoiceTypeCode: IXMLInvoiceTypeCodeType_cbc;
    function Get_Note: IXMLNoteType_cbcList;
    function Get_DocumentCurrencyCode: IXMLDocumentCurrencyCodeType_cbc;
    function Get_TaxCurrencyCode: IXMLTaxCurrencyCodeType_cbc;
    function Get_PricingCurrencyCode: IXMLPricingCurrencyCodeType_cbc;
    function Get_PaymentCurrencyCode: IXMLPaymentCurrencyCodeType_cbc;
    function Get_PaymentAlternativeCurrencyCode: IXMLPaymentAlternativeCurrencyCodeType_cbc;
    function Get_AccountingCost: IXMLAccountingCostType_cbc;
    function Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
    function Get_InvoicePeriod: IXMLPeriodType_cac;
    function Get_OrderReference: IXMLOrderReferenceType_cac;
    function Get_BillingReference: IXMLBillingReferenceType_cacList;
    function Get_DespatchDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_ReceiptDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_OriginatorDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_ContractDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
    function Get_Signature: IXMLSignatureType_cacList;
    function Get_AccountingSupplierParty: IXMLSupplierPartyType_cac;
    function Get_AccountingCustomerParty: IXMLCustomerPartyType_cac;
    function Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
    function Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
    function Get_TaxRepresentativeParty: IXMLPartyType_cac;
    function Get_Delivery: IXMLDeliveryType_cacList;
    function Get_PaymentMeans: IXMLPaymentMeansType_cacList;
    function Get_PaymentTerms: IXMLPaymentTermsType_cac;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
    function Get_TaxExchangeRate: IXMLExchangeRateType_cac;
    function Get_PricingExchangeRate: IXMLExchangeRateType_cac;
    function Get_PaymentExchangeRate: IXMLExchangeRateType_cac;
    function Get_PaymentAlternativeExchangeRate: IXMLExchangeRateType_cac;
    function Get_TaxTotal: IXMLTaxTotalType_cacList;
    function Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
    function Get_LegalMonetaryTotal: IXMLMonetaryTotalType_cac;
    function Get_InvoiceLine: IXMLInvoiceLineType_cacList;
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

{ TXMLInvoiceTypeCodeType_cbc }

  TXMLInvoiceTypeCodeType_cbc = class(TXMLNode, IXMLInvoiceTypeCodeType_cbc)
  protected
    { IXMLInvoiceTypeCodeType_cbc }
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

{ TXMLDocumentCurrencyCodeType_cbc }

  TXMLDocumentCurrencyCodeType_cbc = class(TXMLNode, IXMLDocumentCurrencyCodeType_cbc)
  protected
    { IXMLDocumentCurrencyCodeType_cbc }
  end;

{ TXMLTaxCurrencyCodeType_cbc }

  TXMLTaxCurrencyCodeType_cbc = class(TXMLNode, IXMLTaxCurrencyCodeType_cbc)
  protected
    { IXMLTaxCurrencyCodeType_cbc }
  end;

{ TXMLPricingCurrencyCodeType_cbc }

  TXMLPricingCurrencyCodeType_cbc = class(TXMLNode, IXMLPricingCurrencyCodeType_cbc)
  protected
    { IXMLPricingCurrencyCodeType_cbc }
  end;

{ TXMLPaymentCurrencyCodeType_cbc }

  TXMLPaymentCurrencyCodeType_cbc = class(TXMLNode, IXMLPaymentCurrencyCodeType_cbc)
  protected
    { IXMLPaymentCurrencyCodeType_cbc }
  end;

{ TXMLPaymentAlternativeCurrencyCodeType_cbc }

  TXMLPaymentAlternativeCurrencyCodeType_cbc = class(TXMLNode, IXMLPaymentAlternativeCurrencyCodeType_cbc)
  protected
    { IXMLPaymentAlternativeCurrencyCodeType_cbc }
  end;

{ TXMLAccountingCostType_cbc }

  TXMLAccountingCostType_cbc = class(TXMLNode, IXMLAccountingCostType_cbc)
  protected
    { IXMLAccountingCostType_cbc }
  end;

{ TXMLLineCountNumericType_cbc }

  TXMLLineCountNumericType_cbc = class(TXMLNode, IXMLLineCountNumericType_cbc)
  protected
    { IXMLLineCountNumericType_cbc }
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

{ TXMLBillingReferenceType_cac }

  TXMLBillingReferenceType_cac = class(TXMLNode, IXMLBillingReferenceType_cac)
  private
    FBillingReferenceLine: IXMLBillingReferenceLineType_cacList;
  protected
    { IXMLBillingReferenceType_cac }
    function Get_InvoiceDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_SelfBilledInvoiceDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_CreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_SelfBilledCreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_DebitNoteDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_ReminderDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cac;
    function Get_BillingReferenceLine: IXMLBillingReferenceLineType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBillingReferenceType_cacList }

  TXMLBillingReferenceType_cacList = class(TXMLNodeCollection, IXMLBillingReferenceType_cacList)
  protected
    { IXMLBillingReferenceType_cacList }
    function Add: IXMLBillingReferenceType_cac;
    function Insert(const Index: Integer): IXMLBillingReferenceType_cac;

    function Get_Item(Index: Integer): IXMLBillingReferenceType_cac;
  end;

{ TXMLBillingReferenceLineType_cac }

  TXMLBillingReferenceLineType_cac = class(TXMLNode, IXMLBillingReferenceLineType_cac)
  private
    FAllowanceCharge: IXMLAllowanceChargeType_cacList;
  protected
    { IXMLBillingReferenceLineType_cac }
    function Get_ID: IXMLIDType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBillingReferenceLineType_cacList }

  TXMLBillingReferenceLineType_cacList = class(TXMLNodeCollection, IXMLBillingReferenceLineType_cacList)
  protected
    { IXMLBillingReferenceLineType_cacList }
    function Add: IXMLBillingReferenceLineType_cac;
    function Insert(const Index: Integer): IXMLBillingReferenceLineType_cac;

    function Get_Item(Index: Integer): IXMLBillingReferenceLineType_cac;
  end;

{ TXMLAmountType_cbc }

  TXMLAmountType_cbc = class(TXMLNode, IXMLAmountType_cbc)
  protected
    { IXMLAmountType_cbc }
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

{ TXMLQuantityType_cbc }

  TXMLQuantityType_cbc = class(TXMLNode, IXMLQuantityType_cbc)
  protected
    { IXMLQuantityType_cbc }
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

{ TXMLPaymentMeansType_cac }

  TXMLPaymentMeansType_cac = class(TXMLNode, IXMLPaymentMeansType_cac)
  protected
    { IXMLPaymentMeansType_cac }
    function Get_PaymentMeansCode: IXMLPaymentMeansCodeType_cbc;
    function Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
    function Get_PaymentChannelCode: IXMLPaymentChannelCodeType_cbc;
    function Get_InstructionNote: IXMLInstructionNoteType_cbc;
    function Get_PayerFinancialAccount: IXMLFinancialAccountType_cac;
    function Get_PayeeFinancialAccount: IXMLFinancialAccountType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentMeansType_cacList }

  TXMLPaymentMeansType_cacList = class(TXMLNodeCollection, IXMLPaymentMeansType_cacList)
  protected
    { IXMLPaymentMeansType_cacList }
    function Add: IXMLPaymentMeansType_cac;
    function Insert(const Index: Integer): IXMLPaymentMeansType_cac;

    function Get_Item(Index: Integer): IXMLPaymentMeansType_cac;
  end;

{ TXMLPaymentMeansCodeType_cbc }

  TXMLPaymentMeansCodeType_cbc = class(TXMLNode, IXMLPaymentMeansCodeType_cbc)
  protected
    { IXMLPaymentMeansCodeType_cbc }
  end;

{ TXMLPaymentDueDateType_cbc }

  TXMLPaymentDueDateType_cbc = class(TXMLNode, IXMLPaymentDueDateType_cbc)
  protected
    { IXMLPaymentDueDateType_cbc }
  end;

{ TXMLPaymentChannelCodeType_cbc }

  TXMLPaymentChannelCodeType_cbc = class(TXMLNode, IXMLPaymentChannelCodeType_cbc)
  protected
    { IXMLPaymentChannelCodeType_cbc }
  end;

{ TXMLInstructionNoteType_cbc }

  TXMLInstructionNoteType_cbc = class(TXMLNode, IXMLInstructionNoteType_cbc)
  protected
    { IXMLInstructionNoteType_cbc }
  end;

{ TXMLPaymentTermsType_cac }

  TXMLPaymentTermsType_cac = class(TXMLNode, IXMLPaymentTermsType_cac)
  protected
    { IXMLPaymentTermsType_cac }
    function Get_Note: IXMLNoteType_cbc;
    function Get_PenaltySurchargePercent: IXMLPenaltySurchargePercentType_cbc;
    function Get_Amount: IXMLAmountType_cbc;
    function Get_PenaltyAmount: IXMLPenaltyAmountType_cbc;
    function Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
    function Get_SettlementPeriod: IXMLPeriodType_cac;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPenaltySurchargePercentType_cbc }

  TXMLPenaltySurchargePercentType_cbc = class(TXMLNode, IXMLPenaltySurchargePercentType_cbc)
  protected
    { IXMLPenaltySurchargePercentType_cbc }
  end;

{ TXMLPenaltyAmountType_cbc }

  TXMLPenaltyAmountType_cbc = class(TXMLNode, IXMLPenaltyAmountType_cbc)
  protected
    { IXMLPenaltyAmountType_cbc }
  end;

{ TXMLExchangeRateType_cac }

  TXMLExchangeRateType_cac = class(TXMLNode, IXMLExchangeRateType_cac)
  protected
    { IXMLExchangeRateType_cac }
    function Get_SourceCurrencyCode: IXMLSourceCurrencyCodeType_cbc;
    function Get_TargetCurrencyCode: IXMLTargetCurrencyCodeType_cbc;
    function Get_CalculationRate: IXMLCalculationRateType_cbc;
    function Get_Date: IXMLDateType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSourceCurrencyCodeType_cbc }

  TXMLSourceCurrencyCodeType_cbc = class(TXMLNode, IXMLSourceCurrencyCodeType_cbc)
  protected
    { IXMLSourceCurrencyCodeType_cbc }
  end;

{ TXMLTargetCurrencyCodeType_cbc }

  TXMLTargetCurrencyCodeType_cbc = class(TXMLNode, IXMLTargetCurrencyCodeType_cbc)
  protected
    { IXMLTargetCurrencyCodeType_cbc }
  end;

{ TXMLCalculationRateType_cbc }

  TXMLCalculationRateType_cbc = class(TXMLNode, IXMLCalculationRateType_cbc)
  protected
    { IXMLCalculationRateType_cbc }
  end;

{ TXMLDateType_cbc }

  TXMLDateType_cbc = class(TXMLNode, IXMLDateType_cbc)
  protected
    { IXMLDateType_cbc }
  end;

{ TXMLMonetaryTotalType_cac }

  TXMLMonetaryTotalType_cac = class(TXMLNode, IXMLMonetaryTotalType_cac)
  protected
    { IXMLMonetaryTotalType_cac }
    function Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
    function Get_TaxExclusiveAmount: IXMLTaxExclusiveAmountType_cbc;
    function Get_TaxInclusiveAmount: IXMLTaxInclusiveAmountType_cbc;
    function Get_AllowanceTotalAmount: IXMLAllowanceTotalAmountType_cbc;
    function Get_ChargeTotalAmount: IXMLChargeTotalAmountType_cbc;
    function Get_PayableRoundingAmount: IXMLPayableRoundingAmountType_cbc;
    function Get_PayableAmount: IXMLPayableAmountType_cbc;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxExclusiveAmountType_cbc }

  TXMLTaxExclusiveAmountType_cbc = class(TXMLNode, IXMLTaxExclusiveAmountType_cbc)
  protected
    { IXMLTaxExclusiveAmountType_cbc }
  end;

{ TXMLTaxInclusiveAmountType_cbc }

  TXMLTaxInclusiveAmountType_cbc = class(TXMLNode, IXMLTaxInclusiveAmountType_cbc)
  protected
    { IXMLTaxInclusiveAmountType_cbc }
  end;

{ TXMLAllowanceTotalAmountType_cbc }

  TXMLAllowanceTotalAmountType_cbc = class(TXMLNode, IXMLAllowanceTotalAmountType_cbc)
  protected
    { IXMLAllowanceTotalAmountType_cbc }
  end;

{ TXMLChargeTotalAmountType_cbc }

  TXMLChargeTotalAmountType_cbc = class(TXMLNode, IXMLChargeTotalAmountType_cbc)
  protected
    { IXMLChargeTotalAmountType_cbc }
  end;

{ TXMLPayableRoundingAmountType_cbc }

  TXMLPayableRoundingAmountType_cbc = class(TXMLNode, IXMLPayableRoundingAmountType_cbc)
  protected
    { IXMLPayableRoundingAmountType_cbc }
  end;

{ TXMLPayableAmountType_cbc }

  TXMLPayableAmountType_cbc = class(TXMLNode, IXMLPayableAmountType_cbc)
  protected
    { IXMLPayableAmountType_cbc }
  end;

{ Global Functions }

function GetInvoice(Doc: IXMLDocument): IXMLInvoiceType;
function LoadInvoice(const FileName: string): IXMLInvoiceType;
function NewInvoice: IXMLInvoiceType;

const
  TargetNamespace = 'urn:oasis:names:specification:ubl:schema:xsd:Invoice-2';
  NS_cbc = 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2';
  NS_cac = 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2';
  NS_ext = 'urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2';

implementation

{ Global Functions }

function GetInvoice(Doc: IXMLDocument): IXMLInvoiceType;
begin
  Result := Doc.GetDocBinding('Invoice', TXMLInvoiceType, TargetNamespace) as IXMLInvoiceType;
end;

function LoadInvoice(const FileName: string): IXMLInvoiceType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Invoice', TXMLInvoiceType, TargetNamespace) as IXMLInvoiceType;
end;

function NewInvoice: IXMLInvoiceType;
begin
  Result := NewXMLDocument.GetDocBinding('Invoice', TXMLInvoiceType, TargetNamespace) as IXMLInvoiceType;
end;

{ TXMLInvoiceType }

procedure TXMLInvoiceType.AfterConstruction;
begin
  DeclareNamespace('cbc', NS_cbc);
  DeclareNamespace('cac', NS_cac);
  DeclareNamespace('ext', NS_ext);
  RegisterChildNode('UBLExtensions', TXMLUBLExtensionsType_ext, NS_ext);
  RegisterChildNode('UBLVersionID', TXMLUBLVersionIDType_cbc, NS_cbc);
  RegisterChildNode('CustomizationID', TXMLCustomizationIDType_cbc, NS_cbc);
  RegisterChildNode('ProfileID', TXMLProfileIDType_cbc, NS_cbc);
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('CopyIndicator', TXMLCopyIndicatorType_cbc, NS_cbc);
  RegisterChildNode('UUID', TXMLUUIDType_cbc, NS_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc, NS_cbc);
  RegisterChildNode('IssueTime', TXMLIssueTimeType_cbc, NS_cbc);
  RegisterChildNode('InvoiceTypeCode', TXMLInvoiceTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc, NS_cbc);
  RegisterChildNode('DocumentCurrencyCode', TXMLDocumentCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('TaxCurrencyCode', TXMLTaxCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('PricingCurrencyCode', TXMLPricingCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('PaymentCurrencyCode', TXMLPaymentCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('PaymentAlternativeCurrencyCode', TXMLPaymentAlternativeCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('AccountingCost', TXMLAccountingCostType_cbc, NS_cbc);
  RegisterChildNode('LineCountNumeric', TXMLLineCountNumericType_cbc, NS_cbc);
  RegisterChildNode('InvoicePeriod', TXMLPeriodType_cac);
  RegisterChildNode('OrderReference', TXMLOrderReferenceType_cac, NS_cac);
  RegisterChildNode('cac:BillingReference', TXMLBillingReferenceType_cac, NS_cac);
  RegisterChildNode('DespatchDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('ReceiptDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('OriginatorDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('ContractDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('AdditionalDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('Signature', TXMLSignatureType_cac, NS_cac);
  RegisterChildNode('AccountingSupplierParty', TXMLSupplierPartyType_cac, NS_cac);
  RegisterChildNode('AccountingCustomerParty', TXMLCustomerPartyType_cac, NS_cac);
  RegisterChildNode('BuyerCustomerParty', TXMLCustomerPartyType_cac, NS_cac);
  RegisterChildNode('SellerSupplierParty', TXMLSupplierPartyType_cac, NS_cac);
  RegisterChildNode('TaxRepresentativeParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('Delivery', TXMLDeliveryType_cac, NS_cac);
  RegisterChildNode('PaymentMeans', TXMLPaymentMeansType_cac, NS_cac);
  RegisterChildNode('PaymentTerms', TXMLPaymentTermsType_cac, NS_cac);
  RegisterChildNode('AllowanceCharge', TXMLAllowanceChargeType_cac, NS_cac);
  RegisterChildNode('TaxExchangeRate', TXMLExchangeRateType_cac, NS_cac);
  RegisterChildNode('PricingExchangeRate', TXMLExchangeRateType_cac, NS_cac);
  RegisterChildNode('PaymentExchangeRate', TXMLExchangeRateType_cac, NS_cac);
  RegisterChildNode('PaymentAlternativeExchangeRate', TXMLExchangeRateType_cac, NS_cac);
  RegisterChildNode('TaxTotal', TXMLTaxTotalType_cac, NS_cac);
  RegisterChildNode('WithholdingTaxTotal', TXMLTaxTotalType_cac, NS_cac);
  RegisterChildNode('LegalMonetaryTotal', TXMLMonetaryTotalType_cac, NS_cac);
  RegisterChildNode('InvoiceLine', TXMLInvoiceLineType_cac, NS_cac);
  FNote := CreateCollection(TXMLNoteType_cbcList, IXMLNoteType_cbc, 'cbc:Note', NS_cbc) as IXMLNoteType_cbcList;
  FBillingReference := CreateCollection(TXMLBillingReferenceType_cacList, IXMLBillingReferenceType_cac, 'cac:BillingReference', NS_cac) as IXMLBillingReferenceType_cacList;
  FDespatchDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'cac:DespatchDocumentReference', NS_cac) as IXMLDocumentReferenceType_cacList;
  FReceiptDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'cac:ReceiptDocumentReference', NS_cac) as IXMLDocumentReferenceType_cacList;
  FOriginatorDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'cac:OriginatorDocumentReference', NS_cac) as IXMLDocumentReferenceType_cacList;
  FContractDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'cac:ContractDocumentReference', NS_cac) as IXMLDocumentReferenceType_cacList;
  FAdditionalDocumentReference := CreateCollection(TXMLDocumentReferenceType_cacList, IXMLDocumentReferenceType_cac, 'cac:AdditionalDocumentReference', NS_cac) as IXMLDocumentReferenceType_cacList;
  FSignature := CreateCollection(TXMLSignatureType_cacList, IXMLSignatureType_cac, 'cac:Signature', NS_cac) as IXMLSignatureType_cacList;
  FDelivery := CreateCollection(TXMLDeliveryType_cacList, IXMLDeliveryType_cac, 'cac:Delivery', NS_cac) as IXMLDeliveryType_cacList;
  FPaymentMeans := CreateCollection(TXMLPaymentMeansType_cacList, IXMLPaymentMeansType_cac, 'cac:PaymentMeans', NS_cac) as IXMLPaymentMeansType_cacList;
  FAllowanceCharge := CreateCollection(TXMLAllowanceChargeType_cacList, IXMLAllowanceChargeType_cac, 'cac:AllowanceCharge', NS_cac) as IXMLAllowanceChargeType_cacList;
  FTaxTotal := CreateCollection(TXMLTaxTotalType_cacList, IXMLTaxTotalType_cac, 'cac:TaxTotal', NS_cac) as IXMLTaxTotalType_cacList;
  FWithholdingTaxTotal := CreateCollection(TXMLTaxTotalType_cacList, IXMLTaxTotalType_cac, 'cac:WithholdingTaxTotal', NS_cac) as IXMLTaxTotalType_cacList;
  FInvoiceLine := CreateCollection(TXMLInvoiceLineType_cacList, IXMLInvoiceLineType_cac, 'cac:InvoiceLine', NS_cac) as IXMLInvoiceLineType_cacList;
  inherited;
end;

function TXMLInvoiceType.Get_UBLExtensions: IXMLUBLExtensionsType_ext;
begin
  Result := ChildNodes['ext:UBLExtensions'] as IXMLUBLExtensionsType_ext;
end;

function TXMLInvoiceType.Get_UBLVersionID: IXMLUBLVersionIDType_cbc;
begin
  Result := ChildNodes['cbc:UBLVersionID'] as IXMLUBLVersionIDType_cbc;
end;

function TXMLInvoiceType.Get_CustomizationID: IXMLCustomizationIDType_cbc;
begin
  Result := ChildNodes['cbc:CustomizationID'] as IXMLCustomizationIDType_cbc;
end;

function TXMLInvoiceType.Get_ProfileID: IXMLProfileIDType_cbc;
begin
  Result := ChildNodes['cbc:ProfileID'] as IXMLProfileIDType_cbc;
end;

function TXMLInvoiceType.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLInvoiceType.Get_CopyIndicator: IXMLCopyIndicatorType_cbc;
begin
  Result := ChildNodes['cbc:CopyIndicator'] as IXMLCopyIndicatorType_cbc;
end;

function TXMLInvoiceType.Get_UUID: IXMLUUIDType_cbc;
begin
  Result := ChildNodes['cbc:UUID'] as IXMLUUIDType_cbc;
end;

function TXMLInvoiceType.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['cbc:IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLInvoiceType.Get_IssueTime: IXMLIssueTimeType_cbc;
begin
  Result := ChildNodes['cbc:IssueTime'] as IXMLIssueTimeType_cbc;
end;

function TXMLInvoiceType.Get_InvoiceTypeCode: IXMLInvoiceTypeCodeType_cbc;
begin
  Result := ChildNodes['cbc:InvoiceTypeCode'] as IXMLInvoiceTypeCodeType_cbc;
end;

function TXMLInvoiceType.Get_Note: IXMLNoteType_cbcList;
begin
  Result := FNote;
end;

function TXMLInvoiceType.Get_DocumentCurrencyCode: IXMLDocumentCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:DocumentCurrencyCode'] as IXMLDocumentCurrencyCodeType_cbc;
end;

function TXMLInvoiceType.Get_TaxCurrencyCode: IXMLTaxCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:TaxCurrencyCode'] as IXMLTaxCurrencyCodeType_cbc;
end;

function TXMLInvoiceType.Get_PricingCurrencyCode: IXMLPricingCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:PricingCurrencyCode'] as IXMLPricingCurrencyCodeType_cbc;
end;

function TXMLInvoiceType.Get_PaymentCurrencyCode: IXMLPaymentCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:PaymentCurrencyCode'] as IXMLPaymentCurrencyCodeType_cbc;
end;

function TXMLInvoiceType.Get_PaymentAlternativeCurrencyCode: IXMLPaymentAlternativeCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:PaymentAlternativeCurrencyCode'] as IXMLPaymentAlternativeCurrencyCodeType_cbc;
end;

function TXMLInvoiceType.Get_AccountingCost: IXMLAccountingCostType_cbc;
begin
  Result := ChildNodes['cbc:AccountingCost'] as IXMLAccountingCostType_cbc;
end;

function TXMLInvoiceType.Get_LineCountNumeric: IXMLLineCountNumericType_cbc;
begin
  Result := ChildNodes['cbc:LineCountNumeric'] as IXMLLineCountNumericType_cbc;
end;

function TXMLInvoiceType.Get_InvoicePeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['cac:InvoicePeriod'] as IXMLPeriodType_cac;
end;

function TXMLInvoiceType.Get_OrderReference: IXMLOrderReferenceType_cac;
begin
  Result := ChildNodes['cac:OrderReference'] as IXMLOrderReferenceType_cac;
end;

function TXMLInvoiceType.Get_BillingReference: IXMLBillingReferenceType_cacList;
begin
  Result := FBillingReference;
end;

function TXMLInvoiceType.Get_DespatchDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FDespatchDocumentReference;
end;

function TXMLInvoiceType.Get_ReceiptDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FReceiptDocumentReference;
end;

function TXMLInvoiceType.Get_OriginatorDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FOriginatorDocumentReference;
end;

function TXMLInvoiceType.Get_ContractDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FContractDocumentReference;
end;

function TXMLInvoiceType.Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cacList;
begin
  Result := FAdditionalDocumentReference;
end;

function TXMLInvoiceType.Get_Signature: IXMLSignatureType_cacList;
begin
  Result := FSignature;
end;

function TXMLInvoiceType.Get_AccountingSupplierParty: IXMLSupplierPartyType_cac;
begin
  Result := ChildNodes['cac:AccountingSupplierParty'] as IXMLSupplierPartyType_cac;
end;

function TXMLInvoiceType.Get_AccountingCustomerParty: IXMLCustomerPartyType_cac;
begin
  Result := ChildNodes['cac:AccountingCustomerParty'] as IXMLCustomerPartyType_cac;
end;

function TXMLInvoiceType.Get_BuyerCustomerParty: IXMLCustomerPartyType_cac;
begin
  Result := ChildNodes['cac:BuyerCustomerParty'] as IXMLCustomerPartyType_cac;
end;

function TXMLInvoiceType.Get_SellerSupplierParty: IXMLSupplierPartyType_cac;
begin
  Result := ChildNodes['cac:SellerSupplierParty'] as IXMLSupplierPartyType_cac;
end;

function TXMLInvoiceType.Get_TaxRepresentativeParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['cac:TaxRepresentativeParty'] as IXMLPartyType_cac;
end;

function TXMLInvoiceType.Get_Delivery: IXMLDeliveryType_cacList;
begin
  Result := FDelivery;
end;

function TXMLInvoiceType.Get_PaymentMeans: IXMLPaymentMeansType_cacList;
begin
  Result := FPaymentMeans;
end;

function TXMLInvoiceType.Get_PaymentTerms: IXMLPaymentTermsType_cac;
begin
  Result := ChildNodes['cac:PaymentTerms'] as IXMLPaymentTermsType_cac;
end;

function TXMLInvoiceType.Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
begin
  Result := FAllowanceCharge;
end;

function TXMLInvoiceType.Get_TaxExchangeRate: IXMLExchangeRateType_cac;
begin
  Result := ChildNodes['cac:TaxExchangeRate'] as IXMLExchangeRateType_cac;
end;

function TXMLInvoiceType.Get_PricingExchangeRate: IXMLExchangeRateType_cac;
begin
  Result := ChildNodes['cac:PricingExchangeRate'] as IXMLExchangeRateType_cac;
end;

function TXMLInvoiceType.Get_PaymentExchangeRate: IXMLExchangeRateType_cac;
begin
  Result := ChildNodes['cac:PaymentExchangeRate'] as IXMLExchangeRateType_cac;
end;

function TXMLInvoiceType.Get_PaymentAlternativeExchangeRate: IXMLExchangeRateType_cac;
begin
  Result := ChildNodes['cac:PaymentAlternativeExchangeRate'] as IXMLExchangeRateType_cac;
end;

function TXMLInvoiceType.Get_TaxTotal: IXMLTaxTotalType_cacList;
begin
  Result := FTaxTotal;
end;

function TXMLInvoiceType.Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
begin
  Result := FWithholdingTaxTotal;
end;

function TXMLInvoiceType.Get_LegalMonetaryTotal: IXMLMonetaryTotalType_cac;
begin
  Result := ChildNodes['cac:LegalMonetaryTotal'] as IXMLMonetaryTotalType_cac;
end;

function TXMLInvoiceType.Get_InvoiceLine: IXMLInvoiceLineType_cacList;
begin
  Result := FInvoiceLine;
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

{ TXMLInvoiceTypeCodeType_cbc }

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

{ TXMLDocumentCurrencyCodeType_cbc }

{ TXMLTaxCurrencyCodeType_cbc }

{ TXMLPricingCurrencyCodeType_cbc }

{ TXMLPaymentCurrencyCodeType_cbc }

{ TXMLPaymentAlternativeCurrencyCodeType_cbc }

{ TXMLAccountingCostType_cbc }

{ TXMLLineCountNumericType_cbc }

{ TXMLPeriodType_cac }

procedure TXMLPeriodType_cac.AfterConstruction;
begin
  RegisterChildNode('StartDate', TXMLStartDateType_cbc, NS_cbc);
  RegisterChildNode('StartTime', TXMLStartTimeType_cbc, NS_cbc);
  RegisterChildNode('EndDate', TXMLEndDateType_cbc, NS_cbc);
  RegisterChildNode('EndTime', TXMLEndTimeType_cbc, NS_cbc);
  RegisterChildNode('DurationMeasure', TXMLDurationMeasureType_cbc, NS_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
  inherited;
end;

function TXMLPeriodType_cac.Get_StartDate: IXMLStartDateType_cbc;
begin
  Result := ChildNodes['cbc:StartDate'] as IXMLStartDateType_cbc;
end;

function TXMLPeriodType_cac.Get_StartTime: IXMLStartTimeType_cbc;
begin
  Result := ChildNodes['cbc:StartTime'] as IXMLStartTimeType_cbc;
end;

function TXMLPeriodType_cac.Get_EndDate: IXMLEndDateType_cbc;
begin
  Result := ChildNodes['cbc:EndDate'] as IXMLEndDateType_cbc;
end;

function TXMLPeriodType_cac.Get_EndTime: IXMLEndTimeType_cbc;
begin
  Result := ChildNodes['cbc:EndTime'] as IXMLEndTimeType_cbc;
end;

function TXMLPeriodType_cac.Get_DurationMeasure: IXMLDurationMeasureType_cbc;
begin
  Result := ChildNodes['cbc:DurationMeasure'] as IXMLDurationMeasureType_cbc;
end;

function TXMLPeriodType_cac.Get_Description: IXMLDescriptionType_cbc;
begin
  Result := ChildNodes['cbc:Description'] as IXMLDescriptionType_cbc;
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

{ TXMLOrderReferenceType_cac }

procedure TXMLOrderReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('SalesOrderID', TXMLSalesOrderIDType_cbc, NS_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc, NS_cbc);
  RegisterChildNode('OrderTypeCode', TXMLOrderTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('DocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  inherited;
end;

function TXMLOrderReferenceType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_SalesOrderID: IXMLSalesOrderIDType_cbc;
begin
  Result := ChildNodes['cbc:SalesOrderID'] as IXMLSalesOrderIDType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['cbc:IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_OrderTypeCode: IXMLOrderTypeCodeType_cbc;
begin
  Result := ChildNodes['cbc:OrderTypeCode'] as IXMLOrderTypeCodeType_cbc;
end;

function TXMLOrderReferenceType_cac.Get_DocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['cac:DocumentReference'] as IXMLDocumentReferenceType_cac;
end;

{ TXMLSalesOrderIDType_cbc }

{ TXMLOrderTypeCodeType_cbc }

{ TXMLDocumentReferenceType_cac }

procedure TXMLDocumentReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('IssueDate', TXMLIssueDateType_cbc, NS_cbc);
  RegisterChildNode('DocumentTypeCode', TXMLDocumentTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('DocumentType', TXMLDocumentTypeType_cbc, NS_cbc);
  RegisterChildNode('DocumentDescription', TXMLDocumentDescriptionType_cbc, NS_cbc);
  RegisterChildNode('Attachment', TXMLAttachmentType_cac, NS_cac);
  RegisterChildNode('ValidityPeriod', TXMLPeriodType_cac, NS_cac);
  RegisterChildNode('IssuerParty', TXMLPartyType_cac, NS_cac);
  FDocumentDescription := CreateCollection(TXMLDocumentDescriptionType_cbcList, IXMLDocumentDescriptionType_cbc, 'DocumentDescription', NS_cbc) as IXMLDocumentDescriptionType_cbcList;
  inherited;
end;

function TXMLDocumentReferenceType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_IssueDate: IXMLIssueDateType_cbc;
begin
  Result := ChildNodes['cbc:IssueDate'] as IXMLIssueDateType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentTypeCode: IXMLDocumentTypeCodeType_cbc;
begin
  Result := ChildNodes['cbc:DocumentTypeCode'] as IXMLDocumentTypeCodeType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentType: IXMLDocumentTypeType_cbc;
begin
  Result := ChildNodes['cbc:DocumentType'] as IXMLDocumentTypeType_cbc;
end;

function TXMLDocumentReferenceType_cac.Get_DocumentDescription: IXMLDocumentDescriptionType_cbcList;
begin
  Result := FDocumentDescription;
end;

function TXMLDocumentReferenceType_cac.Get_Attachment: IXMLAttachmentType_cac;
begin
  Result := ChildNodes['cac:Attachment'] as IXMLAttachmentType_cac;
end;

function TXMLDocumentReferenceType_cac.Get_ValidityPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['cac:ValidityPeriod'] as IXMLPeriodType_cac;
end;

function TXMLDocumentReferenceType_cac.Get_IssuerParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['cac:IssuerParty'] as IXMLPartyType_cac;
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
  RegisterChildNode('EmbeddedDocumentBinaryObject', TXMLEmbeddedDocumentBinaryObjectType_cbc, NS_cbc);
  RegisterChildNode('ExternalReference', TXMLExternalReferenceType_cac, NS_cac);
  inherited;
end;

function TXMLAttachmentType_cac.Get_EmbeddedDocumentBinaryObject: IXMLEmbeddedDocumentBinaryObjectType_cbc;
begin
  Result := ChildNodes['cbc:EmbeddedDocumentBinaryObject'] as IXMLEmbeddedDocumentBinaryObjectType_cbc;
end;

function TXMLAttachmentType_cac.Get_ExternalReference: IXMLExternalReferenceType_cac;
begin
  Result := ChildNodes['cac:ExternalReference'] as IXMLExternalReferenceType_cac;
end;

{ TXMLEmbeddedDocumentBinaryObjectType_cbc }

{ TXMLExternalReferenceType_cac }

procedure TXMLExternalReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('URI', TXMLURIType_cbc, NS_cbc);
  inherited;
end;

function TXMLExternalReferenceType_cac.Get_URI: IXMLURIType_cbc;
begin
  Result := ChildNodes['cbc:URI'] as IXMLURIType_cbc;
end;

{ TXMLURIType_cbc }

{ TXMLPartyType_cac }

procedure TXMLPartyType_cac.AfterConstruction;
begin
  RegisterChildNode('WebsiteURI', TXMLWebsiteURIType_cbc, NS_cbc);
  RegisterChildNode('EndpointID', TXMLEndpointIDType_cbc, NS_cbc);
  RegisterChildNode('IndustryClassificationCode', TXMLIndustryClassificationCodeType_cbc, NS_cbc);
  RegisterChildNode('PartyIdentification', TXMLPartyIdentificationType_cac, NS_cac);
  RegisterChildNode('PartyName', TXMLPartyNameType_cac, NS_cac);
  RegisterChildNode('PostalAddress', TXMLAddressType_cac, NS_cac);
  RegisterChildNode('PhysicalLocation', TXMLLocationType_cac, NS_cac);
  RegisterChildNode('PartyTaxScheme', TXMLPartyTaxSchemeType_cac, NS_cac);
  RegisterChildNode('PartyLegalEntity', TXMLPartyLegalEntityType_cac, NS_cac);
  RegisterChildNode('Contact', TXMLContactType_cac, NS_cac);
  RegisterChildNode('Person', TXMLPersonType_cac, NS_cac);
  RegisterChildNode('AgentParty', TXMLPartyType_cac, NS_cac);
  FPartyIdentification := CreateCollection(TXMLPartyIdentificationType_cacList, IXMLPartyIdentificationType_cac, 'cac:PartyIdentification', NS_cac) as IXMLPartyIdentificationType_cacList;
  FPartyLegalEntity := CreateCollection(TXMLPartyLegalEntityType_cacList, IXMLPartyLegalEntityType_cac, 'cac:PartyLegalEntity', NS_cac) as IXMLPartyLegalEntityType_cacList;
  inherited;
end;

function TXMLPartyType_cac.Get_WebsiteURI: IXMLWebsiteURIType_cbc;
begin
  Result := ChildNodes['cbc:WebsiteURI'] as IXMLWebsiteURIType_cbc;
end;

function TXMLPartyType_cac.Get_EndpointID: IXMLEndpointIDType_cbc;
begin
  Result := ChildNodes['cbc:EndpointID'] as IXMLEndpointIDType_cbc;
end;

function TXMLPartyType_cac.Get_IndustryClassificationCode: IXMLIndustryClassificationCodeType_cbc;
begin
  Result := ChildNodes['cbc:IndustryClassificationCode'] as IXMLIndustryClassificationCodeType_cbc;
end;

function TXMLPartyType_cac.Get_PartyIdentification: IXMLPartyIdentificationType_cacList;
begin
  Result := FPartyIdentification;
end;

function TXMLPartyType_cac.Get_PartyName: IXMLPartyNameType_cac;
begin
  Result := ChildNodes['cac:PartyName'] as IXMLPartyNameType_cac;
end;

function TXMLPartyType_cac.Get_PostalAddress: IXMLAddressType_cac;
begin
  Result := ChildNodes['cac:PostalAddress'] as IXMLAddressType_cac;
end;

function TXMLPartyType_cac.Get_PhysicalLocation: IXMLLocationType_cac;
begin
  Result := ChildNodes['cac:PhysicalLocation'] as IXMLLocationType_cac;
end;

function TXMLPartyType_cac.Get_PartyTaxScheme: IXMLPartyTaxSchemeType_cac;
begin
  Result := ChildNodes['cac:PartyTaxScheme'] as IXMLPartyTaxSchemeType_cac;
end;

function TXMLPartyType_cac.Get_PartyLegalEntity: IXMLPartyLegalEntityType_cacList;
begin
  Result := FPartyLegalEntity;
end;

function TXMLPartyType_cac.Get_Contact: IXMLContactType_cac;
begin
  Result := ChildNodes['cac:Contact'] as IXMLContactType_cac;
end;

function TXMLPartyType_cac.Get_Person: IXMLPersonType_cac;
begin
  Result := ChildNodes['cac:Person'] as IXMLPersonType_cac;
end;

function TXMLPartyType_cac.Get_AgentParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['cac:AgentParty'] as IXMLPartyType_cac;
end;

{ TXMLWebsiteURIType_cbc }

{ TXMLEndpointIDType_cbc }

{ TXMLIndustryClassificationCodeType_cbc }

{ TXMLPartyIdentificationType_cac }

procedure TXMLPartyIdentificationType_cac.AfterConstruction;
begin
  RegisterChildNode('cbc:ID', TXMLIDType_cbc, NS_cbc);
//  RegisterChildNode('ID', TXMLIDType_cbc);
  inherited;
end;

function TXMLPartyIdentificationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  inherited;
end;

function TXMLPartyNameType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

{ TXMLNameType_cbc }

{ TXMLAddressType_cac }

procedure TXMLAddressType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Postbox', TXMLPostboxType_cbc, NS_cbc);
  RegisterChildNode('Room', TXMLRoomType_cbc, NS_cbc);
  RegisterChildNode('StreetName', TXMLStreetNameType_cbc, NS_cbc);
  RegisterChildNode('BlockName', TXMLBlockNameType_cbc, NS_cbc);
  RegisterChildNode('BuildingName', TXMLBuildingNameType_cbc, NS_cbc);
  RegisterChildNode('BuildingNumber', TXMLBuildingNumberType_cbc, NS_cbc);
  RegisterChildNode('CitySubdivisionName', TXMLCitySubdivisionNameType_cbc, NS_cbc);
  RegisterChildNode('CityName', TXMLCityNameType_cbc, NS_cbc);
  RegisterChildNode('PostalZone', TXMLPostalZoneType_cbc, NS_cbc);
  RegisterChildNode('Region', TXMLRegionType_cbc, NS_cbc);
  RegisterChildNode('District', TXMLDistrictType_cbc, NS_cbc);
  RegisterChildNode('Country', TXMLCountryType_cac, NS_cac);
  inherited;
end;

function TXMLAddressType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLAddressType_cac.Get_Postbox: IXMLPostboxType_cbc;
begin
  Result := ChildNodes['cbc:Postbox'] as IXMLPostboxType_cbc;
end;

function TXMLAddressType_cac.Get_Room: IXMLRoomType_cbc;
begin
  Result := ChildNodes['cbc:Room'] as IXMLRoomType_cbc;
end;

function TXMLAddressType_cac.Get_StreetName: IXMLStreetNameType_cbc;
begin
  Result := ChildNodes['cbc:StreetName'] as IXMLStreetNameType_cbc;
end;

function TXMLAddressType_cac.Get_BlockName: IXMLBlockNameType_cbc;
begin
  Result := ChildNodes['cbc:BlockName'] as IXMLBlockNameType_cbc;
end;

function TXMLAddressType_cac.Get_BuildingName: IXMLBuildingNameType_cbc;
begin
  Result := ChildNodes['cbc:BuildingName'] as IXMLBuildingNameType_cbc;
end;

function TXMLAddressType_cac.Get_BuildingNumber: IXMLBuildingNumberType_cbc;
begin
  Result := ChildNodes['cbc:BuildingNumber'] as IXMLBuildingNumberType_cbc;
end;

function TXMLAddressType_cac.Get_CitySubdivisionName: IXMLCitySubdivisionNameType_cbc;
begin
  Result := ChildNodes['cbc:CitySubdivisionName'] as IXMLCitySubdivisionNameType_cbc;
end;

function TXMLAddressType_cac.Get_CityName: IXMLCityNameType_cbc;
begin
  Result := ChildNodes['cbc:CityName'] as IXMLCityNameType_cbc;
end;

function TXMLAddressType_cac.Get_PostalZone: IXMLPostalZoneType_cbc;
begin
  Result := ChildNodes['cbc:PostalZone'] as IXMLPostalZoneType_cbc;
end;

function TXMLAddressType_cac.Get_Region: IXMLRegionType_cbc;
begin
  Result := ChildNodes['cbc:Region'] as IXMLRegionType_cbc;
end;

function TXMLAddressType_cac.Get_District: IXMLDistrictType_cbc;
begin
  Result := ChildNodes['cbc:District'] as IXMLDistrictType_cbc;
end;

function TXMLAddressType_cac.Get_Country: IXMLCountryType_cac;
begin
  Result := ChildNodes['cac:Country'] as IXMLCountryType_cac;
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
  RegisterChildNode('IdentificationCode', TXMLIdentificationCodeType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  inherited;
end;

function TXMLCountryType_cac.Get_IdentificationCode: IXMLIdentificationCodeType_cbc;
begin
  Result := ChildNodes['cbc:IdentificationCode'] as IXMLIdentificationCodeType_cbc;
end;

function TXMLCountryType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

{ TXMLIdentificationCodeType_cbc }

{ TXMLLocationType_cac }

procedure TXMLLocationType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Address', TXMLAddressType_cac, NS_cac);
  inherited;
end;

function TXMLLocationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLLocationType_cac.Get_Address: IXMLAddressType_cac;
begin
  Result := ChildNodes['Address'] as IXMLAddressType_cac;
end;

{ TXMLPartyTaxSchemeType_cac }

procedure TXMLPartyTaxSchemeType_cac.AfterConstruction;
begin
  RegisterChildNode('RegistrationName', TXMLRegistrationNameType_cbc, NS_cbc);
  RegisterChildNode('CompanyID', TXMLCompanyIDType_cbc, NS_cbc);
  RegisterChildNode('TaxScheme', TXMLTaxSchemeType_cac, NS_cac);
  inherited;
end;

function TXMLPartyTaxSchemeType_cac.Get_RegistrationName: IXMLRegistrationNameType_cbc;
begin
  Result := ChildNodes['cbc:RegistrationName'] as IXMLRegistrationNameType_cbc;
end;

function TXMLPartyTaxSchemeType_cac.Get_CompanyID: IXMLCompanyIDType_cbc;
begin
  Result := ChildNodes['cbc:CompanyID'] as IXMLCompanyIDType_cbc;
end;

function TXMLPartyTaxSchemeType_cac.Get_TaxScheme: IXMLTaxSchemeType_cac;
begin
  Result := ChildNodes['cac:TaxScheme'] as IXMLTaxSchemeType_cac;
end;

{ TXMLRegistrationNameType_cbc }

{ TXMLCompanyIDType_cbc }

{ TXMLTaxSchemeType_cac }

procedure TXMLTaxSchemeType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('TaxTypeCode', TXMLTaxTypeCodeType_cbc, NS_cbc);
  inherited;
end;

function TXMLTaxSchemeType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLTaxSchemeType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

function TXMLTaxSchemeType_cac.Get_TaxTypeCode: IXMLTaxTypeCodeType_cbc;
begin
  Result := ChildNodes['cbc:TaxTypeCode'] as IXMLTaxTypeCodeType_cbc;
end;

{ TXMLTaxTypeCodeType_cbc }

{ TXMLPartyLegalEntityType_cac }

procedure TXMLPartyLegalEntityType_cac.AfterConstruction;
begin
  RegisterChildNode('RegistrationName', TXMLRegistrationNameType_cbc, NS_cbc);
  RegisterChildNode('CompanyID', TXMLCompanyIDType_cbc, NS_cbc);
  RegisterChildNode('RegistrationDate', TXMLRegistrationDateType_cbc, NS_cbc);
  RegisterChildNode('SoleProprietorshipIndicator', TXMLSoleProprietorshipIndicatorType_cbc, NS_cbc);
  RegisterChildNode('CorporateStockAmount', TXMLCorporateStockAmountType_cbc, NS_cbc);
  RegisterChildNode('FullyPaidSharesIndicator', TXMLFullyPaidSharesIndicatorType_cbc, NS_cbc);
  RegisterChildNode('CorporateRegistrationScheme', TXMLCorporateRegistrationSchemeType_cac, NS_cac);
  RegisterChildNode('HeadOfficeParty', TXMLPartyType_cac, NS_cac);
  inherited;
end;

function TXMLPartyLegalEntityType_cac.Get_RegistrationName: IXMLRegistrationNameType_cbc;
begin
  Result := ChildNodes['cbc.RegistrationName'] as IXMLRegistrationNameType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CompanyID: IXMLCompanyIDType_cbc;
begin
  Result := ChildNodes['cbc:CompanyID'] as IXMLCompanyIDType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_RegistrationDate: IXMLRegistrationDateType_cbc;
begin
  Result := ChildNodes['cbc.RegistrationDate'] as IXMLRegistrationDateType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_SoleProprietorshipIndicator: IXMLSoleProprietorshipIndicatorType_cbc;
begin
  Result := ChildNodes['cbc:SoleProprietorshipIndicator'] as IXMLSoleProprietorshipIndicatorType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CorporateStockAmount: IXMLCorporateStockAmountType_cbc;
begin
  Result := ChildNodes['cbc.CorporateStockAmount'] as IXMLCorporateStockAmountType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_FullyPaidSharesIndicator: IXMLFullyPaidSharesIndicatorType_cbc;
begin
  Result := ChildNodes['cbc:FullyPaidSharesIndicator'] as IXMLFullyPaidSharesIndicatorType_cbc;
end;

function TXMLPartyLegalEntityType_cac.Get_CorporateRegistrationScheme: IXMLCorporateRegistrationSchemeType_cac;
begin
  Result := ChildNodes['cac:CorporateRegistrationScheme'] as IXMLCorporateRegistrationSchemeType_cac;
end;

function TXMLPartyLegalEntityType_cac.Get_HeadOfficeParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['cac:HeadOfficeParty'] as IXMLPartyType_cac;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('CorporateRegistrationTypeCode', TXMLCorporateRegistrationTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('JurisdictionRegionAddress', TXMLAddressType_cac, NS_cac);
  FJurisdictionRegionAddress := CreateCollection(TXMLAddressType_cacList, IXMLAddressType_cac, 'JurisdictionRegionAddress') as IXMLAddressType_cacList;
  inherited;
end;

function TXMLCorporateRegistrationSchemeType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('Telephone', TXMLTelephoneType_cbc, NS_cbc);
  RegisterChildNode('Telefax', TXMLTelefaxType_cbc, NS_cbc);
  RegisterChildNode('ElectronicMail', TXMLElectronicMailType_cbc, NS_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc, NS_cbc);
  RegisterChildNode('OtherCommunication', TXMLCommunicationType_cac, NS_cac);
  FOtherCommunication := CreateCollection(TXMLCommunicationType_cacList, IXMLCommunicationType_cac, 'OtherCommunication') as IXMLCommunicationType_cacList;
  inherited;
end;

function TXMLContactType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLContactType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

function TXMLContactType_cac.Get_Telephone: IXMLTelephoneType_cbc;
begin
  Result := ChildNodes['cbc:Telephone'] as IXMLTelephoneType_cbc;
end;

function TXMLContactType_cac.Get_Telefax: IXMLTelefaxType_cbc;
begin
  Result := ChildNodes['cbc:Telefax'] as IXMLTelefaxType_cbc;
end;

function TXMLContactType_cac.Get_ElectronicMail: IXMLElectronicMailType_cbc;
begin
  Result := ChildNodes['cbc:ElectronicMail'] as IXMLElectronicMailType_cbc;
end;

function TXMLContactType_cac.Get_Note: IXMLNoteType_cbc;
begin
  Result := ChildNodes['cbc:Note'] as IXMLNoteType_cbc;
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
  RegisterChildNode('ChannelCode', TXMLChannelCodeType_cbc, NS_cbc);
  RegisterChildNode('Channel', TXMLChannelType_cbc, NS_cbc);
  RegisterChildNode('Value', TXMLValueType_cbc, NS_cbc);
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
  RegisterChildNode('FirstName', TXMLFirstNameType_cbc, NS_cbc);
  RegisterChildNode('FamilyName', TXMLFamilyNameType_cbc, NS_cbc);
  RegisterChildNode('Title', TXMLTitleType_cbc, NS_cbc);
  RegisterChildNode('MiddleName', TXMLMiddleNameType_cbc, NS_cbc);
  RegisterChildNode('NameSuffix', TXMLNameSuffixType_cbc, NS_cbc);
  RegisterChildNode('NationalityID', TXMLNationalityIDType_cbc, NS_cbc);
  RegisterChildNode('FinancialAccount', TXMLFinancialAccountType_cac, NS_cac);
  RegisterChildNode('IdentityDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  inherited;
end;

function TXMLPersonType_cac.Get_FirstName: IXMLFirstNameType_cbc;
begin
  Result := ChildNodes['cbc:FirstName'] as IXMLFirstNameType_cbc;
end;

function TXMLPersonType_cac.Get_FamilyName: IXMLFamilyNameType_cbc;
begin
  Result := ChildNodes['cbc:FamilyName'] as IXMLFamilyNameType_cbc;
end;

function TXMLPersonType_cac.Get_Title: IXMLTitleType_cbc;
begin
  Result := ChildNodes['cbc:Title'] as IXMLTitleType_cbc;
end;

function TXMLPersonType_cac.Get_MiddleName: IXMLMiddleNameType_cbc;
begin
  Result := ChildNodes['cbc:MiddleName'] as IXMLMiddleNameType_cbc;
end;

function TXMLPersonType_cac.Get_NameSuffix: IXMLNameSuffixType_cbc;
begin
  Result := ChildNodes['cbc:NameSuffix'] as IXMLNameSuffixType_cbc;
end;

function TXMLPersonType_cac.Get_NationalityID: IXMLNationalityIDType_cbc;
begin
  Result := ChildNodes['cbc:NationalityID'] as IXMLNationalityIDType_cbc;
end;

function TXMLPersonType_cac.Get_FinancialAccount: IXMLFinancialAccountType_cac;
begin
  Result := ChildNodes['cac:FinancialAccount'] as IXMLFinancialAccountType_cac;
end;

function TXMLPersonType_cac.Get_IdentityDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['cac:IdentityDocumentReference'] as IXMLDocumentReferenceType_cac;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('CurrencyCode', TXMLCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('PaymentNote', TXMLPaymentNoteType_cbc, NS_cbc);
  RegisterChildNode('FinancialInstitutionBranch', TXMLBranchType_cac, NS_cac);
  inherited;
end;

function TXMLFinancialAccountType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('FinancialInstitution', TXMLFinancialInstitutionType_cac, NS_cac);
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
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  inherited;
end;

function TXMLFinancialInstitutionType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['Name'] as IXMLNameType_cbc;
end;

{ TXMLBillingReferenceType_cac }

procedure TXMLBillingReferenceType_cac.AfterConstruction;
begin
  RegisterChildNode('InvoiceDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('SelfBilledInvoiceDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('CreditNoteDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('SelfBilledCreditNoteDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('DebitNoteDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('ReminderDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('AdditionalDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('BillingReferenceLine', TXMLBillingReferenceLineType_cac, NS_cac);
  FBillingReferenceLine := CreateCollection(TXMLBillingReferenceLineType_cacList, IXMLBillingReferenceLineType_cac, 'BillingReferenceLine') as IXMLBillingReferenceLineType_cacList;
  inherited;
end;

function TXMLBillingReferenceType_cac.Get_InvoiceDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['InvoiceDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_SelfBilledInvoiceDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['SelfBilledInvoiceDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_CreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['CreditNoteDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_SelfBilledCreditNoteDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['SelfBilledCreditNoteDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_DebitNoteDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['DebitNoteDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_ReminderDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['ReminderDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_AdditionalDocumentReference: IXMLDocumentReferenceType_cac;
begin
  Result := ChildNodes['cac:AdditionalDocumentReference'] as IXMLDocumentReferenceType_cac;
end;

function TXMLBillingReferenceType_cac.Get_BillingReferenceLine: IXMLBillingReferenceLineType_cacList;
begin
  Result := FBillingReferenceLine;
end;

{ TXMLBillingReferenceType_cacList }

function TXMLBillingReferenceType_cacList.Add: IXMLBillingReferenceType_cac;
begin
  Result := AddItem(-1) as IXMLBillingReferenceType_cac;
end;

function TXMLBillingReferenceType_cacList.Insert(const Index: Integer): IXMLBillingReferenceType_cac;
begin
  Result := AddItem(Index) as IXMLBillingReferenceType_cac;
end;

function TXMLBillingReferenceType_cacList.Get_Item(Index: Integer): IXMLBillingReferenceType_cac;
begin
  Result := List[Index] as IXMLBillingReferenceType_cac;
end;

{ TXMLBillingReferenceLineType_cac }

procedure TXMLBillingReferenceLineType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc, NS_cbc);
  RegisterChildNode('AllowanceCharge', TXMLAllowanceChargeType_cac, NS_cac);
  FAllowanceCharge := CreateCollection(TXMLAllowanceChargeType_cacList, IXMLAllowanceChargeType_cac, 'cac:AllowanceCharge', NS_cac) as IXMLAllowanceChargeType_cacList;
  inherited;
end;

function TXMLBillingReferenceLineType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLBillingReferenceLineType_cac.Get_Amount: IXMLAmountType_cbc;
begin
  Result := ChildNodes['cbc:Amount'] as IXMLAmountType_cbc;
end;

function TXMLBillingReferenceLineType_cac.Get_AllowanceCharge: IXMLAllowanceChargeType_cacList;
begin
  Result := FAllowanceCharge;
end;

{ TXMLBillingReferenceLineType_cacList }

function TXMLBillingReferenceLineType_cacList.Add: IXMLBillingReferenceLineType_cac;
begin
  Result := AddItem(-1) as IXMLBillingReferenceLineType_cac;
end;

function TXMLBillingReferenceLineType_cacList.Insert(const Index: Integer): IXMLBillingReferenceLineType_cac;
begin
  Result := AddItem(Index) as IXMLBillingReferenceLineType_cac;
end;

function TXMLBillingReferenceLineType_cacList.Get_Item(Index: Integer): IXMLBillingReferenceLineType_cac;
begin
  Result := List[Index] as IXMLBillingReferenceLineType_cac;
end;

{ TXMLAmountType_cbc }

{ TXMLAllowanceChargeType_cac }

procedure TXMLAllowanceChargeType_cac.AfterConstruction;
begin
  RegisterChildNode('ChargeIndicator', TXMLChargeIndicatorType_cbc, NS_cbc);
  RegisterChildNode('AllowanceChargeReason', TXMLAllowanceChargeReasonType_cbc, NS_cbc);
  RegisterChildNode('MultiplierFactorNumeric', TXMLMultiplierFactorNumericType_cbc, NS_cbc);
  RegisterChildNode('SequenceNumeric', TXMLSequenceNumericType_cbc, NS_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc, NS_cbc);
  RegisterChildNode('BaseAmount', TXMLBaseAmountType_cbc, NS_cbc);
  RegisterChildNode('PerUnitAmount', TXMLPerUnitAmountType_cbc, NS_cbc);
  inherited;
end;

function TXMLAllowanceChargeType_cac.Get_ChargeIndicator: IXMLChargeIndicatorType_cbc;
begin
  Result := ChildNodes['cbc:ChargeIndicator'] as IXMLChargeIndicatorType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_AllowanceChargeReason: IXMLAllowanceChargeReasonType_cbc;
begin
  Result := ChildNodes['cbc:AllowanceChargeReason'] as IXMLAllowanceChargeReasonType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_MultiplierFactorNumeric: IXMLMultiplierFactorNumericType_cbc;
begin
  Result := ChildNodes['cbc:MultiplierFactorNumeric'] as IXMLMultiplierFactorNumericType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_SequenceNumeric: IXMLSequenceNumericType_cbc;
begin
  Result := ChildNodes['cbc:SequenceNumeric'] as IXMLSequenceNumericType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_Amount: IXMLAmountType_cbc;
begin
  Result := ChildNodes['cbc:Amount'] as IXMLAmountType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_BaseAmount: IXMLBaseAmountType_cbc;
begin
  Result := ChildNodes['cbc:BaseAmount'] as IXMLBaseAmountType_cbc;
end;

function TXMLAllowanceChargeType_cac.Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
begin
  Result := ChildNodes['cbc:PerUnitAmount'] as IXMLPerUnitAmountType_cbc;
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

{ TXMLBaseAmountType_cbc }

{ TXMLPerUnitAmountType_cbc }

{ TXMLSignatureType_cac }

procedure TXMLSignatureType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('SignatoryParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('DigitalSignatureAttachment', TXMLAttachmentType_cac, NS_cac);
  inherited;
end;

function TXMLSignatureType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLSignatureType_cac.Get_SignatoryParty: IXMLPartyType_cac;
begin
  Result := ChildNodes['cac:SignatoryParty'] as IXMLPartyType_cac;
end;

function TXMLSignatureType_cac.Get_DigitalSignatureAttachment: IXMLAttachmentType_cac;
begin
  Result := ChildNodes['cac:DigitalSignatureAttachment'] as IXMLAttachmentType_cac;
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
  RegisterChildNode('Party', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('DespatchContact', TXMLContactType_cac, NS_cac);
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
  RegisterChildNode('Party', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('DeliveryContact', TXMLContactType_cac, NS_cac);
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

{ TXMLDeliveryType_cac }

procedure TXMLDeliveryType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc, NS_cbc);
  RegisterChildNode('ActualDeliveryDate', TXMLActualDeliveryDateType_cbc, NS_cbc);
  RegisterChildNode('ActualDeliveryTime', TXMLActualDeliveryTimeType_cbc, NS_cbc);
  RegisterChildNode('LatestDeliveryDate', TXMLLatestDeliveryDateType_cbc, NS_cbc);
  RegisterChildNode('LatestDeliveryTime', TXMLLatestDeliveryTimeType_cbc, NS_cbc);
  RegisterChildNode('TrackingID', TXMLTrackingIDType_cbc, NS_cbc);
  RegisterChildNode('DeliveryAddress', TXMLAddressType_cac, NS_cac);
  RegisterChildNode('AlternativeDeliveryLocation', TXMLLocationType_cac, NS_cac);
  RegisterChildNode('EstimatedDeliveryPeriod', TXMLPeriodType_cac, NS_cac);
  RegisterChildNode('CarrierParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('DeliveryParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('Despatch', TXMLDespatchType_cac, NS_cac);
  RegisterChildNode('DeliveryTerms', TXMLDeliveryTermsType_cac, NS_cac);
  RegisterChildNode('Shipment', TXMLShipmentType_cac, NS_cac);
  FDeliveryTerms := CreateCollection(TXMLDeliveryTermsType_cacList, IXMLDeliveryTermsType_cac, 'DeliveryTerms') as IXMLDeliveryTermsType_cacList;
  inherited;
end;

function TXMLDeliveryType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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

{ TXMLQuantityType_cbc }

{ TXMLActualDeliveryDateType_cbc }

{ TXMLActualDeliveryTimeType_cbc }

{ TXMLLatestDeliveryDateType_cbc }

{ TXMLLatestDeliveryTimeType_cbc }

{ TXMLTrackingIDType_cbc }

{ TXMLDespatchType_cac }

procedure TXMLDespatchType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('ActualDespatchDate', TXMLActualDespatchDateType_cbc, NS_cbc);
  RegisterChildNode('ActualDespatchTime', TXMLActualDespatchTimeType_cbc, NS_cbc);
  RegisterChildNode('Instructions', TXMLInstructionsType_cbc, NS_cbc);
  RegisterChildNode('DespatchAddress', TXMLAddressType_cac, NS_cac);
  RegisterChildNode('DespatchParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('Contact', TXMLContactType_cac, NS_cac);
  RegisterChildNode('EstimatedDespatchPeriod', TXMLPeriodType_cac, NS_cac);
  inherited;
end;

function TXMLDespatchType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('SpecialTerms', TXMLSpecialTermsType_cbc, NS_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc, NS_cbc);
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

{ TXMLShipmentType_cac }

procedure TXMLShipmentType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('HandlingCode', TXMLHandlingCodeType_cbc, NS_cbc);
  RegisterChildNode('HandlingInstructions', TXMLHandlingInstructionsType_cbc, NS_cbc);
  RegisterChildNode('GrossWeightMeasure', TXMLGrossWeightMeasureType_cbc, NS_cbc);
  RegisterChildNode('NetWeightMeasure', TXMLNetWeightMeasureType_cbc, NS_cbc);
  RegisterChildNode('GrossVolumeMeasure', TXMLGrossVolumeMeasureType_cbc, NS_cbc);
  RegisterChildNode('NetVolumeMeasure', TXMLNetVolumeMeasureType_cbc, NS_cbc);
  RegisterChildNode('TotalGoodsItemQuantity', TXMLTotalGoodsItemQuantityType_cbc, NS_cbc);
  RegisterChildNode('TotalTransportHandlingUnitQuantity', TXMLTotalTransportHandlingUnitQuantityType_cbc, NS_cbc);
  RegisterChildNode('InsuranceValueAmount', TXMLInsuranceValueAmountType_cbc, NS_cbc);
  RegisterChildNode('DeclaredCustomsValueAmount', TXMLDeclaredCustomsValueAmountType_cbc, NS_cbc);
  RegisterChildNode('DeclaredForCarriageValueAmount', TXMLDeclaredForCarriageValueAmountType_cbc, NS_cbc);
  RegisterChildNode('DeclaredStatisticsValueAmount', TXMLDeclaredStatisticsValueAmountType_cbc, NS_cbc);
  RegisterChildNode('FreeOnBoardValueAmount', TXMLFreeOnBoardValueAmountType_cbc, NS_cbc);
  RegisterChildNode('SpecialInstructions', TXMLSpecialInstructionsType_cbc, NS_cbc);
  RegisterChildNode('GoodsItem', TXMLGoodsItemType_cac, NS_cac);
  RegisterChildNode('ShipmentStage', TXMLShipmentStageType_cac, NS_cac);
  RegisterChildNode('Delivery', TXMLDeliveryType_cac, NS_cac);
  RegisterChildNode('TransportHandlingUnit', TXMLTransportHandlingUnitType_cac, NS_cac);
  RegisterChildNode('ReturnAddress', TXMLAddressType_cac, NS_cac);
  RegisterChildNode('FirstArrivalPortLocation', TXMLLocationType_cac, NS_cac);
  RegisterChildNode('LastExitPortLocation', TXMLLocationType_cac, NS_cac);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
  RegisterChildNode('HazardousRiskIndicator', TXMLHazardousRiskIndicatorType_cbc, NS_cbc);
  RegisterChildNode('DeclaredCustomsValueAmount', TXMLDeclaredCustomsValueAmountType_cbc, NS_cbc);
  RegisterChildNode('DeclaredForCarriageValueAmount', TXMLDeclaredForCarriageValueAmountType_cbc, NS_cbc);
  RegisterChildNode('DeclaredStatisticsValueAmount', TXMLDeclaredStatisticsValueAmountType_cbc, NS_cbc);
  RegisterChildNode('FreeOnBoardValueAmount', TXMLFreeOnBoardValueAmountType_cbc, NS_cbc);
  RegisterChildNode('InsuranceValueAmount', TXMLInsuranceValueAmountType_cbc, NS_cbc);
  RegisterChildNode('ValueAmount', TXMLValueAmountType_cbc, NS_cbc);
  RegisterChildNode('GrossWeightMeasure', TXMLGrossWeightMeasureType_cbc, NS_cbc);
  RegisterChildNode('NetWeightMeasure', TXMLNetWeightMeasureType_cbc, NS_cbc);
  RegisterChildNode('ChargeableWeightMeasure', TXMLChargeableWeightMeasureType_cbc, NS_cbc);
  RegisterChildNode('GrossVolumeMeasure', TXMLGrossVolumeMeasureType_cbc, NS_cbc);
  RegisterChildNode('NetVolumeMeasure', TXMLNetVolumeMeasureType_cbc, NS_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc, NS_cbc);
  RegisterChildNode('RequiredCustomsID', TXMLRequiredCustomsIDType_cbc, NS_cbc);
  RegisterChildNode('CustomsStatusCode', TXMLCustomsStatusCodeType_cbc, NS_cbc);
  RegisterChildNode('CustomsTariffQuantity', TXMLCustomsTariffQuantityType_cbc, NS_cbc);
  RegisterChildNode('CustomsImportClassifiedIndicator', TXMLCustomsImportClassifiedIndicatorType_cbc, NS_cbc);
  RegisterChildNode('ChargeableQuantity', TXMLChargeableQuantityType_cbc, NS_cbc);
  RegisterChildNode('ReturnableQuantity', TXMLReturnableQuantityType_cbc, NS_cbc);
  RegisterChildNode('TraceID', TXMLTraceIDType_cbc, NS_cbc);
  RegisterChildNode('Item', TXMLItemType_cac, NS_cac);
  RegisterChildNode('FreightAllowanceCharge', TXMLAllowanceChargeType_cac, NS_cac);
  RegisterChildNode('InvoiceLine', TXMLInvoiceLineType_cac, NS_cac);
  RegisterChildNode('Temperature', TXMLTemperatureType_cac, NS_cac);
  RegisterChildNode('OriginAddress', TXMLAddressType_cac, NS_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac, NS_cac);
  FDescription := CreateCollection(TXMLDescriptionType_cbcList, IXMLDescriptionType_cbc, 'Description') as IXMLDescriptionType_cbcList;
  FItem := CreateCollection(TXMLItemType_cacList, IXMLItemType_cac, 'cac:Item', NS_cac) as IXMLItemType_cacList;
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
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('Keyword', TXMLKeywordType_cbc, NS_cbc);
  RegisterChildNode('BrandName', TXMLBrandNameType_cbc, NS_cbc);
  RegisterChildNode('ModelName', TXMLModelNameType_cbc, NS_cbc);
  RegisterChildNode('BuyersItemIdentification', TXMLItemIdentificationType_cac, NS_cac);
  RegisterChildNode('SellersItemIdentification', TXMLItemIdentificationType_cac, NS_cac);
  RegisterChildNode('ManufacturersItemIdentification', TXMLItemIdentificationType_cac, NS_cac);
  RegisterChildNode('AdditionalItemIdentification', TXMLItemIdentificationType_cac, NS_cac);
  RegisterChildNode('OriginCountry', TXMLCountryType_cac, NS_cac);
  RegisterChildNode('CommodityClassification', TXMLCommodityClassificationType_cac, NS_cac);
  RegisterChildNode('ItemInstance', TXMLItemInstanceType_cac, NS_cac);
  FAdditionalItemIdentification := CreateCollection(TXMLItemIdentificationType_cacList, IXMLItemIdentificationType_cac, 'AdditionalItemIdentification') as IXMLItemIdentificationType_cacList;
  FCommodityClassification := CreateCollection(TXMLCommodityClassificationType_cacList, IXMLCommodityClassificationType_cac, 'CommodityClassification') as IXMLCommodityClassificationType_cacList;
  FItemInstance := CreateCollection(TXMLItemInstanceType_cacList, IXMLItemInstanceType_cac, 'ItemInstance') as IXMLItemInstanceType_cacList;
  inherited;
end;

function TXMLItemType_cac.Get_Description: IXMLDescriptionType_cbc;
begin
  Result := ChildNodes['cbc:Description'] as IXMLDescriptionType_cbc;
end;

function TXMLItemType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

function TXMLItemType_cac.Get_Keyword: IXMLKeywordType_cbc;
begin
  Result := ChildNodes['cbc:Keyword'] as IXMLKeywordType_cbc;
end;

function TXMLItemType_cac.Get_BrandName: IXMLBrandNameType_cbc;
begin
  Result := ChildNodes['cbc:BrandName'] as IXMLBrandNameType_cbc;
end;

function TXMLItemType_cac.Get_ModelName: IXMLModelNameType_cbc;
begin
  Result := ChildNodes['cbc:ModelName'] as IXMLModelNameType_cbc;
end;

function TXMLItemType_cac.Get_BuyersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['cac:BuyersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_SellersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['cac:SellersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_ManufacturersItemIdentification: IXMLItemIdentificationType_cac;
begin
  Result := ChildNodes['cac:ManufacturersItemIdentification'] as IXMLItemIdentificationType_cac;
end;

function TXMLItemType_cac.Get_AdditionalItemIdentification: IXMLItemIdentificationType_cacList;
begin
  Result := FAdditionalItemIdentification;
end;

function TXMLItemType_cac.Get_OriginCountry: IXMLCountryType_cac;
begin
  Result := ChildNodes['cac:OriginCountry'] as IXMLCountryType_cac;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  inherited;
end;

function TXMLItemIdentificationType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
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
  RegisterChildNode('ItemClassificationCode', TXMLItemClassificationCodeType_cbc, NS_cbc);
  inherited;
end;

function TXMLCommodityClassificationType_cac.Get_ItemClassificationCode: IXMLItemClassificationCodeType_cbc;
begin
  Result := ChildNodes['cbc:ItemClassificationCode'] as IXMLItemClassificationCodeType_cbc;
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
  RegisterChildNode('ProductTraceID', TXMLProductTraceIDType_cbc, NS_cbc);
  RegisterChildNode('ManufactureDate', TXMLManufactureDateType_cbc, NS_cbc);
  RegisterChildNode('ManufactureTime', TXMLManufactureTimeType_cbc, NS_cbc);
  RegisterChildNode('BestBeforeDate', TXMLBestBeforeDateType_cbc, NS_cbc);
  RegisterChildNode('RegistrationID', TXMLRegistrationIDType_cbc, NS_cbc);
  RegisterChildNode('SerialID', TXMLSerialIDType_cbc, NS_cbc);
  RegisterChildNode('AdditionalItemProperty', TXMLItemPropertyType_cac, NS_cac);
  RegisterChildNode('LotIdentification', TXMLLotIdentificationType_cac, NS_cac);
  FAdditionalItemProperty := CreateCollection(TXMLItemPropertyType_cacList, IXMLItemPropertyType_cac, 'AdditionalItemProperty') as IXMLItemPropertyType_cacList;
  inherited;
end;

function TXMLItemInstanceType_cac.Get_ProductTraceID: IXMLProductTraceIDType_cbc;
begin
  Result := ChildNodes['cbc:ProductTraceID'] as IXMLProductTraceIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_ManufactureDate: IXMLManufactureDateType_cbc;
begin
  Result := ChildNodes['cbc:ManufactureDate'] as IXMLManufactureDateType_cbc;
end;

function TXMLItemInstanceType_cac.Get_ManufactureTime: IXMLManufactureTimeType_cbc;
begin
  Result := ChildNodes['cbc:ManufactureTime'] as IXMLManufactureTimeType_cbc;
end;

function TXMLItemInstanceType_cac.Get_BestBeforeDate: IXMLBestBeforeDateType_cbc;
begin
  Result := ChildNodes['cbc:BestBeforeDate'] as IXMLBestBeforeDateType_cbc;
end;

function TXMLItemInstanceType_cac.Get_RegistrationID: IXMLRegistrationIDType_cbc;
begin
  Result := ChildNodes['cbc:RegistrationID'] as IXMLRegistrationIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_SerialID: IXMLSerialIDType_cbc;
begin
  Result := ChildNodes['cbc:SerialID'] as IXMLSerialIDType_cbc;
end;

function TXMLItemInstanceType_cac.Get_AdditionalItemProperty: IXMLItemPropertyType_cacList;
begin
  Result := FAdditionalItemProperty;
end;

function TXMLItemInstanceType_cac.Get_LotIdentification: IXMLLotIdentificationType_cac;
begin
  Result := ChildNodes['cac:LotIdentification'] as IXMLLotIdentificationType_cac;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('NameCode', TXMLNameCodeType_cbc, NS_cbc);
  RegisterChildNode('TestMethod', TXMLTestMethodType_cbc, NS_cbc);
  RegisterChildNode('Value', TXMLValueType_cbc, NS_cbc);
  RegisterChildNode('ValueQuantity', TXMLValueQuantityType_cbc, NS_cbc);
  RegisterChildNode('ValueQualifier', TXMLValueQualifierType_cbc, NS_cbc);
  RegisterChildNode('ImportanceCode', TXMLImportanceCodeType_cbc, NS_cbc);
  RegisterChildNode('ListValue', TXMLListValueType_cbc, NS_cbc);
  RegisterChildNode('UsabilityPeriod', TXMLPeriodType_cac, NS_cac);
  RegisterChildNode('ItemPropertyGroup', TXMLItemPropertyGroupType_cac, NS_cac);
  RegisterChildNode('RangeDimension', TXMLDimensionType_cac, NS_cac);
  RegisterChildNode('ItemPropertyRange', TXMLItemPropertyRangeType_cac, NS_cac);
  FValueQualifier := CreateCollection(TXMLValueQualifierType_cbcList, IXMLValueQualifierType_cbc, 'ValueQualifier') as IXMLValueQualifierType_cbcList;
  FListValue := CreateCollection(TXMLListValueType_cbcList, IXMLListValueType_cbc, 'ListValue') as IXMLListValueType_cbcList;
  FItemPropertyGroup := CreateCollection(TXMLItemPropertyGroupType_cacList, IXMLItemPropertyGroupType_cac, 'ItemPropertyGroup') as IXMLItemPropertyGroupType_cacList;
  inherited;
end;

function TXMLItemPropertyType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLItemPropertyType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

function TXMLItemPropertyType_cac.Get_NameCode: IXMLNameCodeType_cbc;
begin
  Result := ChildNodes['cbc:NameCode'] as IXMLNameCodeType_cbc;
end;

function TXMLItemPropertyType_cac.Get_TestMethod: IXMLTestMethodType_cbc;
begin
  Result := ChildNodes['cbc:TestMethod'] as IXMLTestMethodType_cbc;
end;

function TXMLItemPropertyType_cac.Get_Value: IXMLValueType_cbc;
begin
  Result := ChildNodes['cbc:Value'] as IXMLValueType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ValueQuantity: IXMLValueQuantityType_cbc;
begin
  Result := ChildNodes['cbc:ValueQuantity'] as IXMLValueQuantityType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ValueQualifier: IXMLValueQualifierType_cbcList;
begin
  Result := FValueQualifier;
end;

function TXMLItemPropertyType_cac.Get_ImportanceCode: IXMLImportanceCodeType_cbc;
begin
  Result := ChildNodes['cbc:ImportanceCode'] as IXMLImportanceCodeType_cbc;
end;

function TXMLItemPropertyType_cac.Get_ListValue: IXMLListValueType_cbcList;
begin
  Result := FListValue;
end;

function TXMLItemPropertyType_cac.Get_UsabilityPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['cac:UsabilityPeriod'] as IXMLPeriodType_cac;
end;

function TXMLItemPropertyType_cac.Get_ItemPropertyGroup: IXMLItemPropertyGroupType_cacList;
begin
  Result := FItemPropertyGroup;
end;

function TXMLItemPropertyType_cac.Get_RangeDimension: IXMLDimensionType_cac;
begin
  Result := ChildNodes['cac:RangeDimension'] as IXMLDimensionType_cac;
end;

function TXMLItemPropertyType_cac.Get_ItemPropertyRange: IXMLItemPropertyRangeType_cac;
begin
  Result := ChildNodes['cac:ItemPropertyRange'] as IXMLItemPropertyRangeType_cac;
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('ImportanceCode', TXMLImportanceCodeType_cbc, NS_cbc);
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
  RegisterChildNode('AttributeID', TXMLAttributeIDType_cbc, NS_cbc);
  RegisterChildNode('Measure', TXMLMeasureType_cbc, NS_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
  RegisterChildNode('MinimumMeasure', TXMLMinimumMeasureType_cbc, NS_cbc);
  RegisterChildNode('MaximumMeasure', TXMLMaximumMeasureType_cbc, NS_cbc);
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
  RegisterChildNode('MinimumValue', TXMLMinimumValueType_cbc, NS_cbc);
  RegisterChildNode('MaximumValue', TXMLMaximumValueType_cbc, NS_cbc);
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
  RegisterChildNode('LotNumberID', TXMLLotNumberIDType_cbc, NS_cbc);
  RegisterChildNode('ExpiryDate', TXMLExpiryDateType_cbc, NS_cbc);
  RegisterChildNode('AdditionalItemProperty', TXMLItemPropertyType_cac, NS_cac);
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

{ TXMLInvoiceLineType_cac }

procedure TXMLInvoiceLineType_cac.AfterConstruction;
begin
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Note', TXMLNoteType_cbc, NS_cbc);
  RegisterChildNode('InvoicedQuantity', TXMLInvoicedQuantityType_cbc, NS_cbc);
  RegisterChildNode('LineExtensionAmount', TXMLLineExtensionAmountType_cbc, NS_cbc);
  RegisterChildNode('OrderLineReference', TXMLOrderLineReferenceType_cac, NS_cac);
  RegisterChildNode('DespatchLineReference', TXMLLineReferenceType_cac, NS_cac);
  RegisterChildNode('ReceiptLineReference', TXMLLineReferenceType_cac, NS_cac);
  RegisterChildNode('Delivery', TXMLDeliveryType_cac, NS_cac);
  RegisterChildNode('AllowanceCharge', TXMLAllowanceChargeType_cac, NS_cac);
  RegisterChildNode('TaxTotal', TXMLTaxTotalType_cac, NS_cac);
  RegisterChildNode('WithholdingTaxTotal', TXMLTaxTotalType_cac, NS_cac);
  RegisterChildNode('Item', TXMLItemType_cac, NS_cac);
  RegisterChildNode('Price', TXMLPriceType_cac, NS_cac);
  RegisterChildNode('SubInvoiceLine', TXMLInvoiceLineType_cac, NS_cac);
  FNote := CreateCollection(TXMLNoteType_cbcList, IXMLNoteType_cbc, 'cbc:Note', NS_cbc) as IXMLNoteType_cbcList;
  FOrderLineReference := CreateCollection(TXMLOrderLineReferenceType_cacList, IXMLOrderLineReferenceType_cac, 'cac:OrderLineReference', NS_cac) as IXMLOrderLineReferenceType_cacList;
  FDespatchLineReference := CreateCollection(TXMLLineReferenceType_cacList, IXMLLineReferenceType_cac, 'cac:DespatchLineReference', NS_cac) as IXMLLineReferenceType_cacList;
  FReceiptLineReference := CreateCollection(TXMLLineReferenceType_cacList, IXMLLineReferenceType_cac, 'cac:ReceiptLineReference', NS_cac) as IXMLLineReferenceType_cacList;
  FDelivery := CreateCollection(TXMLDeliveryType_cacList, IXMLDeliveryType_cac, 'cac:Delivery', NS_cac) as IXMLDeliveryType_cacList;
  FAllowanceCharge := CreateCollection(TXMLAllowanceChargeType_cacList, IXMLAllowanceChargeType_cac, 'cac:AllowanceCharge', NS_cac) as IXMLAllowanceChargeType_cacList;
  FWithholdingTaxTotal := CreateCollection(TXMLTaxTotalType_cacList, IXMLTaxTotalType_cac, 'cac:WithholdingTaxTotal', NS_cac) as IXMLTaxTotalType_cacList;
  FSubInvoiceLine := CreateCollection(TXMLInvoiceLineType_cacList, IXMLInvoiceLineType_cac, 'cac:SubInvoiceLine', NS_cac) as IXMLInvoiceLineType_cacList;
  inherited;
end;

function TXMLInvoiceLineType_cac.Get_ID: IXMLIDType_cbc;
begin
  Result := ChildNodes['cbc:ID'] as IXMLIDType_cbc;
end;

function TXMLInvoiceLineType_cac.Get_Note: IXMLNoteType_cbcList;
begin
  Result := FNote;
end;

function TXMLInvoiceLineType_cac.Get_InvoicedQuantity: IXMLInvoicedQuantityType_cbc;
begin
  Result := ChildNodes['cbc:InvoicedQuantity'] as IXMLInvoicedQuantityType_cbc;
end;

function TXMLInvoiceLineType_cac.Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
begin
  Result := ChildNodes['cbc:LineExtensionAmount'] as IXMLLineExtensionAmountType_cbc;
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
  Result := ChildNodes['cac:TaxTotal'] as IXMLTaxTotalType_cac;
end;

function TXMLInvoiceLineType_cac.Get_WithholdingTaxTotal: IXMLTaxTotalType_cacList;
begin
  Result := FWithholdingTaxTotal;
end;

function TXMLInvoiceLineType_cac.Get_Item: IXMLItemType_cac;
begin
  Result := ChildNodes['cac:Item'] as IXMLItemType_cac;
end;

function TXMLInvoiceLineType_cac.Get_Price: IXMLPriceType_cac;
begin
  Result := ChildNodes['cac:Price'] as IXMLPriceType_cac;
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
  RegisterChildNode('LineID', TXMLLineIDType_cbc, NS_cbc);
  RegisterChildNode('SalesOrderLineID', TXMLSalesOrderLineIDType_cbc, NS_cbc);
  RegisterChildNode('UUID', TXMLUUIDType_cbc, NS_cbc);
  RegisterChildNode('LineStatusCode', TXMLLineStatusCodeType_cbc, NS_cbc);
  RegisterChildNode('OrderReference', TXMLOrderReferenceType_cac, NS_cac);
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
  RegisterChildNode('LineID', TXMLLineIDType_cbc, NS_cbc);
  RegisterChildNode('LineStatusCode', TXMLLineStatusCodeType_cbc, NS_cbc);
  RegisterChildNode('DocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
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

{ TXMLTaxTotalType_cac }

procedure TXMLTaxTotalType_cac.AfterConstruction;
begin
  RegisterChildNode('TaxAmount', TXMLTaxAmountType_cbc, NS_cbc);
  RegisterChildNode('TaxSubtotal', TXMLTaxSubtotalType_cac, NS_cac);
  FTaxSubtotal := CreateCollection(TXMLTaxSubtotalType_cacList, IXMLTaxSubtotalType_cac, 'cac:TaxSubtotal', NS_cac) as IXMLTaxSubtotalType_cacList;
  inherited;
end;

function TXMLTaxTotalType_cac.Get_TaxAmount: IXMLTaxAmountType_cbc;
begin
  Result := ChildNodes['cbc:TaxAmount'] as IXMLTaxAmountType_cbc;
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
  RegisterChildNode('TaxableAmount', TXMLTaxableAmountType_cbc, NS_cbc);
  RegisterChildNode('TaxAmount', TXMLTaxAmountType_cbc, NS_cbc);
  RegisterChildNode('CalculationSequenceNumeric', TXMLCalculationSequenceNumericType_cbc, NS_cbc);
  RegisterChildNode('TransactionCurrencyTaxAmount', TXMLTransactionCurrencyTaxAmountType_cbc, NS_cbc);
  RegisterChildNode('Percent', TXMLPercentType_cbc, NS_cbc);
  RegisterChildNode('BaseUnitMeasure', TXMLBaseUnitMeasureType_cbc, NS_cbc);
  RegisterChildNode('PerUnitAmount', TXMLPerUnitAmountType_cbc, NS_cbc);
  RegisterChildNode('TaxCategory', TXMLTaxCategoryType_cac, NS_cac);
  inherited;
end;

function TXMLTaxSubtotalType_cac.Get_TaxableAmount: IXMLTaxableAmountType_cbc;
begin
  Result := ChildNodes['cbc:TaxableAmount'] as IXMLTaxableAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TaxAmount: IXMLTaxAmountType_cbc;
begin
  Result := ChildNodes['cbc:TaxAmount'] as IXMLTaxAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_CalculationSequenceNumeric: IXMLCalculationSequenceNumericType_cbc;
begin
  Result := ChildNodes['cbc:CalculationSequenceNumeric'] as IXMLCalculationSequenceNumericType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TransactionCurrencyTaxAmount: IXMLTransactionCurrencyTaxAmountType_cbc;
begin
  Result := ChildNodes['cbc:TransactionCurrencyTaxAmount'] as IXMLTransactionCurrencyTaxAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_Percent: IXMLPercentType_cbc;
begin
  Result := ChildNodes['cbc:Percent'] as IXMLPercentType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_BaseUnitMeasure: IXMLBaseUnitMeasureType_cbc;
begin
  Result := ChildNodes['cbc:BaseUnitMeasure'] as IXMLBaseUnitMeasureType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_PerUnitAmount: IXMLPerUnitAmountType_cbc;
begin
  Result := ChildNodes['cbc:PerUnitAmount'] as IXMLPerUnitAmountType_cbc;
end;

function TXMLTaxSubtotalType_cac.Get_TaxCategory: IXMLTaxCategoryType_cac;
begin
  Result := ChildNodes['cac:TaxCategory'] as IXMLTaxCategoryType_cac;
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
  RegisterChildNode('Name', TXMLNameType_cbc, NS_cbc);
  RegisterChildNode('TaxExemptionReasonCode', TXMLTaxExemptionReasonCodeType_cbc, NS_cbc);
  RegisterChildNode('TaxExemptionReason', TXMLTaxExemptionReasonType_cbc, NS_cbc);
  RegisterChildNode('TaxScheme', TXMLTaxSchemeType_cac, NS_cac);
  inherited;
end;

function TXMLTaxCategoryType_cac.Get_Name: IXMLNameType_cbc;
begin
  Result := ChildNodes['cbc:Name'] as IXMLNameType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxExemptionReasonCode: IXMLTaxExemptionReasonCodeType_cbc;
begin
  Result := ChildNodes['cbc:TaxExemptionReasonCode'] as IXMLTaxExemptionReasonCodeType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxExemptionReason: IXMLTaxExemptionReasonType_cbc;
begin
  Result := ChildNodes['cbc:TaxExemptionReason'] as IXMLTaxExemptionReasonType_cbc;
end;

function TXMLTaxCategoryType_cac.Get_TaxScheme: IXMLTaxSchemeType_cac;
begin
  Result := ChildNodes['cac:TaxScheme'] as IXMLTaxSchemeType_cac;
end;

{ TXMLTaxExemptionReasonCodeType_cbc }

{ TXMLTaxExemptionReasonType_cbc }

{ TXMLPriceType_cac }

procedure TXMLPriceType_cac.AfterConstruction;
begin
  RegisterChildNode('PriceAmount', TXMLPriceAmountType_cbc, NS_cbc);
  inherited;
end;

function TXMLPriceType_cac.Get_PriceAmount: IXMLPriceAmountType_cbc;
begin
  Result := ChildNodes['cbc:PriceAmount'] as IXMLPriceAmountType_cbc;
end;

{ TXMLPriceAmountType_cbc }

{ TXMLTemperatureType_cac }

procedure TXMLTemperatureType_cac.AfterConstruction;
begin
  RegisterChildNode('AttributeID', TXMLAttributeIDType_cbc, NS_cbc);
  RegisterChildNode('Measure', TXMLMeasureType_cbc, NS_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('TransportModeCode', TXMLTransportModeCodeType_cbc, NS_cbc);
  RegisterChildNode('TransportMeansTypeCode', TXMLTransportMeansTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('TransitDirectionCode', TXMLTransitDirectionCodeType_cbc, NS_cbc);
  RegisterChildNode('Instructions', TXMLInstructionsType_cbc, NS_cbc);
  RegisterChildNode('TransitPeriod', TXMLPeriodType_cac, NS_cac);
  RegisterChildNode('TransportMeans', TXMLTransportMeansType_cac, NS_cac);
  RegisterChildNode('DriverPerson', TXMLPersonType_cac, NS_cac);
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
  RegisterChildNode('JourneyID', TXMLJourneyIDType_cbc, NS_cbc);
  RegisterChildNode('RegistrationNationalityID', TXMLRegistrationNationalityIDType_cbc, NS_cbc);
  RegisterChildNode('RegistrationNationality', TXMLRegistrationNationalityType_cbc, NS_cbc);
  RegisterChildNode('DirectionCode', TXMLDirectionCodeType_cbc, NS_cbc);
  RegisterChildNode('TransportMeansTypeCode', TXMLTransportMeansTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('TradeServiceCode', TXMLTradeServiceCodeType_cbc, NS_cbc);
  RegisterChildNode('Stowage', TXMLStowageType_cac, NS_cac);
  RegisterChildNode('AirTransport', TXMLAirTransportType_cac, NS_cac);
  RegisterChildNode('RoadTransport', TXMLRoadTransportType_cac, NS_cac);
  RegisterChildNode('RailTransport', TXMLRailTransportType_cac, NS_cac);
  RegisterChildNode('MaritimeTransport', TXMLMaritimeTransportType_cac, NS_cac);
  RegisterChildNode('OwnerParty', TXMLPartyType_cac, NS_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac, NS_cac);
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
  RegisterChildNode('LocationID', TXMLLocationIDType_cbc, NS_cbc);
  RegisterChildNode('Location', TXMLLocationType_cbc, NS_cbc);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac, NS_cac);
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
  RegisterChildNode('AircraftID', TXMLAircraftIDType_cbc, NS_cbc);
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
  RegisterChildNode('LicensePlateID', TXMLLicensePlateIDType_cbc, NS_cbc);
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
  RegisterChildNode('TrainID', TXMLTrainIDType_cbc, NS_cbc);
  RegisterChildNode('RailCarID', TXMLRailCarIDType_cbc, NS_cbc);
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
  RegisterChildNode('VesselID', TXMLVesselIDType_cbc, NS_cbc);
  RegisterChildNode('VesselName', TXMLVesselNameType_cbc, NS_cbc);
  RegisterChildNode('RadioCallSignID', TXMLRadioCallSignIDType_cbc, NS_cbc);
  RegisterChildNode('ShipsRequirements', TXMLShipsRequirementsType_cbc, NS_cbc);
  RegisterChildNode('GrossTonnageMeasure', TXMLGrossTonnageMeasureType_cbc, NS_cbc);
  RegisterChildNode('NetTonnageMeasure', TXMLNetTonnageMeasureType_cbc, NS_cbc);
  RegisterChildNode('RegistryCertificateDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('RegistryPortLocation', TXMLLocationType_cac, NS_cac);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('TransportHandlingUnitTypeCode', TXMLTransportHandlingUnitTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('HandlingCode', TXMLHandlingCodeType_cbc, NS_cbc);
  RegisterChildNode('HandlingInstructions', TXMLHandlingInstructionsType_cbc, NS_cbc);
  RegisterChildNode('HazardousRiskIndicator', TXMLHazardousRiskIndicatorType_cbc, NS_cbc);
  RegisterChildNode('TotalGoodsItemQuantity', TXMLTotalGoodsItemQuantityType_cbc, NS_cbc);
  RegisterChildNode('TotalPackageQuantity', TXMLTotalPackageQuantityType_cbc, NS_cbc);
  RegisterChildNode('DamageRemarks', TXMLDamageRemarksType_cbc, NS_cbc);
  RegisterChildNode('TraceID', TXMLTraceIDType_cbc, NS_cbc);
  RegisterChildNode('ActualPackage', TXMLPackageType_cac, NS_cac);
  RegisterChildNode('TransportEquipment', TXMLTransportEquipmentType_cac, NS_cac);
  RegisterChildNode('TransportMeans', TXMLTransportMeansType_cac, NS_cac);
  RegisterChildNode('HazardousGoodsTransit', TXMLHazardousGoodsTransitType_cac, NS_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac, NS_cac);
  RegisterChildNode('MinimumTemperature', TXMLTemperatureType_cac, NS_cac);
  RegisterChildNode('MaximumTemperature', TXMLTemperatureType_cac, NS_cac);
  RegisterChildNode('FloorSpaceMeasurementDimension', TXMLDimensionType_cac, NS_cac);
  RegisterChildNode('PalletSpaceMeasurementDimension', TXMLDimensionType_cac, NS_cac);
  RegisterChildNode('ShipmentDocumentReference', TXMLDocumentReferenceType_cac, NS_cac);
  RegisterChildNode('CustomsDeclaration', TXMLCustomsDeclarationType_cac, NS_cac);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('Quantity', TXMLQuantityType_cbc, NS_cbc);
  RegisterChildNode('ReturnableMaterialIndicator', TXMLReturnableMaterialIndicatorType_cbc, NS_cbc);
  RegisterChildNode('PackageLevelCode', TXMLPackageLevelCodeType_cbc, NS_cbc);
  RegisterChildNode('PackagingTypeCode', TXMLPackagingTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('PackingMaterial', TXMLPackingMaterialType_cbc, NS_cbc);
  RegisterChildNode('ContainedPackage', TXMLPackageType_cac, NS_cac);
  RegisterChildNode('GoodsItem', TXMLGoodsItemType_cac, NS_cac);
  RegisterChildNode('MeasurementDimension', TXMLDimensionType_cac, NS_cac);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('TransportEquipmentTypeCode', TXMLTransportEquipmentTypeCodeType_cbc, NS_cbc);
  RegisterChildNode('Description', TXMLDescriptionType_cbc, NS_cbc);
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
  RegisterChildNode('TransportEmergencyCardCode', TXMLTransportEmergencyCardCodeType_cbc, NS_cbc);
  RegisterChildNode('PackingCriteriaCode', TXMLPackingCriteriaCodeType_cbc, NS_cbc);
  RegisterChildNode('HazardousRegulationCode', TXMLHazardousRegulationCodeType_cbc, NS_cbc);
  RegisterChildNode('InhalationToxicityZoneCode', TXMLInhalationToxicityZoneCodeType_cbc, NS_cbc);
  RegisterChildNode('TransportAuthorizationCode', TXMLTransportAuthorizationCodeType_cbc, NS_cbc);
  RegisterChildNode('MaximumTemperature', TXMLTemperatureType_cac, NS_cac);
  RegisterChildNode('MinimumTemperature', TXMLTemperatureType_cac, NS_cac);
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
  RegisterChildNode('ID', TXMLIDType_cbc, NS_cbc);
  RegisterChildNode('IssuerParty', TXMLPartyType_cac, NS_cac);
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

{ TXMLPaymentMeansType_cac }

procedure TXMLPaymentMeansType_cac.AfterConstruction;
begin
  RegisterChildNode('PaymentMeansCode', TXMLPaymentMeansCodeType_cbc, NS_cbc);
  RegisterChildNode('PaymentDueDate', TXMLPaymentDueDateType_cbc, NS_cbc);
  RegisterChildNode('PaymentChannelCode', TXMLPaymentChannelCodeType_cbc, NS_cbc);
  RegisterChildNode('InstructionNote', TXMLInstructionNoteType_cbc, NS_cbc);
  RegisterChildNode('PayerFinancialAccount', TXMLFinancialAccountType_cac, NS_cac);
  RegisterChildNode('PayeeFinancialAccount', TXMLFinancialAccountType_cac, NS_cac);
  inherited;
end;

function TXMLPaymentMeansType_cac.Get_PaymentMeansCode: IXMLPaymentMeansCodeType_cbc;
begin
  Result := ChildNodes['PaymentMeansCode'] as IXMLPaymentMeansCodeType_cbc;
end;

function TXMLPaymentMeansType_cac.Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
begin
  Result := ChildNodes['PaymentDueDate'] as IXMLPaymentDueDateType_cbc;
end;

function TXMLPaymentMeansType_cac.Get_PaymentChannelCode: IXMLPaymentChannelCodeType_cbc;
begin
  Result := ChildNodes['PaymentChannelCode'] as IXMLPaymentChannelCodeType_cbc;
end;

function TXMLPaymentMeansType_cac.Get_InstructionNote: IXMLInstructionNoteType_cbc;
begin
  Result := ChildNodes['InstructionNote'] as IXMLInstructionNoteType_cbc;
end;

function TXMLPaymentMeansType_cac.Get_PayerFinancialAccount: IXMLFinancialAccountType_cac;
begin
  Result := ChildNodes['PayerFinancialAccount'] as IXMLFinancialAccountType_cac;
end;

function TXMLPaymentMeansType_cac.Get_PayeeFinancialAccount: IXMLFinancialAccountType_cac;
begin
  Result := ChildNodes['PayeeFinancialAccount'] as IXMLFinancialAccountType_cac;
end;

{ TXMLPaymentMeansType_cacList }

function TXMLPaymentMeansType_cacList.Add: IXMLPaymentMeansType_cac;
begin
  Result := AddItem(-1) as IXMLPaymentMeansType_cac;
end;

function TXMLPaymentMeansType_cacList.Insert(const Index: Integer): IXMLPaymentMeansType_cac;
begin
  Result := AddItem(Index) as IXMLPaymentMeansType_cac;
end;

function TXMLPaymentMeansType_cacList.Get_Item(Index: Integer): IXMLPaymentMeansType_cac;
begin
  Result := List[Index] as IXMLPaymentMeansType_cac;
end;

{ TXMLPaymentMeansCodeType_cbc }

{ TXMLPaymentDueDateType_cbc }

{ TXMLPaymentChannelCodeType_cbc }

{ TXMLInstructionNoteType_cbc }

{ TXMLPaymentTermsType_cac }

procedure TXMLPaymentTermsType_cac.AfterConstruction;
begin
  RegisterChildNode('Note', TXMLNoteType_cbc, NS_cbc);
  RegisterChildNode('PenaltySurchargePercent', TXMLPenaltySurchargePercentType_cbc, NS_cbc);
  RegisterChildNode('Amount', TXMLAmountType_cbc, NS_cbc);
  RegisterChildNode('PenaltyAmount', TXMLPenaltyAmountType_cbc, NS_cbc);
  RegisterChildNode('PaymentDueDate', TXMLPaymentDueDateType_cbc, NS_cbc);
  RegisterChildNode('SettlementPeriod', TXMLPeriodType_cac, NS_cac);
  inherited;
end;

function TXMLPaymentTermsType_cac.Get_Note: IXMLNoteType_cbc;
begin
  Result := ChildNodes['Note'] as IXMLNoteType_cbc;
end;

function TXMLPaymentTermsType_cac.Get_PenaltySurchargePercent: IXMLPenaltySurchargePercentType_cbc;
begin
  Result := ChildNodes['PenaltySurchargePercent'] as IXMLPenaltySurchargePercentType_cbc;
end;

function TXMLPaymentTermsType_cac.Get_Amount: IXMLAmountType_cbc;
begin
  Result := ChildNodes['Amount'] as IXMLAmountType_cbc;
end;

function TXMLPaymentTermsType_cac.Get_PenaltyAmount: IXMLPenaltyAmountType_cbc;
begin
  Result := ChildNodes['PenaltyAmount'] as IXMLPenaltyAmountType_cbc;
end;

function TXMLPaymentTermsType_cac.Get_PaymentDueDate: IXMLPaymentDueDateType_cbc;
begin
  Result := ChildNodes['PaymentDueDate'] as IXMLPaymentDueDateType_cbc;
end;

function TXMLPaymentTermsType_cac.Get_SettlementPeriod: IXMLPeriodType_cac;
begin
  Result := ChildNodes['SettlementPeriod'] as IXMLPeriodType_cac;
end;

{ TXMLPenaltySurchargePercentType_cbc }

{ TXMLPenaltyAmountType_cbc }

{ TXMLExchangeRateType_cac }

procedure TXMLExchangeRateType_cac.AfterConstruction;
begin
  RegisterChildNode('SourceCurrencyCode', TXMLSourceCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('TargetCurrencyCode', TXMLTargetCurrencyCodeType_cbc, NS_cbc);
  RegisterChildNode('CalculationRate', TXMLCalculationRateType_cbc, NS_cbc);
  RegisterChildNode('Date', TXMLDateType_cbc, NS_cbc);
  inherited;
end;

function TXMLExchangeRateType_cac.Get_SourceCurrencyCode: IXMLSourceCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:SourceCurrencyCode'] as IXMLSourceCurrencyCodeType_cbc;
end;

function TXMLExchangeRateType_cac.Get_TargetCurrencyCode: IXMLTargetCurrencyCodeType_cbc;
begin
  Result := ChildNodes['cbc:TargetCurrencyCode'] as IXMLTargetCurrencyCodeType_cbc;
end;

function TXMLExchangeRateType_cac.Get_CalculationRate: IXMLCalculationRateType_cbc;
begin
  Result := ChildNodes['cbc:CalculationRate'] as IXMLCalculationRateType_cbc;
end;

function TXMLExchangeRateType_cac.Get_Date: IXMLDateType_cbc;
begin
  Result := ChildNodes['cbc:Date'] as IXMLDateType_cbc;
end;

{ TXMLSourceCurrencyCodeType_cbc }

{ TXMLTargetCurrencyCodeType_cbc }

{ TXMLCalculationRateType_cbc }

{ TXMLDateType_cbc }

{ TXMLMonetaryTotalType_cac }

procedure TXMLMonetaryTotalType_cac.AfterConstruction;
begin
  RegisterChildNode('LineExtensionAmount', TXMLLineExtensionAmountType_cbc, NS_cbc);
  RegisterChildNode('TaxExclusiveAmount', TXMLTaxExclusiveAmountType_cbc, NS_cbc);
  RegisterChildNode('TaxInclusiveAmount', TXMLTaxInclusiveAmountType_cbc, NS_cbc);
  RegisterChildNode('AllowanceTotalAmount', TXMLAllowanceTotalAmountType_cbc, NS_cbc);
  RegisterChildNode('ChargeTotalAmount', TXMLChargeTotalAmountType_cbc, NS_cbc);
  RegisterChildNode('PayableRoundingAmount', TXMLPayableRoundingAmountType_cbc, NS_cbc);
  RegisterChildNode('PayableAmount', TXMLPayableAmountType_cbc, NS_cbc);
  inherited;
end;

function TXMLMonetaryTotalType_cac.Get_LineExtensionAmount: IXMLLineExtensionAmountType_cbc;
begin
  Result := ChildNodes['cbc:LineExtensionAmount'] as IXMLLineExtensionAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_TaxExclusiveAmount: IXMLTaxExclusiveAmountType_cbc;
begin
  Result := ChildNodes['cbc:TaxExclusiveAmount'] as IXMLTaxExclusiveAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_TaxInclusiveAmount: IXMLTaxInclusiveAmountType_cbc;
begin
  Result := ChildNodes['cbc:TaxInclusiveAmount'] as IXMLTaxInclusiveAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_AllowanceTotalAmount: IXMLAllowanceTotalAmountType_cbc;
begin
  Result := ChildNodes['cbc:AllowanceTotalAmount'] as IXMLAllowanceTotalAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_ChargeTotalAmount: IXMLChargeTotalAmountType_cbc;
begin
  Result := ChildNodes['cbc:ChargeTotalAmount'] as IXMLChargeTotalAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_PayableRoundingAmount: IXMLPayableRoundingAmountType_cbc;
begin
  Result := ChildNodes['cbc:PayableRoundingAmount'] as IXMLPayableRoundingAmountType_cbc;
end;

function TXMLMonetaryTotalType_cac.Get_PayableAmount: IXMLPayableAmountType_cbc;
begin
  Result := ChildNodes['cbc:PayableAmount'] as IXMLPayableAmountType_cbc;
end;

{ TXMLTaxExclusiveAmountType_cbc }

{ TXMLTaxInclusiveAmountType_cbc }

{ TXMLAllowanceTotalAmountType_cbc }

{ TXMLChargeTotalAmountType_cbc }

{ TXMLPayableRoundingAmountType_cbc }

{ TXMLPayableAmountType_cbc }

end.