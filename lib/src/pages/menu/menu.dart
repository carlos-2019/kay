import 'package:flutter/material.dart';
import 'package:kay/src/pages/favorito/favorito.dart';

import 'package:kay/src/pages/home/home.dart';
import 'package:kay/src/pages/cuenta/cuenta.dart';
import 'package:kay/src/helpers/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:kay/src/pages/orden/orden.dart';

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  int currentIndex = 0;
  List<Widget> _widgetOptions = [Home(), Orden(), Favorito(), MiCuenta()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSecundario,
      body: _widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 300),
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Inicio'),
              activeColor: colorPrimario,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.list_alt),
              title: Text('Ordenes'),
              activeColor: colorPrimario,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorito'),
              activeColor: colorPrimario,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.person_outline_rounded),
              title: Text('Mi Cuenta'),
              activeColor: colorPrimario,
              inactiveColor: Colors.black),
        ],
      ),
    );
  }
}
