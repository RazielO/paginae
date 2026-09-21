# Changelog

## [1.1.3] - 2026-09-21

### Added

- Activities can be edited, deleted and shared

### Fixed

- F-droid reproducible builds

## [1.1.2] - 2026-09-18

### Fixed

- Cover images now appear immediately after adding a book instead of on the next app restart. The cover file is saved to disk before navigating back to the library, so the first render finds it.
- Editing a book's cover now updates the cover instantly on the details screen, the library and the home carousel. Previously the old cover stayed until restart: the replaced file was served by Flutter's image cache, which is now evicted after the new cover is written, and cover widgets re-resolve whenever the data revision changes.

## [1.1.1] - 2026-09-12

### Fixed

- Adding a book from search results.

## [1.1.0] - 2026-09-12

### Added

- Edit a book's details and cover.
- Share a book (export as text or Markdown).

### Changed / Fixed

- Reworked and fixed tests.
