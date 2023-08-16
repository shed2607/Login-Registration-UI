// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_ui/screens/create_new_password_screen.dart';
import 'package:login_register_ui/screens/first_screen.dart';
import 'package:login_register_ui/screens/forgot_password_screen.dart';
import 'package:login_register_ui/screens/login_screen.dart';
import 'package:login_register_ui/screens/otp_screen.dart';
import 'package:login_register_ui/screens/register_screen.dart';
import 'package:login_register_ui/services/functions.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Functions(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign in or Sign up',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor:
                Colors.deepPurpleAccent, // Set to the same color as AppBar
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const FirstScreen(),
        '/LoginSrceen': (context) => LoginScreen(),
        '/RegisterSrceen': (context) => RegisterScreen(),
        '/LoginSrceen/ForgotPasswordScreen': (context) =>
            ForgotPasswordScreen(),
        '/LoginSrceen/ForgotPasswordScreen/OtpSrceen': (context) =>
            OtpVScreen(),
        '/LoginSrceen/ForgotPasswordScreen/OtpSrceen/CreateNewPassword':
            (context) => CreateNewPasswordScreen()
      },
    );
  }
}
