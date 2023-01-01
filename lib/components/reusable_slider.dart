import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class ReusableSlider extends StatelessWidget {
  ReusableSlider(
      {required this.value,
      required this.minValue,
      required this.maxValue,
      required this.onSlide,
      this.themeData = kSliderThemeData});

  final int value;
  final double minValue;
  final double maxValue;
  final Function(double) onSlide;
  final SliderThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: kSliderThemeData,
      child: Slider(
        value: value.toDouble(),
        min: minValue,
        max: maxValue,
        onChanged: onSlide,
      ),
    );
  }
}
