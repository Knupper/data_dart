class Car {
  final String color;
  int _seats;
  bool _isRaceCar;

  Car({
    required this.color,
    int seats = 0,
  })  : _isRaceCar = true,
        _seats = seats;

  void _privateMethod() {
    print('private method');
  }

  bool get isRaceCar => _isRaceCar;

  set setRaceCar(bool isRaceCar) {
    _isRaceCar = isRaceCar;
  }

  int get seats => _seats;

  set seats(int seat) {
    print('');
    _seats = seat;
  }

  @override
  String toString() {
    return 'color: $color; seats: $seats';
  }
}
