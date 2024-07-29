import 'package:reference_parser_ssai/reference_parser.dart';
import 'package:reference_parser_ssai/identification.dart';
import 'package:test/test.dart';

void main() {
  test('Reference identification', () {
    var places = parsePlace('I visited Jerusalem and Damascus and Allammelech.');
    print(places);
    expect(places.contains('Jerusalem'), true);
    expect(places.contains('Damascus'), true);
    expect(places.contains('Allammelech'), true);
  });
}
