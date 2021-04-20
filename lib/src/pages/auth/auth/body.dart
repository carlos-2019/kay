import 'package:flutter/material.dart';

import 'package:kay/src/pages/auth/auth/background.dart';
import 'package:kay/src/pages/auth/auth/button.dart';
import 'package:kay/src/pages/auth/login/login.dart';
import 'package:kay/src/pages/auth/register/register.dart';

import 'package:flutter_svg/svg.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenido a Kay',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Iniciar Sesión",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            ),
            RoundedButton(
              text: "Registrarse",
              color: Colors.redAccent,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
