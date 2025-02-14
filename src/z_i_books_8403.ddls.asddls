@AbapCatalog.sqlViewName: 'ZVI_BOOKSL_8403'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_I_BOOKS_8403
  as select from    z_b_books_8403  as Libros
    inner join      z_b_CATEG_8403  as Categorias on Libros.Categoria = Categorias.Categoria
    left outer join Z_B_VENTAS_8403 as Ventas     on Libros.IDLibro = Ventas.IDLibro
  association [0..*] to Z_B_CLIENTES_8403 as _Clientes on $projection.IDLibro = _Clientes.IdLibro
  /*
  association [1] to z_b_CATEG_8403 as Categorias on Libros.Categoria = Categorias.Categoria
  association [1..1] to Z_B_VENTAS_8403 as Ventas on Libros.IDLibro = Ventas.IDLibro
  association [0..*] to Z_B_VENTAS_DET_8403 as VentasDetalles on Libros.IDLibro = VentasDetalles.IdLibro*/


{

  key Libros.Titulo,
  key Libros.IDLibro,

      Libros.Categoria,
      Categorias.Descripcion,
      Libros.Autor,
      
      Libros.Editorial,
      Libros.Idioma,
      Libros.Paginas,
      Libros.Precio,
      Libros.Moneda,

      case
      when   Ventas.Venta < 1 then 0
      when   Ventas.Venta >= 1 and Ventas.Venta <= 2 then 1
      when   Ventas.Venta between 3 and 5 then 2
      else 3
      end as Venta,
      
      Libros.Formato,
      Libros.Url,
      _Clientes


}
