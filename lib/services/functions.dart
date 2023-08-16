// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Functions extends ChangeNotifier {
  void changeScreen(String name, BuildContext context) {
    Navigator.pushNamed(context, name);
  }

  Widget options(String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: Colors.white, // Change the color of the divider
              thickness: 2, // Adjust the thickness of the divider
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              info,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: GoogleFonts.getFont('Lora').fontFamily,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.white, // Change the color of the divider
              thickness: 2, // Adjust the thickness of the divider
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
