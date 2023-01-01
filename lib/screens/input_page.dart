import 'package:bmi_calculator_flutter/calculator_brain.dart';
import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:bmi_calculator_flutter/components/reusable_slider.dart';
import 'package:bmi_calculator_flutter/components/plus_minus_button_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../constants.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kTitleText),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          kCmText,
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    ReusableSlider(
                        value: height,
                        minValue: 120.0,
                        maxValue: 220.0,
                        onSlide: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        })
                  ],
                ),
                onPress: () {
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: PlusMinusButtonContent(
                        label: kWeightText,
                        value: weight.toString(),
                        leftButtonIcon: Icons.remove,
                        rightButtonIcon: Icons.add,
                        onLeftButtonPress: () {
                          setState(() {
                            weight--;
                          });
                        },
                        onRightButtonPress: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: PlusMinusButtonContent(
                        label: kAgeText,
                        value: age.toString(),
                        leftButtonIcon: Icons.remove,
                        rightButtonIcon: Icons.add,
                        onLeftButtonPress: () {
                          setState(() {
                            age--;
                          });
                        },
                        onRightButtonPress: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              onPress: () {
                final calculatorBrain = CalculatorBrain(
                  height: height,
                  weight: weight,
                );
                Navigator.pushNamed(context, kRouteResultsPage,
                    arguments: calculatorBrain);
              },
              buttonTitle: kCalculateText,
            ),
          ],
        ),
      ),
    );
  }
}
