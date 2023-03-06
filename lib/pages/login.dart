import 'package:all4my/main.dart';
import 'package:all4my/pages/home.dart';
import 'package:all4my/pages/login_m.dart';
import 'package:all4my/pages/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'register_button.dart';


import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginUwu extends StatelessWidget {
  const LoginUwu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/all4my.jpg',
                width: 220,
                height: 220,
              ),
              const SizedBox(height: 20),

              // continuar con google
              RegisterButton(
                text: 'Continuar con Google',
                onTapCallback: () async {
                  await signInWithGoogle();
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeW()),
                  );
                },
                color: const Color(0xFF4068EC),
                color_cont: const Color(0xFF4068EC),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/images/google.png',
                  width: 20,
                  height: 20,
                ),
              ),

              const SizedBox(height: 20),

              // boton de registrarse con facebook

              RegisterButton(
                text: 'Continuar con Facebook',
                onTapCallback: () async {
                  final LoginResult result = await FacebookAuth.instance.login();
                if (result.status == LoginStatus.success) {
                  // La autenticación con Facebook fue exitosa, puedes obtener el token de acceso y otros datos de usuario aquí
                } else {
                  // La autenticación con Facebook falló
                }
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const HomeW())
                );
                },
                color: const Color(0xFF384F9F),
                color_cont: const Color(0xFF384F9F),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/images/facebook.png',
                  width: 20,
                  height: 20,
                ),
              ),
              
              

              const SizedBox(height: 20),

              // boton de registrarse con correo electronico
              RegisterButton(
                text: 'Registrarse con e-mail',
                onTapCallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterDt() // RegisterForm()
                        ),
                  );
                },
                color: Colors.white,
                color_cont: const Color(0xFF62676D),
                colorText: const Color(0xFF62676D),
                img_icon: Image.asset(
                  'assets/images/email.png',
                  width: 20,
                  height: 20,
                ),
              ),

              const SizedBox(height: 20),

              // texto de entrar como invitado
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                    color: Color(0xFFE1416D),
                    fontSize: 16,
                  ),
                ),
              ),
              // texto de entrar como vendedor
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                    color: Color(0xFF70C83A),
                    fontSize: 16,
                  ),
                ),
              ),

              // texto de ya tienes cuenta?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes cuenta?',
                    style: TextStyle(
                      color: Color(0xFF4E4E4E),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginM()),
                      );
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Color(0xFFE1416D),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

// eliminar el usuario de la base de datos
Future<void> deleteUser() async {
  final User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    if (user.providerData.isEmpty) {
      await user.delete();
    } else {
      user.delete();
    }
  }
}

// registrar usuario con correo y contraseña
Future<void> registerUser() async {
  final User? user = FirebaseAuth.instance.currentUser;

  if (user != null && !user.emailVerified) {
    await user.sendEmailVerification();
  }
}