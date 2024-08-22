import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/pages/home.dart';
import 'package:loan_app/pages/loans.dart';
import 'package:loan_app/pages/settings.dart';
import 'package:loan_app/auth/login.dart';
import 'package:loan_app/auth/register.dart';
import 'package:loan_app/auth/forgot_password.dart';
import 'package:loan_app/intro_screens/intro_scaffold.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bekhan Extra Cash",
    initialRoute: "/",
    routes: {
      "/forgotpass": (context) => const ForgotPassword(),
      "/register": (context) => const RegisterUser(),
      "/": (context) => const IntroScreen(),
      "/home": (context) => const HomePage(),
      '/loans' : (context) => const LoansPage(),
      '/settings' : (context) => const SettingsPage()
    },
  ));
}
