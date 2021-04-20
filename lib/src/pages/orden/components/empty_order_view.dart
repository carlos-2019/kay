import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _orderBody(),
    );
  }
}

Widget _orderBody() {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            width: 216,
            height: 216,
            image: AssetImage('assets/images/cart.png'),
          ),
          Text(
            'Carrito vacio',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
