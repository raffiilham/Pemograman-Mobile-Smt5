import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // for input events
  final _generateRandomController = StreamController<void>();
  // for output events
  final _randomNumberController = StreamController<int>();
  // input Sink
  Sink<void> get generateRandom => _generateRandomController.sink;
  // ouput Stream
  Stream<int> get randomNumber => _randomNumberController.stream;
  // _secondStreamController.sink

  //constructor
  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }
  void dispose(){
    _generateRandomController.close();
    _randomNumberController.close();
  }
}