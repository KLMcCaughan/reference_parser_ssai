import 'package:reference_parser_ssai/reference_parser.dart';

void main() {
  //Parse Reference
  var ref = parseReference('The most recited verse is Jn 3:16');
  print(ref.book); // 'John'
  print(ref.bookNumber); // 43
  print(ref.startChapterNumber); // 3
  print(ref.startVerseNumber); // 16
  print(ref.isValid); // true

  ref = parseReference('1john 4:5');
  print(ref.book); // '1 John'

  //Variant Spellings
  ref = parseReference('Songs 2:1');
  print(ref.reference); // 'Song of Solomon 2:1'

  //Range of verses
  ref = parseReference('My name is Gen 4:5-10');
  print(ref.reference); // 'Genesis 4:5-10'
  print(ref.startVerseNumber); // 5
  print(ref.endVerseNumber); // 10

  //Book and chapter references
  ref = parseReference('Ps 1');
  print(ref.reference); // 'Psalms 1';
  print(ref.startVerseNumber); // 1
  print(ref.endVerseNumber); // 6

  //Book References
  ref = parseReference('gn');
  print(ref.reference); // 'Genesis'

  //Validation
  ref = parseReference('Joseph 2:4');
  print(ref.book); // Joseph
  print(ref.bookNumber); // null
  print(ref.isValid); // false

  ref = parseReference(' This is Genesis 1:100');
  print(ref.isValid); // false

  //Create Reference
  ref = Reference('1Co', 3, 4, 5);
  print(ref.book); //'1 Corinthians'
  print(ref.startChapterNumber); // 3
  print(ref.startVerseNumber); // 4
  print(ref.endVerseNumber); // 5

  // References that exclude common words ('is','song','am','songs')
  var refs =
      parseAllReferences('This is NOT going to get Gen 2:4 and another book');
  print(refs); // ['Genesis 2:4'], 'is' will be parsed as Isaiah

  var x = parseReferencesAndReplaceString('Wow this is going to get Gen 2:4 reference and update the original string. I am stoked! Is this cool or what? I may act a fool, play a song to celebrate.');
  print(x); // Wow this is going to get Genesis 2:4 reference and update the original string. I am stoked! Is this cool or what? I may play a song to celebrate.
 refs =
      parseAllReferences('Wow this is 24 going to get Gen 2:4 reference and update the original string. I am stoked! Is this cool or what? I may Acts 22 as a bard and play a song to celebrate.');
  print(refs);


}
