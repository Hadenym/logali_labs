@AbapCatalog.sqlViewName: 'ZV_CATEG_8403L'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Caegorias'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_CATEG_8403
  as select from ztb_catego_8403
{
  key bi_categ    as Categoria,
      descripcion as Descripcion

}
