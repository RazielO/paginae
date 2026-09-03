# Paginae

A personal reading tracker built with Flutter and ClojureDart. Track your books, log reading sessions, take notes, and watch your progress grow.

## Features

- **Book library** with cover images, authors, formats, and reading status (to-read, reading, completed, favorite)
- **Reading timer** with play/pause, elapsed time tracking, and quick notes
- **Progress tracking** by page count or percentage, logged as activities
- **Reading journal** with an interactive calendar showing daily activity
- **Book search** via Open Library API by title, author, or ISBN
- **Barcode scanner** to add books by scanning their ISBN
- **Notes** per book with edit, share, and delete
- **Shelves** to organize books by status (Read, To-Read, Favorites, Reading)
- **Dark and light theme**
- **English and Spanish** localization

## Building

### Prerequisites

- JDK 17
- Android SDK
- [Clojure CLI](https://clojure.org/guides/install_clj) 1.12.5+
- [Flutter SDK](https://flutter.dev) 3.41.6 stable

### Build steps

```bash
# 1. Compile ClojureDart source into Dart
clj -M:cljd compile

# 2. Generate launcher icons
dart run flutter_launcher_icons

# 3. Fetch Flutter dependencies
flutter clean
flutter pub get

# 4. Build a release APK
flutter build apk --release
```

The signed release APK will be at `build/app/outputs/flutter-apk/app-release.apk`.

## License

See [LICENSE](LICENSE) for details.
