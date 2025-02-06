import 'package:calculator/string_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('should return the number when a single number is passed', () {
    final calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

}
