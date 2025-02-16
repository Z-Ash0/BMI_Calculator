import 'dart:math';

class Bmi {
  double height;
  double weight;

  Bmi({required this.height, required this.weight});

  double calculateBmi() {
    return weight / pow((height / 100), 2);
  }
}
