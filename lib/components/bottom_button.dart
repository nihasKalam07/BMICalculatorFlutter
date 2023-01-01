import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {required this.onPress,
      required this.buttonTitle,
      this.buttonColor = kBottomButtonColor});

  final VoidCallback onPress;
  final String buttonTitle;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: buttonColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomButtonHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
