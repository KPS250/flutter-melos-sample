import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;
  final TextStyle? textStyle;

  const Button({
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
    this.borderRadius = 8.0,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        //primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        label,
        style: textStyle ??
            const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
      ),
    );
  }
}
