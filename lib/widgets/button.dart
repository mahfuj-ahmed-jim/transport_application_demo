import 'package:flutter/material.dart';

enum ButtonType { blue, red, white }

class Button extends StatelessWidget {
  final String text;
  final ButtonType type;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.text,
    required this.type,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = _getBackgroundColor(type);
    final textColor = _getTextColor(type);

    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3AAFFF),
            Color(0xFFFC6C75),
            Color(0xFFFFFFFF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: const BorderSide(
              width: 1,
              color: Colors.transparent,
            ),
          ),
          padding: EdgeInsets.zero,
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(ButtonType type) {
    switch (type) {
      case ButtonType.blue:
        return const Color(0xFF3AAFFF);
      case ButtonType.red:
        return const Color(0xFFFC6C75);
      case ButtonType.white:
        return const Color(0xFFFFFFFF);
    }
  }

  Color _getTextColor(ButtonType type) {
    switch (type) {
      case ButtonType.blue:
      case ButtonType.red:
        return const Color(0xFFFFFFFF);
      case ButtonType.white:
        return const Color(0xFF000000);
    }
  }
}