import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 227, 163, 255),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      data,
    );
  }
}
