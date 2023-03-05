import 'package:all4my/pages/login.dart';
import 'package:all4my/pages/login_m.dart';
import 'package:all4my/pages/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:all4my/pages/button_next.dart';
import 'package:all4my/main.dart';

class RegisterDt extends StatelessWidget {
  const RegisterDt({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF47197C),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color(0xFFD83A6F),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/google.png',
                width: 20,
                height: 20,
              ),
              color: const Color(0xFFD83A6F),
              onPressed: () {},
            ),
          ],
          title: const Text(
            'Registrate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Text(
                  'Crea una cuenta para usar la App',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Nombre',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Nombre completo',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Correo electrónico',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Correo electrónico',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Contraseña',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 14,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 186, 179, 179),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Contraseña inválida',
                  style: TextStyle(
                    color: Color.fromARGB(255, 186, 179, 179),
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 0),
                child: NextButton(
                  text: 'Crear cuenta',
                  onTapCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Menu()),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
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
                          MaterialPageRoute(
                              builder: (context) => const Login()),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
