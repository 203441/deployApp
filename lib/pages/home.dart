import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login.dart';

class HomeW extends StatelessWidget {
  const HomeW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      // crear un boton para cerrar sesion de google y borrar el usuario de la base de datos
      body: Center(
        child: ElevatedButton(
          // al presionar el boton se eliminan los datos del usuario de la base de datos para que vuelva a iniciar sesion
          onPressed: () async {
            await signOutGoogle();
            await FirebaseAuth.instance.signOut();
            // ignore: use_build_context_synchronously
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginUwu()),
            );
          },
          child: const Text('Cerrar sesión'),
        ),
      ),
    );
  }
}
Future<void> signOutGoogle() async {
  await GoogleSignIn().signOut();
  print('User Sign Out');
}
