@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcb998014_ddl_po as
  select from zcb998014_poitem {

  @UI: {lineItem: [{ position: 10 }]}
  @EndUserText.label: 'Purchasing Document'
  key po_order,
  @UI: {lineItem: [{ position: 20 }]}
  @EndUserText.label: 'Item'
  key order_item,
  @UI: {lineItem: [{ position: 30 }]}
  @EndUserText.label: 'Unit'
  unit,
  @UI: {lineItem: [{ position: 40 }]}
  @EndUserText.label: 'Quantity'
  @Semantics.quantity.unitOfMeasure: 'unit'
  quantity
}

