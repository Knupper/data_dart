import 'dart:io';

void main(List<String> args) {
  final userInput = stdin.readLineSync() ?? '';
  final parsedInput = int.tryParse(userInput) ?? 1;

  final result = pow(parsedInput);

  print('Pow from $parsedInput is $result');

  // testing context:
  isValid(
    isCityValid: true,
    isStreetValid: false,
    isNameValid: true,
  );

  isValid(
    isNameValid: true,
    isCityValid: true,
    isNumberValid: true,
    isStreetValid: true,
  );
}

int pow(int basicNumber) {
  return basicNumber * basicNumber;
}

bool isValid({
  bool isNameValid = false,
  required bool isStreetValid,
  bool? isNumberValid,
  bool? isCityValid,
}) {
  // DO STH;
  return true;
}
