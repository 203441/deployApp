import 'package:all4my/pages/login.dart';
import 'package:all4my/pages/menu_principal.dart';
import 'package:all4my/screens/onboarding/components/body_boarding.dart';
import 'package:all4my/screens/onboarding/components/onboarding.dart';
import 'package:flutter/material.dart';


void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      home: BodyBoarding(),
    );
  }
}

