import 'dart:async';

void main(List<String> args) {
  final numberGenerator = NumberGenerator();
  StreamSubscription sub1 = numberGenerator.stream.listen(
    (event) {
      print('sub1: $event');
    },
  );

  StreamSubscription sub2 = numberGenerator.stream.listen(
    (event) {
      print('sub2: ${event * event}');
    },
  );
}

class NumberGenerator {
  NumberGenerator() {
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_controller.isClosed) {
        return;
      }
      _controller.add(_counter);
      // _controller.sink.add(_counter);
      _counter++;
    });

    Future.delayed(const Duration(seconds: 10), () {
      timer.cancel();
      // _controller.close();
    });
  }

  int _counter = 0;

  final StreamController<int> _controller = StreamController.broadcast();

  Stream<int> get stream => _controller.stream.asBroadcastStream();
}
