// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType? keyboardType;

  const MyTextField(
      {super.key, required this.label, required this.hint, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: keyboardType,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          fillColor: Colors.deepPurple.shade100,
          filled: true,
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white54,
            fontSize: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
