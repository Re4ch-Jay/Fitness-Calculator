import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton(
      {super.key, required this.onTap, this.iconSize, this.radius});
  final VoidCallback onTap;
  final double? iconSize;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        child: Icon(
          FontAwesomeIcons.minus,
          size: iconSize,
        ),
      ),
    );
  }
}
