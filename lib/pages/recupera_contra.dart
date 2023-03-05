import 'package:all4my/pages/login_m.dart';
import 'package:flutter/material.dart';
import 'package:all4my/pages/button_next.dart';

class RecuperaContrasena extends StatelessWidget {
  const RecuperaContrasena({super.key});

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
                  'Contraseña inválida',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Nueva contraseña',
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
                    labelText: 'Nueva contraseña',
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
                  'Confirmar nueva contraseña',
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
                    labelText: 'Confirma tu nueva contraseña',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 186, 179, 179),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 170, bottom: 0),
                child: NextButton(
                  text: 'Actualizar contraseña',
                  onTapCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginM()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
