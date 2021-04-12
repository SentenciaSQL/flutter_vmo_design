import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const CustomIconWidget(this.icon, this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon, size: size, color: color
    );
  }
}
