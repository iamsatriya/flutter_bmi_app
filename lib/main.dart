import 'package:flutter/material.dart';
import 'components/screens/calculator_screen.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF090C22),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090C22),
        ),
        colorScheme: const ColorScheme.dark().copyWith(
          secondary: const Color(0xFF000000),
          primary: const Color(0xFFFFFFFF),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI Calculator'),
        ),
        body: const CalculatorScreen(),
      ),
    );
  }
}
