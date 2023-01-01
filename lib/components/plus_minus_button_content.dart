import 'package:bmi_calculator_flutter/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class PlusMinusButtonContent extends StatelessWidget {
  PlusMinusButtonContent(
      {required this.label,
      required this.value,
      required this.leftButtonIcon,
      required this.rightButtonIcon,
      required this.onLeftButtonPress,
      required this.onRightButtonPress});

  final String label;
  final String value;
  final IconData leftButtonIcon;
  final IconData rightButtonIcon;
  final VoidCallback onLeftButtonPress;
  final VoidCallback onRightButtonPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              iconData: leftButtonIcon,
              onPress: onLeftButtonPress,
            ),
            const SizedBox(width: 10.0),
            RoundIconButton(
              iconData: rightButtonIcon,
              onPress: onRightButtonPress,
            )
          ],
        ),
      ],
    );
  }
}
