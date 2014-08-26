COMMENT ON TABLE pmOperation IS 'Provision Management External Operations';

COMMENT ON COLUMN pmOperation.pmOperationID                IS 'ID Provision Management External Operation';
COMMENT ON COLUMN pmOperation.provisioningOperationType    IS 'External Provisioning Operation (Subscription,Unsubscription)';
COMMENT ON COLUMN pmOperation.operationId                  IS 'Request Operation Id (queryId,updateOperationId)';
COMMENT ON COLUMN pmOperation.offername                    IS 'Offer Name (BoltOn...)';
COMMENT ON COLUMN pmOperation.interfaceName                IS 'Altamira WS Interface - metadata full name';
COMMENT ON COLUMN pmOperation.operationName                IS 'Altamira WS Operation Name';
COMMENT ON COLUMN pmOperation.altamiraRequestDS            IS 'Altamira Request DataStructure - metadata full name';
COMMENT ON COLUMN pmOperation.altamiraResponseDS           IS 'Altamira Response DataStructure - metadata full name';
COMMENT ON COLUMN pmOperation.fieldForProdOfferingID       IS 'Field for the Product Offering Id - full hierarquical path';
COMMENT ON COLUMN pmOperation.fieldForProdSpecificationID  IS 'Field for the ProdSpecification Id - full hierarquical path';
COMMENT ON COLUMN pmOperation.fieldForProdInstanceID       IS 'Field for the ProdInstance Id - full hierarquical path';
COMMENT ON COLUMN pmOperation.fieldforglobalselection      IS 'Field for the Global Selection Id - full hierarquical path';
COMMENT ON COLUMN pmOperation.globalSelectionLastActiveId  IS 'Global Selection Id should fetch last active Ids?';
COMMENT ON COLUMN pmOperation.prodinstancepathaa           IS 'Field for the Product location path - AA response';
COMMENT ON COLUMN pmOperation.prodidfieldpathaa            IS 'Field for the ProdInstance Id location path - AA response';
COMMENT ON COLUMN pmOperation.invokeAltamira               IS 'Invoke Altamira? - relevant for provision process wkf';
COMMENT ON COLUMN pmOperation.updateServiceRegistry        IS 'Update Service Registry? - relevant for provision process wkf';
COMMENT ON COLUMN pmOperation.activeserviceregistry        IS 'Activate/Subscribe Service Registry? - relevant for provision process wkf';
COMMENT ON COLUMN pmOperation.inactiveserviceregistry      IS 'Inactivate/Unsubscrive Service Registry? - relevant for provision process wkf';
COMMENT ON COLUMN pmOperation.QUERYSRPRODIDAAPATHRQ        IS 'Restringe Query SR for inactivation Fields Path on Request';
COMMENT ON COLUMN pmOperation.status                       IS 'Status (1-On, 0-Off)';

COMMENT ON TABLE pmOperationField IS 'Provision Management External Operations Relevant Fields - Mappings';

COMMENT ON COLUMN pmOperationField.CWDOCID                 IS 'CW Generated Key';
COMMENT ON COLUMN pmOperationField.pmOperationID           IS 'ID Provision Management External Operation - External Reference';
COMMENT ON COLUMN pmOperationField.characteristic          IS 'Characteristic Field - altamira optional parameter field?';
COMMENT ON COLUMN pmOperationField.fromExternalRequest     IS 'From External Request?';
COMMENT ON COLUMN pmOperationField.fromCatalog             IS 'From Catalog?';
COMMENT ON COLUMN pmOperationField.sourceField             IS 'Source Field - full hierarquical path';
COMMENT ON COLUMN pmOperationField.destinationField        IS 'Destination Field - full hierarquical path';
COMMENT ON COLUMN pmOperationField.defaultValue            IS 'Default Value';
COMMENT ON COLUMN pmOperationField.mandatory               IS 'Mandatory';
COMMENT ON COLUMN pmOperationField.overridden              IS 'Overridden';
COMMENT ON COLUMN pmOperationField.overriddencatalogfield  IS 'Overridden Catalog Field';
COMMENT ON COLUMN pmOperationField.ignoretoaa              IS 'Ignore to AA';

TRUNCATE TABLE pmoperationfield;
TRUNCATE TABLE pmoperation;

SET DEFINE OFF;
REM INSERTING into pmOperation

INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 1
, 'subscribeProductOffering'
, ''
, 'BoltOn'
, 'pm_pws.clientAltamira.boltonManagement'
, 'subscribeBolton'
, 'OCSProvision.boltonManagement.v1.types.subscribeBolton'
, 'OCSProvision.boltonManagement.v1.types.subscribeBoltonResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,boltonInfo.boltonIdentifier.boltonCode,boltonInfo.boltonIdentifier.boltonTypeCode,boltonInfo.boltonIdentifier.boltonInstance'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 2
, 'unsubscribeProduct'
, ''
, 'BoltOn'
, 'pm_pws.clientAltamira.boltonManagement'
, 'unsubscribeBolton'
, 'OCSProvision.boltonManagement.v1.types.unsubscribeBolton'
, 'OCSProvision.boltonManagement.v1.types.unsubscribeBoltonResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 3
, 'queryProductSubscription'
, ''
, 'BoltOn'
, ''
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 4
, 'queryProduct'
, ''
, 'BoltOn'
, 'pm_pws.clientAltamira.boltonManagement'
, 'queryBoltons'
, 'OCSProvision.boltonManagement.v1.types.queryBoltons'
, 'OCSProvision.boltonManagement.v1.types.queryBoltonsResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, 'boltonBasicInfoList.boltonBasicInfo'
, 'boltonIdentifier.boltonInstance,boltonIdentifier.boltonCode,boltonIdentifier.boltonTypeCode,boltonIdentifier.boltonInstance'
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 5
, 'subscribeProductOffering'
, ''
, 'RecurrentBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'subscribeCyclicBoltons'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicBoltons'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicBoltonsResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,cyclicCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 6
, 'unsubscribeProduct'
, ''
, 'RecurrentBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServicesResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 7
, 'queryProductSubscription'
, ''
, 'RecurrentBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 8
, 'queryProduct'
, ''
, 'RecurrentBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'queryCyclicBoltonsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicBoltonsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicBoltonsDetailsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'cyclicBoltonDetailedInfoList.cyclicBoltonDetailedInfo'
, 'timeCyclicBoltonDetailedInfo.cyclicDetailedInfo.opReference.opId'
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 9
, 'subscribeProductOffering'
, ''
, 'AutorenewalBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'subscribeCyclicBoltons'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicBoltons'
, 'OCSProvisioning.boltonManagement.v1.types.subscribeBoltonResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,cyclicCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 10
, 'unsubscribeProduct'
, ''
, 'AutorenewalBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServices'
, 'OCSProvisioning.boltonManagement.v1.types.unsubscribeBoltonResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 11
, 'queryProductSubscription'
, ''
, 'AutorenewalBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 12
, 'queryProduct'
, ''
, 'AutorenewalBoltOn'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'queryCyclicBoltonsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicBoltonsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicBoltonsDetailsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'cyclicBoltonDetailedInfoList.cyclicBoltonDetailedInfo'
, 'timeCyclicBoltonDetailedInfo.cyclicDetailedInfo.opReference.opId'
, 1
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 13
, 'subscribeProductOffering'
, ''
, 'UsageControl'
, 'pm_pws.clientAltamira.usageControlCounterManagement'
, 'subscribeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.subscribeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.subscribeUsageControlCounterResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,uccInfo.uccId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 14
, 'unsubscribeProduct'
, ''
, 'UsageControl'
, 'pm_pws.clientAltamira.usageControlCounterManagement'
, 'unsubscribeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.unsubscribeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.unsubscribeUsageControlCounterResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 15
, 'queryProductSubscription'
, ''
, 'UsageControl'
, 'pm_pws.clientAltamira.usageControlCounterManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 16
, 'queryProduct'
, ''
, 'UsageControl'
, 'pm_pws.clientAltamira.usageControlCounterManagement'
, 'queryUsageControlCounters'
, 'OCSProvision.usageControlCounterManagement.v1.types.queryUsageControlCounters'
, 'OCSProvision.usageControlCounterManagement.v1.types.queryUsageControlCountersResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, 'uccBasicInfoList.uccBasicInfo'
, ',uccId'
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 17
, 'updateProduct'
, ''
, 'UsageControl'
, 'pm_pws.clientAltamira.usageControlCounterManagement'
, 'changeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.changeUsageControlCounter'
, 'OCSProvision.usageControlCounterManagement.v1.types.changeUsageControlCounterResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 18
, 'subscribeProductOffering'
, ''
, 'ProductCode'
, 'pm_pws.clientAltamira.productManagement'
, 'subscribeProduct'
, ''
, ''
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 19
, 'unsubscribeProduct'
, ''
, 'ProductCode'
, 'pm_pws.clientAltamira.productManagement'
, 'unsubscribeProduct'
, ''
, ''
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 20
, 'queryProductSubscription'
, ''
, 'ProductCode'
, ''
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 21
, 'queryProduct'
, ''
, 'ProductCode'
, 'pm_pws.clientAltamira.productManagement'
, 'queryProductsBasics'
, ''
, ''
, ''
, ''
, ''
, 'productId.type'
, 0
, ''
, ''
, 1
, 1
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 22
, 'subscribeProductOffering'
, ''
, 'ServiceTariffPlan'
, 'pm_pws.clientAltamira.accountManagement'
, 'changeServicePlans'
, 'OCSProvision.accountManagement.v1.types.changeServicePlans'
, 'OCSProvision.accountManagement.v1.types.changeServicePlansResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,serviceClass,tariffPlanId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 23
, 'unsubscribeProduct'
, ''
, 'ServiceTariffPlan'
, 'pm_pws.clientAltamira.accountManagement'
, 'changeServicePlans'
, 'OCSProvision.accountManagement.v1.types.changeServicePlans'
, 'OCSProvision.accountManagement.v1.types.changeServicePlansResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, 'opId'
, 1
, 1
, 1
, 1
, ',serviceClass'
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 24
, 'queryProductSubscription'
, ''
, 'ServiceTariffPlan'
, 'pm_pws.clientAltamira.accountManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 25
, 'queryProduct'
, ''
, 'ServiceTariffPlan'
, 'pm_pws.clientAltamira.accountManagement'
, 'queryServicePlansBasics'
, 'OCSProvision.accountManagement.v1.types.queryServicePlansBasics'
, 'OCSProvision.accountManagement.v1.types.queryServicePlansBasicsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'servicePlansBasicInfoList.servicePlansBasicInfo'
, ',,tariffPlanId'
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 26
, 'subscribeProductOffering'
, ''
, 'HomeZone'
, 'pm_pws.clientAltamira.accountManagement'
, 'subscribeHomeZone'
, 'OCSProvision.accountManagement.v1.types.subscribeHomeZone'
, 'OCSProvision.accountManagement.v1.types.subscribeHomeZoneResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,ZIPCode'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 27
, 'unsubscribeProduct'
, ''
, 'HomeZone'
, 'pm_pws.clientAltamira.accountManagement'
, 'unsubscribeHomeZone'
, 'OCSProvision.accountManagement.v1.types.unsubscribeHomeZone'
, 'OCSProvision.accountManagement.v1.types.unsubscribeHomeZoneResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 28
, 'queryProductSubscription'
, ''
, 'HomeZone'
, 'pm_pws.clientAltamira.accountManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 29
, 'queryProduct'
, ''
, 'HomeZone'
, 'pm_pws.clientAltamira.accountManagement'
, 'queryHomeZone'
, 'OCSProvision.accountManagement.v1.types.queryHomeZone'
, 'OCSProvision.accountManagement.v1.types.queryHomeZoneResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 1
, 'homeZoneLocationNumberInfoList.locationNumberId'
, ''
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 30
, 'updateProduct'
, ''
, 'HomeZone'
, 'pm_pws.clientAltamira.accountManagement'
, 'changeHomeZone'
, 'OCSProvision.accountManagement.v1.types.changeHomeZone'
, 'OCSProvision.accountManagement.v1.types.changeHomeZoneResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 31
, 'subscribeProductOffering'
, ''
, 'Tribe'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'addTribeMember'
, 'OCSProvision.listAndTribeManagement.v1.types.addTribeMember'
, 'OCSProvision.listAndTribeManagement.v1.types.addTribeMemberResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,tribeIdentifier.tribeId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 32
, 'unsubscribeProduct'
, ''
, 'Tribe'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'deleteTribeMember'
, 'OCSProvision.listAndTribeManagement.v1.types.deleteTribeMember'
, 'OCSProvision.listAndTribeManagement.v1.types.deleteTribeMemberResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 33
, 'queryProductSubscription'
, ''
, 'Tribe'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 34
, 'queryProduct'
, ''
, 'Tribe'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'queryTribesBasics'
, 'OCSProvision.listAndTribeManagement.v1.types.queryTribesBasics'
, 'OCSProvision.listAndTribeManagement.v1.types.queryTribesBasicsResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, 'tribeInfoList.tribeBasicInfo'
, ',tribeIdentifier.tribeId'
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 35
, 'subscribeProductOffering'
, ''
, 'RecurrentBalanceTransfer'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'subscribeCyclicBalanceTransfer'
, 'OCSProvision.listAndTribeManagement.v1.types.subscribeCyclicBalanceTransfer'
, 'OCSProvision.listAndTribeManagement.v1.types.subscribeCyclicBalanceTransferResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,cyclicCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 36
, 'unsubscribeProduct'
, ''
, 'RecurrentBalanceTransfer'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServicesResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 37
, 'queryProductSubscription'
, ''
, 'RecurrentBalanceTransfer'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 38
, 'queryProduct'
, ''
, 'RecurrentBalanceTransfer'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'queryCyclicBalanceTransfers'
, 'OCSProvision.listAndTribeManagement.v1.types.queryCyclicBalanceTransfers'
, 'OCSProvision.listAndTribeManagement.v1.types.queryCyclicBalanceTransfersResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, ''
, ''
, 1
, 1
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 39
, 'subscribeProductOffering'
, ''
, 'RecurrentCharge'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'subscribeCyclicChargingServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicChargingServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicChargingServicesResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,cyclicCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 40
, 'unsubscribeProduct'
, ''
, 'RecurrentCharge'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServicesResponse'
, ''
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 41
, 'queryProductSubscription'
, ''
, 'RecurrentCharge'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 42
, 'queryProduct'
, ''
, 'RecurrentCharge'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'queryCyclicChargingServicesDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicChargingServicesDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicChargingServicesDetailsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'cyclicChargingDetailedInfoList.cyclicChargingDetailedInfo'
, 'opReference.opId'
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 43
, 'subscribeProductOffering'
, ''
, 'RecurrentTopUp'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'subscribeCyclicTopUps'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicTopUps'
, 'OCSProvision.cyclicActionsManagement.v1.types.subscribeCyclicTopUpsResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,cyclicCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 44
, 'unsubscribeProduct'
, ''
, 'RecurrentTopUp'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServices'
, 'OCSProvision.cyclicActionsManagement.v1.types.unsubscribeCyclicServicesResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 45
, 'queryProductSubscription'
, ''
, 'RecurrentTopUp'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 46
, 'queryProduct'
, ''
, 'RecurrentTopUp'
, 'pm_pws.clientAltamira.cyclicActionsManagement'
, 'queryCyclicTopUpsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicTopUpsDetails'
, 'OCSProvision.cyclicActionsManagement.v1.types.queryCyclicTopUpsDetailsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'cyclicTopUpDetailedInfoList.cyclicTopUpDetailedInfo'
, 'opReference.opId'
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 47
, 'subscribeProductOffering'
, ''
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'subscribeList'
, 'OCSProvision.listAndTribeManagement.v1.types.subscribeList'
, 'OCSProvision.listAndTribeManagement.v1.types.subscribeListResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,listCode.string'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 48
, 'unsubscribeProduct'
, ''
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'unsubscribeList'
, 'OCSProvision.listAndTribeManagement.v1.types.unsubscribeList'
, 'OCSProvision.listAndTribeManagement.v1.types.unsubscribeListResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 49
, 'queryProductSubscription'
, ''
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 50
, 'queryProduct'
, 'queryListsBasics'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'queryListsBasics'
, 'OCSProvision.listAndTribeManagement.v1.types.queryListsBasics'
, 'OCSProvision.listAndTribeManagement.v1.types.queryListsBasicsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'listBasicInfoList.listBasicInfo'
, ''
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 51
, 'queryProduct'
, 'queryListMembers'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'queryListMembers'
, 'OCSProvision.listAndTribeManagement.v1.types.queryListMembers'
, 'OCSProvision.listAndTribeManagement.v1.types.queryListMembersResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, 'listMemberInfoList.listMemberBasicInfo'
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 52
, 'updateProduct'
, 'blockList'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'blockList'
, 'OCSProvision.listAndTribeManagement.v1.types.blockList'
, 'OCSProvision.listAndTribeManagement.v1.types.blockListResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 53
, 'updateProduct'
, 'setListMembers'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'setListMembers'
, 'OCSProvision.listAndTribeManagement.v1.types.setListMembers'
, 'OCSProvision.listAndTribeManagement.v1.types.setListMembersResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 54
, 'updateProduct'
, 'unblockList'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'unblockList'
, 'OCSProvision.listAndTribeManagement.v1.types.unblockList'
, 'OCSProvision.listAndTribeManagement.v1.types.unblockListResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 55
, 'updateProduct'
, 'disableList'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'disableList'
, 'OCSProvision.listAndTribeManagement.v1.types.disableList'
, 'OCSProvision.listAndTribeManagement.v1.types.disableListResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 56
, 'updateProduct'
, 'enableList'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'enableList'
, 'OCSProvision.listAndTribeManagement.v1.types.enableList'
, 'OCSProvision.listAndTribeManagement.v1.types.enableListResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 57
, 'updateProduct'
, 'addListMember'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'addListMember'
, ''
, ''
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 58
, 'updateProduct'
, 'changeListMember'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'changeListMember'
, ''
, ''
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 59
, 'updateProduct'
, 'deleteListMember'
, 'List'
, 'pm_pws.clientAltamira.listAndTribeManagement'
, 'deleteListMember'
, ''
, ''
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 60
, 'subscribeProductOffering'
, ''
, 'TariffPlanChange'
, 'pm_pws.clientAltamira.accountManagement'
, 'changeTariffPlanId'
, 'OCSProvision.accountManagement.v1.types.changeTariffPlanId'
, 'OCSProvision.accountManagement.v1.types.changeTariffPlanIdResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,tariffPlanId'
, 1
, 1
, 1
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 61
, 'queryProductSubscription'
, ''
, 'TariffPlanChange'
, 'pm_pws.clientAltamira.accountManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 62
, 'subscribeProductOffering'
, ''
, 'PromotionalProfile'
, 'pm_pws.clientAltamira.accountManagement'
, 'subscribeSegment'
, 'OCSProvision.accountManagement.v1.types.subscribeSegment'
, 'OCSProvision.accountManagement.v1.types.subscribeSegmentResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,segmentId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 63
, 'unsubscribeProduct'
, ''
, 'PromotionalProfile'
, 'pm_pws.clientAltamira.accountManagement'
, 'unsubscribeSegment'
, 'OCSProvision.accountManagement.v1.types.unsubscribeSegment'
, 'OCSProvision.accountManagement.v1.types.unsubscribeSegmentResponse'
, 'productId.productOfferingId.id'
, ''
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 64
, 'queryProductSubscription'
, ''
, 'PromotionalProfile'
, 'pm_pws.clientAltamira.accountManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 65
, 'queryProduct'
, ''
, 'PromotionalProfile'
, 'pm_pws.clientAltamira.accountManagement'
, 'querySegments'
, 'OCSProvision.accountManagement.v1.types.querySegments'
, 'OCSProvision.accountManagement.v1.types.querySegmentsResponse'
, ''
, ''
, ''
, 'productId.type'
, 0
, 'segmentInfoList.segmentInfo'
, ',segmentId'
, 1
, 1
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 66
, 'updateProduct'
, ''
, 'PromotionalProfile'
, 'pm_pws.clientAltamira.accountManagement'
, 'changeSegment'
, ''
, ''
, ''
, ''
, ''
, ''
, 0
, ''
, ''
, 1
, 0
, 0
, 0
, ''
, 1
, 'v13'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 67
, 'subscribeProductOffering'
, ''
, 'MessageSubscription'
, 'pm_pws.clientAltamira.accountManagement'
, 'subscribeSMS'
, 'OCSProvision.accountManagement.v1.types.subscribeSMS'
, 'OCSProvision.accountManagement.v1.types.subscribeSMSResponse'
, 'productOfferingId.id'
, ''
, ''
, ''
, 0
, ''
, 'opId,smsSubscriptionId'
, 1
, 1
, 1
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 68
, 'unsubscribeProduct'
, ''
, 'MessageSubscription'
, 'pm_pws.clientAltamira.accountManagement'
, 'subscribeSMS'
, 'OCSProvision.accountManagement.v1.types.subscribeSMS'
, 'OCSProvision.accountManagement.v1.types.subscribeSMSResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, ''
, 0
, ''
, ''
, 1
, 1
, 0
, 1
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 69
, 'queryProductSubscription'
, ''
, 'MessageSubscription'
, 'pm_pws.clientAltamira.accountManagement'
, ''
, ''
, ''
, 'productId.productOfferingId.id'
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, ''
, ''
, 0
, 0
, 0
, 0
, ''
, 1
, 'v11'
);
INSERT INTO pmOperation 
( pmoperationid
, provisioningoperationtype
, operationid
, offername
, interfacename
, operationname
, altamirarequestds
, altamiraresponseds
, fieldforprodofferingid
, fieldforprodspecificationid
, fieldforprodinstanceid
, fieldforglobalselection
, globalselectionlastactiveid
, prodinstancepathaa
, prodidfieldpathaa
, invokealtamira
, updateserviceregistry
, activeserviceregistry
, inactiveserviceregistry
, QUERYSRPRODIDAAPATHRQ
, status
, release
)
VALUES 
( 70
, 'queryProduct'
, ''
, 'MessageSubscription'
, 'pm_pws.clientAltamira.accountManagement'
, 'querySMSSubscriptions'
, 'OCSProvision.accountManagement.v1.types.querySMSSubscriptions'
, 'OCSProvision.accountManagement.v1.types.querySMSSubscriptionsResponse'
, ''
, 'productId.productSpecificationId.productNumber'
, 'productId.productInstanceId.productSerialNumber'
, 'productId.type'
, 0
, 'smsSubscriptionsInfoList.smsSubscriptionsInfo'
, ',smsSubscriptionId'
, 1
, 0
, 0
, 0
, ''
, 1
, 'v11'
);

