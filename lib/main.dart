import 'package:flutter/material.dart';
import 'package:tip_calculator/tip_calulator_home.dart';

void main() {
  runApp(TipCalculator());
}

class TipCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TipCalculatorHome(),
    );
  }
}
