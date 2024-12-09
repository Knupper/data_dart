import 'car.dart';

// https://dart.dev/language/class-modifiers
void main(List<String> args) {
  final carOne = Car(color: 'blue', seats: 3);
  final carTwo = Car(color: 'red', seats: 2);

  carOne.toString();

  carOne.seats = 2;

  print(carTwo);

  // final (first, last) = records();
  // print(first);
  // print(last);

  final name = records();
  print(name.firstname);
  print(name.lastname);
}

String whatDoesItSounds(Animal animal) => switch (animal) {
      Cow(name: 'Dora') => 'Dora muuh',
      Cow _ => '${animal.name} - Nicht Dora muuh',
      Sheep _ => 'määh',
      Lion _ => 'roaar',
    };

sealed class Animal {}

class Cow extends Animal {
  final String name;

  Cow({required this.name});
}

class Sheep extends Animal {}

class Lion extends Animal {}

// https://dart.dev/language/enums#declaring-enhanced-enums
enum ViewState {
  loading,
  error,
  loaded;
}

({String firstname, String lastname}) records() {
  return (firstname: 'Max', lastname: 'Steffen');
}
