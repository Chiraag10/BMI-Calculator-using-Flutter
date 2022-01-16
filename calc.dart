import 'dart:math';



class Bmicalc {
  Bmicalc({this.height, this.weight});

  double height;
  int weight;
  double _bmi;
  

  String calc() {
    _bmi = weight / pow((height * 0.3048), 2);
    return _bmi.toStringAsFixed(1);
  }

  String gotresult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String motivator() {
    if (_bmi >= 25.0) {
      return 'You Need to be in Diet';
    } else if (_bmi >= 18.5) {
      return 'You have a Healthy Body';
    } else {
      return 'You Need to Eat Food';
    }
  }
}

