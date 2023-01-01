import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.iconData, this.onPress});

  final IconData iconData;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: const CircleBorder(),
      elevation: 0.0,
      fillColor: kRoundIconButtonFillColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(iconData),
    );
  }
}
