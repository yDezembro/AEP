import 'package:tflite_flutter/tflite_flutter.dart';

class ThreatDetection {
  Interpreter? _interpreter;

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('model.tflite');
  }

  List<double> detectThreats(List<double> inputData) {
    final output = List<double>.filled(1, 0);
    _interpreter?.run(inputData, output);
    return output;
  }
}

