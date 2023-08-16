// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:login_register_ui/utils/buttons.dart';
import 'package:login_register_ui/utils/text_fields.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Functions>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.deepPurple.shade200,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Hello! Register to get started',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                ),
              ),
            ),
            MyTextField(
              label: 'Username',
              hint: 'example@example.com',
            ),
            MyTextField(
              label: 'Email',
              hint: 'example@example.com',
            ),
            MyTextField(
              label: 'Password',
              hint: '********',
            ),
            MyTextField(
              label: 'Confirm Password',
              hint: '********',
            ),
            MainButton(
              name: 'Register',
              color: Colors.deepPurple.shade600,
              textColor: Colors.white,
              onPressed: () {},
            ),
            value.options('Or Register With'),
            Row(
              children: [
                Expanded(
                  child: MyLoginIconBtn(
                    image: 'lib/images/icons/google.png',
                  ),
                ),
                Expanded(
                  child: MyLoginIconBtn(
                    image: 'lib/images/icons/apple.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade600,
                      fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
