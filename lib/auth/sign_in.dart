import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

//ignore_for_file: prefer_const_constructors

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Inicia sesión para continuar'),
                  Text(
                    'Libreria MAYHA',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3))
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: 'Sign up with Apple',
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: 'Sign up with Google',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Ingresar para Continuar",
                        style: TextStyle(
                          color: Colors.green[800],
                        ),
                      ),
                      Text(
                        "Policicas de Privacidad",
                        style: TextStyle(
                          color: Colors.green[800],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
