// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:login_register_ui/utils/buttons.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Functions>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              //image
              SizedBox(
                child: Image.asset(
                  'lib/images/planet-background.png',
                ),
              ),
              //logo
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(300),
                    border: Border.all(
                      color: Colors.deepPurple.shade300,
                      width: 10,
                    )),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  'lib/images/zodiac.png',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Star',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade300,
                      fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Signs',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade400,
                      fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MainButton(
                  name: 'Login',
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () => value.changeScreen('/LoginSrceen', context)),
              SizedBox(
                height: 20,
              ),
              MainButton(
                name: 'Register',
                color: Colors.deepPurple.shade600,
                textColor: Colors.white,
                onPressed: () => value.changeScreen('/RegisterSrceen', context),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Continue as a guest',
                    style: TextStyle(
                      color: Colors.deepPurple.shade400,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.getFont('Lora').fontFamily,
                    ),
                  ),
                ),
              )

              // logo

              //buttons
            ],
          ),
        ),
      ),
    );
  }
}
