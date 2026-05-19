import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// Name of the app
  ///
  /// In en, this message translates to:
  /// **'Paginae'**
  String get appName;

  /// Bottom bar home tab name
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get bottomHome;

  /// Bottom bar journal tab name
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get bottomJournal;

  /// Bottom bar library tab name
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get bottomLibrary;

  /// Bottom bar add tab name
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get bottomAdd;

  ///
  ///
  /// In en, this message translates to:
  /// **'Add To Library'**
  String get addToLibrary;

  /// Search book screen title
  ///
  /// In en, this message translates to:
  /// **'Add New Book'**
  String get searchTitle;

  /// Search book screen action to scan a book's barcode
  ///
  /// In en, this message translates to:
  /// **'Scan Barcode'**
  String get searchScanBarcode;

  /// Search book screen action to manually enter a book
  ///
  /// In en, this message translates to:
  /// **'Manual Entry'**
  String get searchManualEntry;

  /// Search book screen label for when no books were found
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get searchNoResults;

  /// No description provided for @searchBookHint.
  ///
  /// In en, this message translates to:
  /// **'Search by title, author or ISBN'**
  String get searchBookHint;

  /// Search book screen action to cancel barcode scanning
  ///
  /// In en, this message translates to:
  /// **'Cancel scanning'**
  String get searchCancelScanning;

  /// Label for save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Label for cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Label for when a book was first published
  ///
  /// In en, this message translates to:
  /// **'First Published: {year}'**
  String firstPublished(String year);

  /// Label for unknown book data
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// Add book screen title
  ///
  /// In en, this message translates to:
  /// **'Add To Library'**
  String get addBookTitle;

  /// Add book screen action to add a local cover
  ///
  /// In en, this message translates to:
  /// **'Add Cover'**
  String get addCover;

  /// Label for title of the book while adding one
  ///
  /// In en, this message translates to:
  /// **'Book Title'**
  String get bookTitle;

  /// Label for author of the book while adding one
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get bookAuthor;

  /// Label for total pages of the book while adding one
  ///
  /// In en, this message translates to:
  /// **'Total Pages'**
  String get totalPages;

  /// Label for format of the book while adding one
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get format;

  /// Label for e-book format
  ///
  /// In en, this message translates to:
  /// **'E-Book'**
  String get ebook;

  /// Label for hardcover format
  ///
  /// In en, this message translates to:
  /// **'Hardcover'**
  String get hardcover;

  /// Label for paperback format
  ///
  /// In en, this message translates to:
  /// **'Paperback'**
  String get paperback;

  /// Label for audiobook format
  ///
  /// In en, this message translates to:
  /// **'Audiobook'**
  String get audiobook;

  /// Label for current book status
  ///
  /// In en, this message translates to:
  /// **'Current Status'**
  String get currentStatus;

  /// Status of 'currently reading' for book
  ///
  /// In en, this message translates to:
  /// **'Currently Reading'**
  String get currentlyReading;

  /// Status of 'to read' for book
  ///
  /// In en, this message translates to:
  /// **'To Read'**
  String get toRead;

  /// Status of 'completed' for book
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// Text for when the book has no cover
  ///
  /// In en, this message translates to:
  /// **'No Cover'**
  String get noCover;

  /// Text for loading
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// Title for home screen
  ///
  /// In en, this message translates to:
  /// **'Your Study'**
  String get homeTitle;

  /// Current books in progress
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No books} =1{1 book} other{{count} books}} in progress'**
  String booksInProgress(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
