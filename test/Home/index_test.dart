import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:musicca/Home/calculate.dart';

void main() {
  test(('Test the calculate function'), () {
    expect(calculate().toInt(), 5);
  });
}
