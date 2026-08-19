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
  String get addToLibrary => 'Añadir A Biblioteca';

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
    return 'Primera publicación: $year';
  }

  @override
  String get unknown => 'Desconocido';

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

  @override
  String get myShelves => 'Mis Estanterías';

  @override
  String get shelfReadTitle => 'Leídos';

  @override
  String get shelfReadSubtitle => 'Libros terminados';

  @override
  String get shelfToReadTitle => 'Para leer';

  @override
  String get shelfToReadSubtitle => 'Libros pendientes';

  @override
  String get shelfFavoritesTitle => 'Favoritos';

  @override
  String get shelfFavoritesSubtitle => 'Salón de la fama';

  @override
  String get shelfReadingTitle => 'Leyendo';

  @override
  String get shelfReadingSubtitle => 'Mis Libros';

  @override
  String get recentActivity => 'Actividad Reciente';

  @override
  String get viewJournal => 'Ver Diario';

  @override
  String get noBooks => 'No estás leyendo ningún libro';

  @override
  String get addNewBook => 'Añade un libro';

  @override
  String deleteBookTitle(String title) {
    return '¿Quieres eliminar el libro \"$title\"?';
  }

  @override
  String get delete => 'Eliminar';

  @override
  String get filterBy => 'Filtrar por';

  @override
  String get filterFinished => 'Terminados';

  @override
  String get filterToRead => 'Por leer';

  @override
  String get filterFavorites => 'Favoritos';

  @override
  String get filterReading => 'Leyendo';

  @override
  String get resetFilter => 'Restablecer filtro';

  @override
  String get allMyBooks => 'Todos mis libros';

  @override
  String get bookDetailsTitle => 'Detalles del libro';

  @override
  String activityReachedPage(int pages) {
    return 'Llegaste a la página $pages';
  }

  @override
  String activityReachedPercent(String percentage) {
    return 'Llegaste al $percentage%';
  }

  @override
  String activityReadToPage(String hours, String minutes, int pages) {
    return 'Leyendo durante $hours:$minutes • Llegaste a la página $pages';
  }

  @override
  String activityReadToPercent(
    String hours,
    String minutes,
    String percentage,
  ) {
    return 'Leyendo durante $hours:$minutes • Llegaste al $percentage%';
  }

  @override
  String get activitySection => 'Actividad';

  @override
  String get addNote => 'Añadir una nota';

  @override
  String get addNoteAction => 'Añadir Nota';

  @override
  String get bookNotStartedMessage =>
      'Aún no has empezado el libro\nMarca como empezado';

  @override
  String byAuthor(String author) {
    return 'por $author';
  }

  @override
  String get currentPage => 'Página actual';

  @override
  String get currentPercentage => 'Porcentaje actual';

  @override
  String get done => 'Hecho';

  @override
  String get edit => 'Editar';

  @override
  String get finishedBookMessage => 'Has terminado el libro';

  @override
  String get goBack => 'Volver';

  @override
  String get noServerResponse => 'No hay respuesta del servidor';

  @override
  String get note => 'Nota';

  @override
  String get notesSection => 'Notas';

  @override
  String numberBetweenError(int lower, int upper) {
    return 'Ingresa un número entre $lower y $upper';
  }

  @override
  String pageCount(int count) {
    return 'página $count';
  }

  @override
  String get pageUnit => 'página';

  @override
  String percentComplete(int percent) {
    return '$percent% completo';
  }

  @override
  String get quickNoteHint => 'Nota rápida';

  @override
  String get readLabel => 'Leyendo';

  @override
  String readProgress(int current, int total) {
    return 'Has leído $current de $total páginas';
  }

  @override
  String reachedPercent(int percent) {
    return 'Llegaste al $percent%';
  }

  @override
  String get readingTimer => 'Temporizador de lectura';

  @override
  String get removeNoteTitle => '¿Quieres eliminar esta nota?';

  @override
  String get saveNote => 'Guardar nota';

  @override
  String get setFavorite => 'Marcar como favorito';

  @override
  String get setReadingProgress => 'Establecer progreso de lectura';

  @override
  String get share => 'Compartir';

  @override
  String shareNoteText(String book, String note) {
    return 'Esta es una de mis notas sobre \'$book\':\n\n\"$note\"';
  }

  @override
  String get switchToPages => 'Cambiar a páginas';

  @override
  String get switchToPercentage => 'Cambiar a porcentaje';

  @override
  String get unsetFavorite => 'Quitar de favoritos';

  @override
  String get updateProgress => 'Actualizar progreso';

  @override
  String valueBetweenError(double lower, double upper) {
    return 'Ingresa un valor entre $lower y $upper';
  }

  @override
  String get journalTitle => 'Mi diario de lectura';

  @override
  String get noActivityThatDay => 'Sin actividad ese día';

  @override
  String get invalidInteger => 'Ingresa un número válido';

  @override
  String get titleRequired => 'El título no puede estar vacío';

  @override
  String get authorRequired => 'El autor no puede estar vacío';
}
