@AbapCatalog.sqlViewName: 'ZV_CLIENTES_8403'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_CLIENTES_8403
  as select from ztb_clientes8403 as Clientes
  inner join ztbclnts_lib8403 as VentasLibros on Clientes.id_cliente = VentasLibros.id_cliente
{
  key VentasLibros.id_libro  as IdLibro,
  key Clientes.id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url
}
