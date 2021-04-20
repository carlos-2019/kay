import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';
import 'package:kay/src/pages/auth/login/login.dart';
import 'package:kay/src/widgets/back_button.dart';

class ForgotPassword extends StatelessWidget {
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text(
                "¿Olvidaste tu contraseña?",
                style: TextStyle(
                  color: colorPrimario,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Por favor, ingrese su correo electronico. vas a recibir un link para crear una nueva contraseña",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _emailInput(),
              _sendButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
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

Widget _sendButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: ElevatedButton(
      onPressed: () {
        _showAlert(context);
      },
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        shadowColor: Colors.grey,
        primary: colorPrimario,
      ),
      child: Text(
        'Enviar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    ),
  );
}

void _showAlert(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: Container(
          height: size.height * 0.50,
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/lock.png'),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Tu contraseña ha sido restablecida',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'En breve recibira un correo eletrónico con un código para configurar una nueva contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _doneButton(context),
            ],
          ),
        ),
      );
    },
  );
}

Widget _doneButton(BuildContext context) {
  return Container(
    width: 370.0,
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
        'Aceptar',
        style: TextStyle(color: colorSecundario, fontSize: 18.0),
      ),
    ),
  );
}
