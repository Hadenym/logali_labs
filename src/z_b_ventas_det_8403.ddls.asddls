@AbapCatalog.sqlViewName: 'ZV_VTASDET_8403'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalles Ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_VENTAS_DET_8403 as select from ztbclnts_lib8403 as Ventas
association [1..1] to Z_B_CLIENTE as Cliente on Ventas.id_cliente = Cliente.IdCliente
 
{
    key id_cliente as IdCliente,
    key id_libro as IdLibro,
    Cliente
}
