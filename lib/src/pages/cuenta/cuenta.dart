import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';

import 'package:kay/src/pages/auth/auth.dart';

class MiCuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        elevation: 0.0,
        /*title: Text('Favorito'),
        centerTitle: true,*/
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  ListTile(
                    title: Center(
                      child: Text('Mi Cuenta'),
                    ),
                  ),
                  Divider(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthPrincipal()),
                        );
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: Text(
                        'Iniciar Sesión o Registrarse',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
