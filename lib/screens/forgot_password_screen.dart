// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:login_register_ui/utils/buttons.dart';
import 'package:login_register_ui/utils/text_fields.dart';
import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Don\'t worry! it occurs. Please enter the email address linked to your account.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                  fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MyTextField(
              label: 'Enter your email',
              hint: 'example@example.com',
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: MainButton(
                name: 'Send Code',
                color: Colors.deepPurple.shade600,
                textColor: Colors.white,
                onPressed: () => value.changeScreen(
                    '/LoginSrceen/ForgotPasswordScreen/OtpSrceen', context),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember Password?",
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
