// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Paginae';

  @override
  String get bottomHome => 'Home';

  @override
  String get bottomJournal => 'Journal';

  @override
  String get bottomLibrary => 'Library';

  @override
  String get bottomAdd => 'Add';

  @override
  String get addToLibrary => 'Add To Library';

  @override
  String get searchTitle => 'Add New Book';

  @override
  String get searchScanBarcode => 'Scan Barcode';

  @override
  String get searchManualEntry => 'Manual Entry';

  @override
  String get searchNoResults => 'No results found';

  @override
  String get searchBookHint => 'Search by title, author or ISBN';

  @override
  String get searchCancelScanning => 'Cancel scanning';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String firstPublished(String year) {
    return 'First Published: $year';
  }

  @override
  String get unknown => 'Unknown';

  @override
  String get addBookTitle => 'Add To Library';

  @override
  String get addCover => 'Add Cover';

  @override
  String get bookTitle => 'Book Title';

  @override
  String get bookAuthor => 'Author';

  @override
  String get totalPages => 'Total Pages';

  @override
  String get format => 'Format';

  @override
  String get ebook => 'E-Book';

  @override
  String get hardcover => 'Hardcover';

  @override
  String get paperback => 'Paperback';

  @override
  String get audiobook => 'Audiobook';

  @override
  String get currentStatus => 'Current Status';

  @override
  String get currentlyReading => 'Currently Reading';

  @override
  String get toRead => 'To Read';

  @override
  String get completed => 'Completed';

  @override
  String get noCover => 'No Cover';

  @override
  String get loading => 'Loading';

  @override
  String get homeTitle => 'Your Study';

  @override
  String booksInProgress(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count books',
      one: '1 book',
      zero: 'No books',
    );
    return '$_temp0 in progress';
  }

  @override
  String get myShelves => 'My Shelves';

  @override
  String get shelfReadTitle => 'Read';

  @override
  String get shelfReadSubtitle => 'Completed books';

  @override
  String get shelfToReadTitle => 'To Read';

  @override
  String get shelfToReadSubtitle => 'The backlog';

  @override
  String get shelfFavoritesTitle => 'Favorites';

  @override
  String get shelfFavoritesSubtitle => 'Hall of fame';

  @override
  String get shelfReadingTitle => 'Reading';

  @override
  String get shelfReadingSubtitle => 'My Books';

  @override
  String get recentActivity => 'Recent Activity';

  @override
  String get viewJournal => 'View Journal';

  @override
  String get noBooks => 'You are not reading any books';

  @override
  String get addNewBook => 'Add new book';

  @override
  String get hello => 'Hello';

  @override
  String deleteBookTitle(String title) {
    return 'Do you want to delete the book \"$title\"?';
  }

  @override
  String get delete => 'Delete';

  @override
  String get filterBy => 'Filter By';

  @override
  String get filterFinished => 'Finished';

  @override
  String get filterToRead => 'To-Read';

  @override
  String get filterFavorites => 'Favorites';

  @override
  String get filterReading => 'Reading';

  @override
  String get resetFilter => 'Reset filter';

  @override
  String get allMyBooks => 'All My Books';
}
