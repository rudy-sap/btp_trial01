@EndUserText.label: 'PO Projection Data Model'
@Search.searchable: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI: {
  headerInfo: {
    typeName: 'Purchase Order Details',
    typeNamePlural: 'Purchase Orders' } }
define root view entity zcb998014_ddlp_po
  provider contract transactional_query as
  projection on zcb998014_ddlr_po {
  
  @UI.facet: [{ id:        'POHeader',
                type:      #IDENTIFICATION_REFERENCE,
                label:     'PO Header',
                position:  10,
                purpose:   #STANDARD },
                   
              { id:            'Item',
                type:          #LINEITEM_REFERENCE,
                label:         'Items',
                position:      20,
                targetElement: 'items' }
              ]
  @UI: { lineItem:        [{ position: 10, importance: #HIGH }],
         selectionField:  [{ position: 10 }],
         identification:  [{ position: 10 }]
       }
  @Search.defaultSearchElement: true
  @EndUserText.label: 'Purchasing Document'
  key po_order,
  
  @UI: { lineItem:        [{ position: 20, importance: #HIGH }],
         selectionField:  [{ position: 20 }],
         identification:  [{ position: 20 }]
       }
  @Search.defaultSearchElement: true
  @EndUserText.label: 'Company Code'
  comp_code,
  
  @UI: { lineItem:        [{ position: 30, importance: #HIGH }],
         selectionField:  [{ position: 30 }],
         identification:  [{ position: 30 }]
       }
  @Search.defaultSearchElement: true
  @EndUserText.label: 'Document Type'
  doc_type,

  @UI: { lineItem:        [{ position: 40, importance: #HIGH }] }
  @EndUserText.label: 'Vendor'
  vendor,
  
  @UI: { lineItem:        [{ position: 50, importance: #HIGH }] }
  @EndUserText.label: 'Status'
  status,

  @UI: { lineItem:        [{ position: 60, importance: #HIGH }] }
  @EndUserText.label: 'Created By'
  created_by,

  @UI: { lineItem:        [{ position: 70, importance: #HIGH }] }
  @EndUserText.label: 'Created At'
  created_at,

  items
}
