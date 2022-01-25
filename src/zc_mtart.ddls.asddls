@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Material type View'

@UI: {
 headerInfo: { typeName: 'Material type', typeNamePlural: 'Material types', title: { type: #STANDARD, value: 'mtart' } } }

@Search.searchable: true

define root view entity Zc_Mtart
  as select from zt134
{

      @UI.facet: [ {      id:            'MType',
                          importance: #HIGH,
                         purpose:         #STANDARD,
                         type:            #IDENTIFICATION_REFERENCE,
                         label:           'Material type',
                         position:        10 } ]


      @UI: {
          lineItem:       [ { position: 10, importance: #HIGH, label: 'Material type' } ],
          identification: [ { position: 10, label: 'Material type' } ] }
      @Search.defaultSearchElement: true
  key mtart,

      @UI: {
            lineItem:       [ { position: 20, importance: #HIGH, label: 'Material type Desc.' } ],
            identification: [ { position: 20, label: 'Material type Desc.' } ] }
      maktx

}
