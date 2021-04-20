import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';
import 'package:kay/src/pages/auth/login/login.dart';

import 'package:kay/src/widgets/back_button.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Crear una cuenta",
                  style: TextStyle(
                    color: colorPrimario,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                _nameInput(context),
                _surnameInput(context),
                _phoneInput(context),
                _emailInput(context),
                _passwordInput(context),
                _registerButton(context),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                  child: Text(
                    'Al presionar el boton registrarse acepta los terminos y condiciones',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _nameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Ingrese su Nombre',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _surnameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Ingrese su Apellido',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Ingrese su celular',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Ingrese su correo electronico',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: colorInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Ingrese su contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _registerButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Login();
        }));
      },
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        shadowColor: Colors.grey,
        primary: colorPrimario,
      ),
      child: Text(
        'Registrarse',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    ),
  );
}
