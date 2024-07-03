## 1.0.3
Alter parse and replace function to use a exclusion list.

## 1.0.2
Fix logic to include punctuation with and without trailing space. 

## 3.0.4
- Allow parsing books without spaces numerals (i.e ICorinthians)

## 3.0.3
- Allow parsing books with roman numerals (i.e I Corinthians)

## 3.0.2
- Fixed incorrect ending verse for chapters when parsing references

## 3.0.1
- Update dependency constraints

## 3.0.0
- Null Safety!

## 2.0.0
- Adds fields to get reference subdivisions.
- Adds named constructors to Reference to make instantiation more declarative.
- Adds fields for different book types in References (i.e osisReference).
- Publishes the theologian library that includes classes used to parse data.
- Renames fields to make more sense.
- Removes the RANGE type for ReferenceTypes.
- Adds start/end verse objects to chapters.
- Improves Librarian with error checking and fixes bugs.

## 1.3.1
- linting for static analysis

## 1.3.0
- Cross chapter verse ranges can be parsed
- fixes references not being categorized as CHAPTER_RANGE

## 1.2.2
- fixes reference identification

## 1.2.1
- adds return statement to identifyReferenceType

## 1.2.0
- Adds [Chapter] objects.
- Chapter objects added to Reference class fields.
- Parsing of multi-chapter references possible.

## 1.1.2
- Updates dependencies

## 1.1.1
- Fixes README versioning and linting for static analysis

## 1.1.0
- Adds function to identify bible verses.

## 1.0.0
- **Massive improvements to regex!** 
- Now possible to parse texts from anywhere within a string. For example, 'I like Matthew 2:4.
- Paratexts can be parsed(for example 'Mat', 'JAM', 'exo').
- Parsing multiple texts from within a string possible with [parseAllReferences]
- BibleReference class added as a base for Reference and Verse.
- Added Verse, Reference, and BibleReference to export.
- Added getters for osis, paratext abbreviation, and short bible books.
- BibleReferences toString return the reference string.
- Documentation added to functions and classes.
- Chapters that are not specified initialize [BibleReference.chapter] to null.
- Refactored Verse.verseType to [Verse.referenceType] .
- Renamed Librarian.findBook to [Librarian.findBookNumber].
- [BibleReference.book] initializes to the full book name.
- Static typing in BibleReference object constructors

## 0.7.5
- endVerseNumber and endVerse determine last verse if passed value is null
- [start/end]VerseNumber fields initialize based on passed parameters
- [start/end]Verse initialize based on passed parameters

## 0.7.0
- Created ReferenceType enum
- Changed the integer fields [start/end]Verse to [start/end]VerseNumber
- Added Verse object [start/end]Verse fields to Reference objects
- Added ReferenceType field to Reference and Verse object fields
- Added validation and bookNumber to the Verse object

## 0.5.0
- Initial version, basic reference parsing and creation.
