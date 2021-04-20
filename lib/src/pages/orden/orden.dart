import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';

import 'package:kay/src/pages/orden/components/empty_order_view.dart';
import 'package:kay/src/pages/orden/components/order_view.dart';

class Orden extends StatefulWidget {
  @override
  _OrdenState createState() => _OrdenState();
}

class _OrdenState extends State<Orden> {
  final emptyOrdenState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorPrimario,
          elevation: 0.0,
          /*title: Text('Mi orden'),
          centerTitle: true,*/
        ),
        backgroundColor: Colors.white,
        body: emptyOrdenState ? EmptyOrderView() : OrderView());
  }
}