REM INSERTING into pmOperationField

INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.boltonIdentifier.boltonCode'
, 'boltonInfo.boltonIdentifier.boltonCode'
, ''
, 1
, 1
, 'BoltOn.BoltOnCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.boltonIdentifier.boltonTypeCode'
, 'boltonInfo.boltonIdentifier.boltonTypeCode'
, ''
, 0
, 1
, 'BoltOnType.BoltOnTypeCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 0
, 0
, 'boltonInfo.boltonIdentifier.boltonInstance'
, 'boltonInfo.boltonIdentifier.boltonInstance'
, ''
, 0
, 1
, 'opReference.opId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.boltonAmount'
, 'boltonInfo.boltonAmount.long'
, ''
, 0
, 1
, 'BoltOnValueOffering.BoltOnAmount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.specialTime'
, 'boltonInfo.timeInterval.endTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.date'
, 'boltonInfo.timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.maxUnitsPerSession'
, 'boltonInfo.maxUnitsPerSession.long'
, ''
, 0
, 1
, 'SessionOffering.MaxUnitsPerSession'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.boltonLD'
, 'boltonInfo.boltonLD.long'
, ''
, 0
, 1
, 'BoltOnValueOffering.BoltOnLD'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.specialTime'
, 'boltonInfo.timeInterval.startTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.timeOffset'
, 'boltonInfo.timeInterval.endTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.date'
, 'boltonInfo.timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.chargingModality'
, 'boltonInfo.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.boltonMaxNumberOfSessions'
, 'boltonInfo.boltonMaxNumberOfSessions.long'
, ''
, 0
, 1
, 'SessionOffering.BoltOnMaxNumberOfSessions'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 1
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.timeOffset'
, 'boltonInfo.timeInterval.startTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 2
, 0
, 1
, 0
, 'productId.productInstanceId.productSerialNumber'
, 'boltonIdentifier.boltonInstance'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 2
, 0
, 0
, 1
, 'BoltOnType.BoltOnTypeCode'
, 'boltonIdentifier.boltonTypeCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 4
, 1
, 1
, 0
, 'boltonStatusFilterList.boltonStatus'
, 'boltonStatusFilterList.boltonStatus'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 4
, 0
, 0
, 1
, 'BoltOnType.BoltOnTypeCode'
, 'boltonIdentifierFilter.boltonTypeCode'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 4
, 1
, 1
, 0
, 'boltonInstanceDetailedInfoFlag'
, 'extension.boltonInstanceDetailedInfoFlag.FlagType'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'timeCyclicInfo.firstExecutionDate'
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'timeCyclicInfo.immediateFlag'
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'N'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'timeCyclicInfo.prorateFlag'
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'timeCyclicInfo.chargingModality'
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.boltonIdentifier.boltonCode'
, 'boltonInfoList.boltonInfo.boltonIdentifier.boltonCode'
, '0'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.boltonAmount'
, 'boltonInfoList.boltonInfo.boltonAmount.long'
, ''
, 0
, 1
, 'RecurrentBORenewalPhaseArr.RecurrentBoltOnRenewalPhase.CyclicBoltOnAwarding.boltonAmount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.boltonLD'
, 'boltonInfoList.boltonInfo.boltonLD.long'
, ''
, 0
, 0
, 'RecurrentBORenewalPhaseArr.RecurrentBoltOnRenewalPhase.CyclicBoltOnAwarding.boltonLD'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.boltonMaxNumberOfSessions'
, 'boltonInfoList.boltonInfo.boltonMaxNumberOfSessions.long'
, ''
, 0
, 0
, 'RecurrentBORenewalPhaseArr.RecurrentBoltOnRenewalPhase.CyclicBoltOnAwarding.boltonMaxNumberOfSessions'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.chargingModality'
, 'boltonInfoList.boltonInfo.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.maxUnitsPerSession'
, 'boltonInfoList.boltonInfo.maxUnitsPerSession.long'
, ''
, 0
, 0
, 'CyclicBoltOnAwarding.maxUnitsPerSession'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.startTime.date'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.startTime.timeOffset'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.startTime.specialTime'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.endTime.date'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.endTime.specialTime'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoList.boltonInfo.timeInterval.endTime.timeOffset'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCalculation.calcBoltonAmountCode'
, 'boltonInfoCalculation.calcBoltonAmountCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCalculation.calcBoltonLDCode'
, 'boltonInfoCalculation.calcBoltonLDCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCalculation.calcBoltonPriceCode'
, 'boltonInfoCalculation.calcBoltonCostCode'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcBoltonCostCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCalculation.calcMaxNumberOfSessionsCode'
, 'boltonInfoCalculation.calcMaxNumberOfSessionsCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.boltonAmount'
, 'boltonInfoCycleChange.boltonAmount.long'
, ''
, 0
, 1
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.boltonAmount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.boltonLD'
, 'boltonInfoCycleChange.boltonLD.long'
, ''
, 0
, 0
, 'RecurrentBoltOnRenewalPhase.Price.Amount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.boltonPrice'
, 'boltonInfoCycleChange.boltonCost.long'
, ''
, 0
, 0
, 'RecurrentBoltOn.Price.Amount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.boltonMaxNumberOfSessions'
, 'boltonInfoCycleChange.boltonMaxNumberOfSessions'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcMaxNumberOfSessionsCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.chargingModality'
, 'boltonInfoCycleChange.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.calcBoltonAmountCode'
, 'boltonInfoCycleChange.calcBoltonAmountCode'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcBoltonAmountCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.calcBoltonLDCode'
, 'boltonInfoCycleChange.calcBoltonLDCode'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcBoltonLDCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.calcBoltonPriceCode'
, 'boltonInfoCycleChange.calcBoltonCostCode'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcBoltonCostCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.calcMaxNumberOfSessionsCode'
, 'boltonInfoCycleChange.calcMaxNumberOfSessionsCode'
, ''
, 0
, 0
, 'RecurrentBoltOnSpecificatio.CABOCycleChngeSpecification.calcMaxNumberOfSessionsCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 5
, 1
, 1
, 0
, 'boltonInfoCycleChange.prorateFlag'
, 'boltonInfoCycleChange.prorateFlag'
, 'no'
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.CACycleChangeSpecification.InfoCycleChange_ProrateFlag'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 6
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 6
, 0
, 1
, 0
, 'productId.productInstanceId.productSerialNumber'
, 'opReference.opId'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 6
, 1
, 1
, 0
, 'cyclicServicesCascadeFlag'
, 'cyclicServicesCascadeFlag'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 8
, 1
, 1
, 0
, 'statusCyclicFilter'
, 'statusCyclicFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 8
, 1
, 1
, 0
, 'billingCycleFlagFilter'
, 'billingCycleFlagFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.validityPeriod'
, 'cyclicInfo.usageCyclicInfo.validityPeriod'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.numberOfExecutions'
, 'cyclicInfo.usageCyclicInfo.numberOfExecutions'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.prorateTypeCode'
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.prorateTypeCode'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.proratePercentage'
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.proratePercentage'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.proratePrice'
, 'cyclicInfo.usageCyclicInfo.firstPeriodProrate.prorateCost'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.prorateTypeCode'
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.prorateTypeCode'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.proratePercentage'
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.proratePercentage'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.proratePrice'
, 'cyclicInfo.usageCyclicInfo.transitionalPeriodProrate.prorateCost.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.rollOverInfo'
, 'cyclicInfo.usageCyclicInfo.rollOverInfo'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.rollOverInfo.latencyPeriods'
, 'cyclicInfo.usageCyclicInfo.rollOverInfo.latencyPeriods'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'cyclicInfo.usageCyclicInfo.rollOverInfo.draggableSurplusAmount'
, 'cyclicInfo.usageCyclicInfo.rollOverInfo.draggableSurplusAmount'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.boltonIdentifier.boltonCode'
, 'boltonInfoList.boltonInfo.boltonIdentifier.boltonCode'
, '0'
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.boltonAmount'
, 'boltonInfoList.boltonInfo.boltonAmount.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.boltonLD'
, 'boltonInfoList.boltonInfo.boltonLD.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.boltonMaxNumberOfSessions'
, 'boltonInfoList.boltonInfo.boltonMaxNumberOfSessions.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.date'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.timeOffset'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.startTime.specialTime'
, 'boltonInfoList.boltonInfo.timeInterval.startTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.date'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.specialTime'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.timeInterval.endTime.timeOffset'
, 'boltonInfoList.boltonInfo.timeInterval.endTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 9
, 1
, 1
, 0
, 'boltonInfo.maxUnitsPerSession'
, 'boltonInfoList.boltonInfo.maxUnitsPerSession.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 10
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 10
, 1
, 1
, 0
, 'cyclicServicesCascadeFlag'
, 'cyclicServicesCascadeFlag'
, 'no'
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 12
, 1
, 1
, 0
, 'billingCycleFlagFilter'
, 'billingCycleFlagFilter'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccId'
, 'uccInfo.uccId'
, ''
, 1
, 1
, 'UsageControl.UsageControlIdentifier'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.usageThresholdAmount'
, 'uccInfo.usageThresholdAmount'
, ''
, 0
, 1
, 'UsageControlThreshold.UsageThresholdAmount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.startTime.date'
, 'uccInfo.timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.startTime.timeOffset'
, 'uccInfo.timeInterval.startTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.startTime.specialTime'
, 'uccInfo.timeInterval.startTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.endTime.date'
, 'uccInfo.timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.endTime.timeOffset'
, 'uccInfo.timeInterval.endTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.timeInterval.endTime.specialTime'
, 'uccInfo.timeInterval.endTime.specialTime'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.usageRuleCode'
, 'uccInfo.usageRuleCode'
, ''
, 0
, 1
, 'UsageControlSpecification.UsageRuleCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 13
, 1
, 1
, 0
, 'uccInfo.usageRuleSetId'
, 'uccInfo.usageRuleSetId'
, ''
, 0
, 1
, 'UsageControlApplicabilityConditionsSpecification.UsageRuleSetId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 14
, 1
, 1
, 0
, 'uccId'
, 'uccId'
, ''
, 1
, 1
, 'UsageControl.UsageControlIdentifier'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 16
, 0
, 0
, 1
, 'UsageControl.UsageControlIdentifier'
, 'uccId'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 17
, 1
, 1
, 0
, 'uccId'
, 'uccId'
, ''
, 1
, 1
, 'UsageControl.UsageControlIdentifier'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 17
, 1
, 1
, 0
, 'uccDeltaValue'
, 'uccDeltaValue.long'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 18
, 0
, 1
, 1
, 'productId'
, 'productId'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 18
, 1
, 1
, 0
, 'timeInterval.startTime.date'
, 'timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 18
, 1
, 1
, 0
, 'timeInterval.endTime.date'
, 'timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 19
, 0
, 1
, 1
, 'productId'
, 'productId'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 19
, 1
, 1
, 0
, 'cyclicServicesCascadeFlag'
, 'cyclicServicesCascadeFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 21
, 1
, 1
, 0
, 'timeIntervalFilter.startTime.date'
, 'timeIntervalFilter.startTime.date'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 21
, 1
, 1
, 0
, 'timeIntervalFilter.endTime.date'
, 'timeIntervalFilter.endTime.date'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 21
, 1
, 1
, 0
, 'productStatusFilter'
, 'productStatusFilter'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 21
, 1
, 1
, 0
, 'customizedProductFlagFilter'
, 'customizedProductFlagFilter'
, 'no'
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 22
, 1
, 1
, 0
, 'serviceClass'
, 'serviceClass'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 22
, 1
, 1
, 0
, 'tariffPlanId'
, 'servicePlansInfoList.servicePlansInfo.tariffPlanId'
, ''
, 1
, 1
, 'ServiceTariffPlan.ServiceTariffPlanId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 23
, 1
, 1
, 0
, 'serviceClass'
, 'serviceClass'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 23
, 1
, 1
, 0
, 'tariffPlanId'
, 'servicePlansInfoList.servicePlansInfo.tariffPlanId'
, ''
, 1
, 1
, 'ServiceTariffPlan.ServiceTariffPlanId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 25
, 1
, 1
, 0
, 'serviceClass'
, 'serviceClass'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 26
, 1
, 1
, 0
, 'zipCode'
, 'ZIPCode'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 26
, 1
, 1
, 0
, 'homeZoneLocationNumberInfoList.locationNumberId'
, 'homeZoneLocationNumberInfoList.locationNumberId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 29
, 0
, 1
, 0
, 'productId.productInstanceId.productSerialNumber'
, 'opReference.opId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 30
, 1
, 1
, 0
, 'zipCode'
, 'ZIPCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 30
, 1
, 1
, 0
, 'homeZoneLocationNumberInfoList.locationNumberId'
, 'homeZoneLocationNumberInfoList.locationNumberId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 31
, 1
, 1
, 0
, 'tribeId'
, 'tribeIdentifier.tribeId'
, ''
, 1
, 1
, 'Tribe.TribeId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 31
, 1
, 1
, 0
, 'subTribeId'
, 'tribeIdentifier.subTribeId'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 32
, 1
, 1
, 0
, 'tribeId'
, 'tribeIdentifier.tribeId'
, ''
, 1
, 1
, 'Tribe.TribeId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 32
, 1
, 1
, 0
, 'subTribeId'
, 'tribeIdentifier.subTribeId'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 34
, 0
, 0
, 1
, 'Tribe.TribeId'
, 'tribeIdentifier.tribeId'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 34
, 1
, 1
, 0
, 'subTribeId'
, 'tribeIdentifier.subTribeId'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'donorSubscriberId'
, 'donorSubscriberId'
, ''
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'receiverSubscriberId'
, 'receiverSubscriberId'
, ''
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'payer'
, 'payer'
, ''
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'N'
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, ''
, 0
, 0
, 'RecurrentChargePhase.ChargingMode.ChargingModality'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoList.balanceTransferInfo.transferAmount'
, 'balanceTransferInfoList.balanceTransferInfo.transferAmount.long'
, ''
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoList.balanceTransferInfo.transferCost'
, 'balanceTransferInfoList.balanceTransferInfo.transferCost.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoList.balanceTransferInfo.transferWalletId'
, 'balanceTransferInfoList.balanceTransferInfo.transferWalletId'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoList.balanceTransferInfo.topUpOrigin'
, 'balanceTransferInfoList.balanceTransferInfo.topUpOrigin'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoList.balanceTransferInfo.boltonIdentifier.boltonCode'
, 'balanceTransferInfoList.balanceTransferInfo.boltonIdentifier.boltonCode'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoCalculation.calcBalanceTransferAmountCode'
, 'balanceTransferInfoCalculation.calcBalanceTransferAmountCode'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferInfoCalculation.calcBalanceTransferCostCode'
, 'balanceTransferInfoCalculation.calcBalanceTransferCostCode'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferCycleChange.balanceTransferCost'
, 'balanceTransferCycleChange.balanceTransferCost.long'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferCycleChange.calcBalanceTransferCostCode'
, 'balanceTransferCycleChange.calcBalanceTransferCostCode'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferCycleChange.balanceTransferAmount'
, 'balanceTransferCycleChange.balanceTransferAmount'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferCycleChange.calcBalanceTransferAmountCode'
, 'balanceTransferCycleChange.calcBalanceTransferAmountCode'
, ''
, 0
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 35
, 1
, 1
, 0
, 'balanceTransferCycleChange.prorateFlag'
, 'balanceTransferCycleChange.prorateFlag'
, ''
, 1
, 1
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 36
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 36
, 1
, 1
, 0
, 'cyclicServicesCascadeFlag'
, 'cyclicServicesCascadeFlag'
, 'no'
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 38
, 1
, 1
, 0
, 'statusCyclicFilter'
, 'statusCyclicFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 38
, 1
, 1
, 0
, 'billingCycleFlagFilter'
, 'billingCycleFlagFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'N'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingInfoList.chargingInfo.chargingAmount'
, 'chargingInfoList.chargingInfo.chargingAmount.long'
, ''
, 0
, 1
, 'RecurrentChargePhase.Price.Amount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingInfoList.chargingInfo.chargingModality'
, 'chargingInfoList.chargingInfo.chargingModality'
, ''
, 0
, 0
, 'RecurrentChargePhase.ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingInfoList.chargingInfo.totalFlag'
, 'chargingInfoList.chargingInfo.totalFlag'
, ''
, 1
, 1
, 'RecurrentChargePhase.totalFlag'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'calcChargingAmountCode'
, 'calcChargingAmountCode'
, ''
, 0
, 0
, 'CACHCycleChngeSpecification.calcChargingAmountCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingCycleChange.chargingAmount'
, 'chargingCycleChange.chargingAmount.long'
, ''
, 0
, 1
, 'RecurrentCharge.Price.Amount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingCycleChange.calcChargingAmountCode'
, 'chargingCycleChange.calcChargingAmountCode'
, '1'
, 0
, 1
, 'CACHCycleChngeSpecification.calcChargingAmountCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingCycleChange.prorateFlag'
, 'chargingCycleChange.prorateFlag'
, ''
, 0
, 1
, 'CACycleChangeSpecification.InfoCycleChange_ProrateFlag'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingCycleChange.totalFlag'
, 'chargingCycleChange.totalFlag'
, ''
, 0
, 1
, 'CACHCycleChngeSpecification.totalFlag'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 39
, 1
, 1
, 0
, 'chargingCycleChange.chargingModality'
, 'chargingCycleChange.chargingModality'
, ''
, 0
, 0
, 'RecurrentCharge.ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 40
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 42
, 1
, 1
, 0
, 'statusCyclicFilter'
, 'statusCyclicFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 42
, 1
, 1
, 0
, 'billingCycleFlagFilter'
, 'billingCycleFlagFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, 'cyclicInfo.timeCyclicInfo.firstExecutionDate'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'cyclicInfo.timeCyclicInfo.immediateFlag'
, 'N'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'cyclicInfo.timeCyclicInfo.prorateFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, 'cyclicInfo.timeCyclicInfo.chargingModality'
, ''
, 0
, 0
, 'ChargingMode.ChargingModality'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoList.topUpInfo.topUpAmount'
, 'topUpInfoList.topUpInfo.topUpAmount'
, ''
, 0
, 1
, 'RechargedAmount.TopUpAmountInEachExecution'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoList.topUpInfo.topUpCode'
, 'topUpInfoList.topUpInfo.topUpOrigin'
, ''
, 0
, 1
, 'TopUpOrigin.TopUpOrCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'calcTopUpAmountCode'
, 'calcTopUpAmountCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoCycleChange.topUpCode'
, 'topUpInfoCycleChange.topUpOrigin'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoCycleChange.topUpAmount'
, 'topUpInfoCycleChange.topUpAmount'
, ''
, 0
, 1
, 'CATUCycleChngeSpecification.TopUpAmount'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoCycleChange.calcTopUpAmountCode'
, 'topUpInfoCycleChange.calcTopUpAmountCode'
, ''
, 0
, 1
, 'CATUCycleChngeSpecification.PercentAwardedAmountCycleChange'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 43
, 1
, 1
, 0
, 'topUpInfoCycleChange.prorateFlag'
, 'topUpInfoCycleChange.prorateFlag'
, ''
, 1
, 1
, 'CACycleChangeSpecification.InfoCycleChange_ProrateFlag'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 44
, 1
, 0
, 0
, 'cyclicCode'
, 'cyclicCode.string'
, ''
, 1
, 1
, 'RecurrentBoltOnSpecificatio.CyclicActionSpecification.Code'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 44
, 1
, 1
, 0
, 'cyclicServicesCascadeFlag'
, 'cyclicServicesCascadeFlag'
, 'no'
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 46
, 1
, 1
, 0
, 'statusCyclicFilter'
, 'statusCyclicFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 46
, 1
, 1
, 0
, 'billingCycleFlagFilter'
, 'billingCycleFlagFilter'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 47
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 48
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 51
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 57
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 57
, 1
, 1
, 0
, 'member'
, 'member.e164Number'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 52
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 52
, 1
, 1
, 0
, 'blockingTime.startTime.date'
, 'blockingTime.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 52
, 1
, 1
, 0
, 'blockingTime.endTime.timeOffset'
, 'blockingTime.endTime.timeOffset.duration'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 58
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 58
, 1
, 1
, 0
, 'oldMember'
, 'oldMember.e164Number'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 58
, 1
, 1
, 0
, 'newMember'
, 'newMember.e164Number'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 59
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 59
, 1
, 1
, 0
, 'member'
, 'member.e164Number'
, ''
, 1
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 55
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 56
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 53
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 53
, 1
, 1
, 0
, 'memberList.member'
, 'memberList.member.e164Number'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 54
, 1
, 0
, 0
, 'listCode'
, 'listCode.string'
, ''
, 1
, 1
, 'List.ListCode'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 60
, 1
, 1
, 0
, 'tariffPlanId'
, 'tariffPlanId'
, ''
, 1
, 1
, 'TariffPlan.TariffPlanIdentifier'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 60
, 1
, 1
, 0
, 'startTime.date'
, 'timeInterval.startTime.date'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 60
, 1
, 1
, 0
, 'startTime.specialTime'
, 'timeInterval.startTime.specialTime'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 60
, 1
, 1
, 0
, 'startTime.timeOffset'
, 'timeInterval.startTime.timeOffset.duration'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 62
, 0
, 0
, 1
, 'segmentId'
, 'segmentId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 62
, 1
, 1
, 0
, 'timeInterval.startTime.date'
, 'timeInterval.startTime.date'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 62
, 1
, 1
, 0
, 'timeInterval.endTime.date'
, 'timeInterval.endTime.date'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 62
, 1
, 0
, 0
, 'promotionalProfileReference'
, 'segmentReference'
, ''
, 0
, 1
, 'opReference.opId'
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 63
, 0
, 0
, 1
, 'segmentId'
, 'segmentId'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 63
, 0
, 1
, 0
, 'productId.productInstanceId.productSerialNumber'
, 'segmentReference'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 65
, 1
, 1
, 0
, 'timeIntervalFilter.startTime.date'
, 'timeInterval.startTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 65
, 1
, 1
, 0
, 'timeIntervalFilter.endTime.date'
, 'timeInterval.endTime.date'
, ''
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 65
, 1
, 1
, 0
, 'statusFlagFilter'
, 'statusFlagFilter'
, 'no'
, 0
, 1
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 66
, 0
, 0
, 1
, 'segmentId'
, 'segmentId'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 66
, 0
, 1
, 0
, 'productId.productInstanceId.productSerialNumber'
, 'segmentReference'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 66
, 1
, 1
, 0
, 'timeInterval.startTime.date'
, 'timeInterval.startTime.date'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 66
, 1
, 1
, 0
, 'timeInterval.endTime.date'
, 'timeInterval.endTime.date'
, ''
, 0
, 0
, ''
, 0 
, 'v13'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 67
, 0
, 0
, 1
, 'smsSubscriptionId'
, 'smsSubscriptionId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 67
, 0
, 0
, 0
, 'cancellationFlag'
, 'cancellationFlag'
, 'no'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 68
, 0
, 0
, 1
, 'smsSubscriptionId'
, 'smsSubscriptionId'
, ''
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 68
, 0
, 0
, 0
, 'cancellationFlag'
, 'cancellationFlag'
, 'yes'
, 1
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 70
, 1
, 1
, 0
, 'langCode'
, 'langCode'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);
INSERT INTO pmOperationField
( cwdocid
, pmoperationid
, characteristic
, fromexternalrequest
, fromcatalog
, sourcefield
, destinationfield
, defaultvalue
, mandatory
, overridden
, overriddencatalogfield
, ignoreToAA 
, release )
VALUES 
( CWDOCSEQ.NEXTVAL
, 70
, 1
, 1
, 0
, 'orderNumber'
, 'orderNumber'
, ''
, 0
, 0
, ''
, 0 
, 'v11'
);

COMMIT;
