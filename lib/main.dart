import 'package:bmi_calculator_flutter/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      initialRoute: kRouteInputPage,
      routes: {
        kRouteInputPage: (context) => InputPage(),
        kRouteResultsPage: (context) => ResultsPage(),
      },
    );
  }
}
