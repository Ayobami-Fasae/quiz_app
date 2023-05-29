import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({required this.imagePath, this.imageColor, super.key});

  final String imagePath;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 300,
      color: imageColor,
    );
  }
}
