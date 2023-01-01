import 'package:flutter/material.dart';

//routes
const kRouteInputPage = '/';
const kRouteResultsPage = '/results_page';

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomButtonColor = Color(0xFFEB1555);
const kBottomButtonHeight = 80.0;
const kSliderActiveTrackColor = Colors.white;
const kSliderThumbColor = Color(0xFFEB1555);
const kSliderOverlayColor = Color(0x1FEB1555);
const kSliderInactiveTrackColor = Color(0xFF8D8E98);
const kSliderThumbRadius = 15.0;
const kSliderOverlayRadius = 30.0;
const kSliderInitialValue = 180.0;
const kRoundIconButtonFillColor = Color(0xFF4C4F5E);
const kTitleText = 'BMI CALCULATOR';
const kWeightText = 'WEIGHT';
const kAgeText = 'AGE';
const kCalculateText = 'CALCULATE';
const kRecalculateText = 'RE-CALCULATE';
const kResultText = 'Your Result';
const kCmText = 'cm';

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kBottomButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);

const kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
);

const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

const kSliderThemeData = SliderThemeData(
  activeTrackColor: kSliderActiveTrackColor,
  thumbColor: kSliderThumbColor,
  overlayColor: kSliderOverlayColor,
  inactiveTrackColor: kSliderInactiveTrackColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: kSliderThumbRadius),
  overlayShape: RoundSliderOverlayShape(overlayRadius: kSliderOverlayRadius),
);
