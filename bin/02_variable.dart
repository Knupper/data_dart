void main(List<String> arguments) {
  var outputInteger = 2; // nach einmaliger Zuweisung fixer typ

  dynamic outputDynamic = 'test';
  print('${outputDynamic.runtimeType} - $outputDynamic');
  outputDynamic = 2;
  print('${outputDynamic.runtimeType} - $outputDynamic');
  outputDynamic = 2.0;
  print('${outputDynamic.runtimeType} - $outputDynamic');

  if (outputDynamic is String) {
    // to sth
  }

  switch (outputDynamic) {
    case String tmpString:
      print('Hallo String $tmpString'); // (outputDynamic as String)
      break;
    case int tmpInt:
      print('Hallo int: $tmpInt');
      break;
    default:
      print('blb');
  }

  late String lateString; // zuweisung erfolg später

  lateString = 'Test';

  print(lateString);

  final tmpString = 'test'; // immutable variable

  late final tmpLateFinalString; // kombination late + final

  tmpLateFinalString = 'other';

  String? nullableString = null;

  print('length: ${nullableString?.length ?? 0}');

  final String userInput = null ?? '';

  if (nullableString != null) {
    print('length: ${nullableString.length}');
  }
}
