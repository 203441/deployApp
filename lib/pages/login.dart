import 'package:all4my/pages/login_m.dart';
import 'package:all4my/pages/menu_principal.dart';
import 'package:all4my/pages/recover_pass.dart';
import 'package:flutter/material.dart';
import 'register_button.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:all4my/pages/register_form.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
GoogleSignInAccount? _currentUser;



// import 'package:all4my/pages/login.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                ElevatedButton(
                  onPressed: () {
                    // signInWithGoogle();
                  },
                  child: Text('Iniciar sesión con Google'),
                  
                ),

              const SizedBox(height: 20),
              ElevatedButton.icon(
              onPressed: () async {
                final LoginResult result = await FacebookAuth.instance.login();
                if (result.status == LoginStatus.success) {
                  // La autenticación con Facebook fue exitosa, puedes obtener el token de acceso y otros datos de usuario aquí
                } else {
                  // La autenticación con Facebook falló
                }
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Menu())
                );
              },
              icon: const Icon(Icons.facebook),
              label: const Text('Acceder con Facebook'),
            ),

              const SizedBox(height: 20),
              RegisterButton(
                text: 'Registrarse con e-mail',
                onTapCallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterDt(),
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
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                    color: Color(0xFFE1416D),
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                    color: Color(0xFF70C83A),
                    fontSize: 16,
                  ),
                ),
              ),],
              ),
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
              TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RecoverPass()),
                      );
                    },
                    child: const Text(
                      'Recuperar contraseña',
                      style: TextStyle(
                        color: Color.fromARGB(255, 100, 65, 225),
                        fontSize: 16,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
  
}
