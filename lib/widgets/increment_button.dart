import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton(
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
          Icons.add,
          size: iconSize,
        ),
      ),
    );
  }
}
