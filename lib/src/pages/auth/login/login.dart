import 'package:flutter/material.dart';

import 'package:kay/src/helpers/constants.dart';
import 'package:kay/src/pages/auth/forgotpassword/forgot_password.dart';
import 'package:kay/src/pages/auth/register/register.dart';
import 'package:kay/src/widgets/back_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  width: double.infinity,
                  height: size.height * 0.40,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: backButton(context, colorSecundario),
                )
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -20.0),
              child: Container(
                width: double.infinity,
                height: size.height * 0.60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Bienvenido de nuevo!!",
                          style: TextStyle(
                            color: colorPrimario,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Inicie Sesión",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                          ),
                        ),
                        _emailinput(),
                        _passwordinput(),
                        _buttonLogin(context),
                        Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgotPassword();
                              }));
                            },
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '¿No, tiene una cuenta?',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Register();
                                    }));
                                  },
                                  child: Text(
                                    'Registrarse',
                                    style: TextStyle(
                                      color: colorPrimario,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0,
                                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _emailinput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo Electronico',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordinput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 20.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        shadowColor: Colors.grey,
        primary: colorPrimario,
      ),
      child: Text(
        'Iniciar Sesión',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    ),
  );
}
