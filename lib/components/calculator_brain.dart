import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int? height;
  final int? weight;

  final double _bmi = 0.0;

  String calculateBMI() {
    double _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi < 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'you have a higher than normal body weight, Try to exercise more';
    } else if (_bmi < 18.5) {
      return 'you have a normal body weight, good job!';
    } else {
      return 'you have a lower than normal body weight, eat more!';
    }
  }
}
