import 'package:all4my/pages/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:all4my/pages/register.dart';

class LoginM extends StatelessWidget {
  const LoginM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/fondo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            const SizedBox(
              width: 100, height: 100,
              child: CircleAvatar(backgroundImage: AssetImage('assets/images/logo.jpeg'),
              radius: 220,
              )
            ),
           const  Padding(
               padding:  EdgeInsets.only(top:10,bottom: 30),
               child:  TextField(
                  decoration: InputDecoration(
                    hintText: 'Usuario'),
                ),
             ),
           const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: TextField(
                obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Contraseña'),
                ),
            ),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              }, 
              child: const Text('Inicio de sesión')
              ),
              InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          '¿No tienes cuenta? Crea una',
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