import 'package:flutter/material.dart';
import 'screens/onboarding/components/body_boarding.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      // iniciar ruta
      initialRoute: '/',
      routes: {
        '/': (context) => const BodyBoarding(),
        // '/second': (context) => const Login(),
      },
    );
  }
}
