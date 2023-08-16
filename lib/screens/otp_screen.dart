// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:login_register_ui/utils/buttons.dart';
import 'package:login_register_ui/utils/text_fields.dart';
import 'package:provider/provider.dart';

class OtpVScreen extends StatefulWidget {
  const OtpVScreen({super.key});

  @override
  State<OtpVScreen> createState() => _OtpVScreenState();
}

class _OtpVScreenState extends State<OtpVScreen> {
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
                'OTP Verification',
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
                'Enter the verification code sent to your mail',
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
              label: 'Code',
              hint: '123456',
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: MainButton(
                name: 'Verify',
                color: Colors.deepPurple.shade600,
                textColor: Colors.white,
                onPressed: () => value.changeScreen(
                    '/LoginSrceen/ForgotPasswordScreen/OtpSrceen/CreateNewPassword',
                    context),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't recieve code?",
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
                    'Resend',
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
