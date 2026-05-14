// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'paginae';

  @override
  String get bottomHome => 'Inicio';

  @override
  String get bottomJournal => 'Diario';

  @override
  String get bottomLibrary => 'Mis Libros';

  @override
  String get bottomAdd => 'Añadir';

  @override
  String get searchTitle => 'Añadir Libro';

  @override
  String get searchScanBarcode => 'Escanear código de barras';

  @override
  String get searchManualEntry => 'Añadir manualmente';

  @override
  String get searchNoResults => 'No se encontraron resultados';

  @override
  String get searchBookHint => 'Busca por título, autor o ISBN';

  @override
  String get searchCancelScanning => 'Cancelar escaneo';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String firstPublished(String year) {
    return 'Primera publicación';
  }

  @override
  String get unknown => 'Desconocido';

  @override
  String get addBookTitle => 'Añadir a Biblioteca';

  @override
  String get addCover => 'Añadir Portada';

  @override
  String get bookTitle => 'Título';

  @override
  String get bookAuthor => 'Autor';

  @override
  String get totalPages => 'Páginas totales';

  @override
  String get format => 'Formato';

  @override
  String get ebook => 'E-Book';

  @override
  String get hardcover => 'Tapa Dura';

  @override
  String get paperback => 'Tapa Blanda';

  @override
  String get audiobook => 'Audiolibro';

  @override
  String get currentStatus => 'Estatus';

  @override
  String get currentlyReading => 'Leyendo';

  @override
  String get toRead => 'Leer Después';

  @override
  String get completed => 'Terminado';

  @override
  String get noCover => 'Sin Portada';

  @override
  String get loading => 'Cargando';

  @override
  String get homeTitle => 'Mis Libros';

  @override
  String booksInProgress(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Leyendo $count libros',
      one: 'Leyendo 1 libro',
      zero: 'Sin libros',
    );
    return '$_temp0';
  }
}
