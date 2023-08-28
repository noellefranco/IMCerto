import 'dart:math';

class BMICalculator {
  BMICalculator({this.height = 0, this.weight = 0}) : _bmi = 0;

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do peso saudável';
    } else if (_bmi > 18.5) {
      return 'índice normal';
    } else {
      return 'Abaixo do peso saudável';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'É importante que você busque por uma rotina de alimentação e exercícios mais saudável!';
    } else if (_bmi > 18.5) {
      return 'índice normal. Mantenha a rotina saudável!';
    } else {
      return 'É importante que você busque por uma rotina de alimentação e exercícios mais saudável!';
    }
  }
}
