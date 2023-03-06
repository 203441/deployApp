import 'package:all4my/pages/login_m.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding (
          padding: const EdgeInsets.only(top: 100,left: 20, right: 20),
          child: SingleChildScrollView(
          child: Column(
            children:[
              const SizedBox(
                width: 80, height: 80,
                child: CircleAvatar(backgroundImage: AssetImage('assets/images/logo.jpeg'),
                radius: 220,
              ),
             ),
             const Padding(
                 padding:  EdgeInsets.only(top:5,bottom: 5),
                 child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Email'),
                ),
             ),
           const Padding(
              padding: EdgeInsets.only(top: 5,bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Nombre'),
                ),
             ),
             const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Apellidos'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Row(children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Años'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10),
                    Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Género'
                      ),
                    ),
                   ),
                 ],
                ),
              ),
             const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Teléfono'),
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 15),
                child:  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Contraseña'),
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child:  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirmar contraseña'),
                ),
              ),
              ElevatedButton(
                onPressed: (){}, 
                  child: const Text('Iniciar sesión')
                ),
              InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginM()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Ya tengo una cuenta',
                          style: TextStyle(
                            color: Color(0xff01295F),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
            ],
          ),
          ),
        ),
      ),
    );
  }
}

