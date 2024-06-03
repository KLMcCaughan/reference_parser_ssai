import 'package:reference_parser_ssai/identification.dart';

void main() async {
  await identifyReference('Come to me all').then((x) => {
        print(x[0]),
      });
}
