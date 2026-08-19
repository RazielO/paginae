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

  /// Label for the button that adds a book to the library
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

  /// Search book screen hint for input text field
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

  /// Subtitle for a home section
  ///
  /// In en, this message translates to:
  /// **'My Shelves'**
  String get myShelves;

  /// Title for the 'read' shelf
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get shelfReadTitle;

  /// Subtitle for the 'read' shelf
  ///
  /// In en, this message translates to:
  /// **'Completed books'**
  String get shelfReadSubtitle;

  /// Title for the 'to read' shelf
  ///
  /// In en, this message translates to:
  /// **'To Read'**
  String get shelfToReadTitle;

  /// Subtitle for the 'to read' shelf
  ///
  /// In en, this message translates to:
  /// **'The backlog'**
  String get shelfToReadSubtitle;

  /// Title for the 'favorites' shelf
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get shelfFavoritesTitle;

  /// Subtitle for the 'favorites' shelf
  ///
  /// In en, this message translates to:
  /// **'Hall of fame'**
  String get shelfFavoritesSubtitle;

  /// Title for the 'reading' shelf
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get shelfReadingTitle;

  /// Subtitle for the 'reading' shelf
  ///
  /// In en, this message translates to:
  /// **'My Books'**
  String get shelfReadingSubtitle;

  /// Title for the 'recent activity' section
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get recentActivity;

  /// Action to go to journal
  ///
  /// In en, this message translates to:
  /// **'View Journal'**
  String get viewJournal;

  /// Text to show when there are no books being read
  ///
  /// In en, this message translates to:
  /// **'You are not reading any books'**
  String get noBooks;

  /// Button to go to the add book screen
  ///
  /// In en, this message translates to:
  /// **'Add new book'**
  String get addNewBook;

  /// Confirmation dialog title shown before deleting a book
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete the book \"{title}\"?'**
  String deleteBookTitle(String title);

  /// Label for the delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Title of the filter popup menu in the library screen
  ///
  /// In en, this message translates to:
  /// **'Filter By'**
  String get filterBy;

  /// Filter option to show finished books
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get filterFinished;

  /// Filter option to show books to read
  ///
  /// In en, this message translates to:
  /// **'To-Read'**
  String get filterToRead;

  /// Filter option to show favorite books
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get filterFavorites;

  /// Filter option to show currently reading books
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get filterReading;

  /// Action to clear the active book filter
  ///
  /// In en, this message translates to:
  /// **'Reset filter'**
  String get resetFilter;

  /// Title of the library screen showing all the user's books
  ///
  /// In en, this message translates to:
  /// **'All My Books'**
  String get allMyBooks;

  /// Title for the book details screen
  ///
  /// In en, this message translates to:
  /// **'Book Details'**
  String get bookDetailsTitle;

  /// Activity description when only a page was reached
  ///
  /// In en, this message translates to:
  /// **'Reached page {pages}'**
  String activityReachedPage(int pages);

  /// Activity description when only a percentage was reached
  ///
  /// In en, this message translates to:
  /// **'Reached {percentage}%'**
  String activityReachedPercent(String percentage);

  /// Activity description when reading time and reached page are shown
  ///
  /// In en, this message translates to:
  /// **'Read for {hours}:{minutes} • Reached page {pages}'**
  String activityReadToPage(String hours, String minutes, int pages);

  /// Activity description when reading time and reached percentage are shown
  ///
  /// In en, this message translates to:
  /// **'Read for {hours}:{minutes} • Reached {percentage}%'**
  String activityReadToPercent(String hours, String minutes, String percentage);

  /// Section title for reading activity on the book details screen
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activitySection;

  /// Title and hint for the add note dialog
  ///
  /// In en, this message translates to:
  /// **'Add a note'**
  String get addNote;

  /// Action button label to add a note to a book
  ///
  /// In en, this message translates to:
  /// **'Add Note'**
  String get addNoteAction;

  /// Text shown on the reading progress card when the book has not been started
  ///
  /// In en, this message translates to:
  /// **'Book not started yet\nMark as started'**
  String get bookNotStartedMessage;

  /// Prefix shown before the author of a book
  ///
  /// In en, this message translates to:
  /// **'by {author}'**
  String byAuthor(String author);

  /// Label for the current page input
  ///
  /// In en, this message translates to:
  /// **'Current page'**
  String get currentPage;

  /// Label for the current percentage input
  ///
  /// In en, this message translates to:
  /// **'Current percentage'**
  String get currentPercentage;

  /// Label for the done button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Label for the edit action
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Message shown when the book has been completed
  ///
  /// In en, this message translates to:
  /// **'You\'ve finished the book'**
  String get finishedBookMessage;

  /// Tooltip for the back button
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// Error message shown when the server does not respond
  ///
  /// In en, this message translates to:
  /// **'No response from server'**
  String get noServerResponse;

  /// Header label for a note card
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// Section title for notes on the book details screen
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notesSection;

  /// Validation error for an integer input outside the allowed range
  ///
  /// In en, this message translates to:
  /// **'Enter a number between {lower} and {upper}'**
  String numberBetweenError(int lower, int upper);

  /// Label showing the current page of a book
  ///
  /// In en, this message translates to:
  /// **'page {count}'**
  String pageCount(int count);

  /// Unit label shown next to the current page input
  ///
  /// In en, this message translates to:
  /// **'page'**
  String get pageUnit;

  /// Label showing the completion percentage of a book
  ///
  /// In en, this message translates to:
  /// **'{percent}% complete'**
  String percentComplete(int percent);

  /// Hint for the quick note field in the reading timer
  ///
  /// In en, this message translates to:
  /// **'Quick note'**
  String get quickNoteHint;

  /// Label shown in the reading progress ring
  ///
  /// In en, this message translates to:
  /// **'READ'**
  String get readLabel;

  /// Text showing how many pages of the book have been read
  ///
  /// In en, this message translates to:
  /// **'You\'ve read {current} out of {total} pages'**
  String readProgress(int current, int total);

  /// Text shown on the home screen when a reading session reached a percentage
  ///
  /// In en, this message translates to:
  /// **'You reached {percent}%'**
  String reachedPercent(int percent);

  /// Action button label to open the reading timer
  ///
  /// In en, this message translates to:
  /// **'Reading Timer'**
  String get readingTimer;

  /// Confirmation dialog title shown before removing a note
  ///
  /// In en, this message translates to:
  /// **'Do you want to remove this note?'**
  String get removeNoteTitle;

  /// Label for the save note button
  ///
  /// In en, this message translates to:
  /// **'Save note'**
  String get saveNote;

  /// Tooltip for marking a book as favorite
  ///
  /// In en, this message translates to:
  /// **'Set as favorite'**
  String get setFavorite;

  /// Title for the dialog to set the reading progress
  ///
  /// In en, this message translates to:
  /// **'Set reading progress'**
  String get setReadingProgress;

  /// Label for the share action
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Text shared when sharing a note with its book title
  ///
  /// In en, this message translates to:
  /// **'Here\'s one of my notes on \'{book}\':\n\n\"{note}\"'**
  String shareNoteText(String book, String note);

  /// Action to switch the progress input to pages
  ///
  /// In en, this message translates to:
  /// **'Switch to pages'**
  String get switchToPages;

  /// Action to switch the progress input to percentage
  ///
  /// In en, this message translates to:
  /// **'Switch to percentage'**
  String get switchToPercentage;

  /// Tooltip for removing a book from favorites
  ///
  /// In en, this message translates to:
  /// **'Unset as favorite'**
  String get unsetFavorite;

  /// Action button label to update the reading progress
  ///
  /// In en, this message translates to:
  /// **'Update Progress'**
  String get updateProgress;

  /// Validation error for a decimal input outside the allowed range
  ///
  /// In en, this message translates to:
  /// **'Enter a value between {lower} and {upper}'**
  String valueBetweenError(double lower, double upper);

  /// Title for the journal screen
  ///
  /// In en, this message translates to:
  /// **'My reading journal'**
  String get journalTitle;

  /// Text shown when there is no reading activity for a given day
  ///
  /// In en, this message translates to:
  /// **'No activity that day'**
  String get noActivityThatDay;

  /// Validation error for an integer output that is not an integer value
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number'**
  String get invalidInteger;

  /// Validation error shown when adding a book and the title is empty
  ///
  /// In en, this message translates to:
  /// **'The title cannot be empty'**
  String get titleRequired;

  /// Validation error shown when adding a book and the author is empty
  ///
  /// In en, this message translates to:
  /// **'The author cannot be empty'**
  String get authorRequired;
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
