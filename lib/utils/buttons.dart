import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final String name;
  final Color color;
  final Color textColor;
  final Function() onPressed;
  const MainButton({
    super.key,
    required this.name,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: const Size(400, 70),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.deepPurple.shade600,
            width: 5,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontFamily: GoogleFonts.getFont('Lora').fontFamily,
          ),
        ),
      ),
    );
  }
}

class MyLoginIconBtn extends StatelessWidget {
  final String image;
  const MyLoginIconBtn({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.deepPurple.shade300,
            width: 3,
          ),
        ),
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
