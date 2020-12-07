import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculate {
  Calculate({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMI() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getTip(){
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal. Wanna give exercise a try?.';
    } else if (_bmi > 18.5) {
      return 'Great! You have normal body weight :)';
    } else {
      return 'Your body is lower than normal body weight. You can enjoy by eating more :)';
    }
  }
}
