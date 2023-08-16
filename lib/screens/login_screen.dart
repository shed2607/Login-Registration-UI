// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:login_register_ui/utils/buttons.dart';
import 'package:login_register_ui/utils/text_fields.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Welcome back! Glad to see you, Again!',
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
              MyTextField(
                label: 'Enter your email',
                hint: 'example@example.com',
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                label: 'Enter your password',
                hint: '********',
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextButton(
                      onPressed: () => value.changeScreen(
                          '/LoginSrceen/ForgotPasswordScreen', context),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MainButton(
                name: 'Login',
                color: Colors.deepPurple.shade600,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 25,
              ),
              value.options('Or Login With'),
              SizedBox(
                height: 25,
              ),
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
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't have an account?",
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
                      'Register',
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
      ),
    );
  }
}
