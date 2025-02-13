import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String buttonName;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const MyButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.height = 40,
    this.width = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(top: 8),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            ),
          child: Text(buttonName),
      ),
    );
  }
}
