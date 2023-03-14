@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Root Data Model'
define root view entity zcb998014_ddlr_po as
select from zcb998014_pohead
association [1..*] to zcb998014_poitem as items
  on $projection.po_order = items.po_order {

  key po_order,
  comp_code,
  doc_type,
  vendor,
  status,
  created_by,
  created_at,
  items
}
