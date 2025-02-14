@AbapCatalog.sqlViewName: 'ZV_BOOKS_8403L'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_books_8403
  as select from ztb_libros_8403
{

  key id_libro  as IDLibro,
  key titulo    as Titulo,
  key bi_categ  as Categoria,
      editorial as Editorial,
      autor     as Autor,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url

}
