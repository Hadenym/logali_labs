@AbapCatalog.sqlViewName: 'ZV_VENTASVL_8403'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas de Clientes/Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_VENTAS_8403
  as select from ztbclnts_lib8403
{
  id_libro                     as IDLibro,
  count( distinct id_cliente ) as Venta

}
group by
  id_libro
