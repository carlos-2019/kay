import 'package:flutter/material.dart';

import 'package:kay/src/helpers/constants.dart';

class OrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  _orders(context),
                  _orders(context),
                  _orders(context),
                  _checkoutResume(context),
                ],
              ),
            ),
          ])),
        ],
      ),
    );
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: <Widget>[
      _cardOrders(context),
    ],
  );
}

Widget _cardOrders(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            spreadRadius: 1.0,
            blurRadius: 4.0,
          ),
        ]),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _cardOrderTopContent(),
          ],
        ),
        Column(
          children: <Widget>[
            _item(context),
            _item(context),
            _item(context),
          ],
        ),
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: Text(
            'Nombre de la tienda',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: colorPrimario,
                size: 16.0,
              ),
              Text(
                'Direccion de la tienda',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _item(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey),
      ),
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Nombre del producto',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 15.0,
            ),
          ),
          Text(
            'Alguna descripcion',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
      trailing: Text(
        'S/. Precio',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 13.0,
        ),
      ),
    ),
  );
}

Widget _checkoutResume(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          spreadRadius: 1.0,
          blurRadius: 4.0,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        _itemCheckOutResume(
            title: 'Subtotal', precio: 'S/ 20.00', context: context),
        _itemCheckOutResume(
            title: 'Descuento', precio: 'S/ 0.00', context: context),
        _itemCheckOutResume(
            title: 'Envio', precio: 'S/ 0.00', context: context),
        _buttonCheckOut(context),
      ],
    ),
  );
}

Widget _itemCheckOutResume(
    {title: String, precio: String, context: BuildContext}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
    ),
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
      ),
      trailing: Text(
        precio,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
      ),
    ),
  );
}

Widget _buttonCheckOut(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        primary: colorPrimario,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: () {
        _showAlertPago(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: Text(
              'Pagar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text(
              'S/. Precio',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void _showAlertPago(BuildContext context) {
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
              Container(
                child: Text(
                  'Metodos de pago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Image(
                image: AssetImage('assets/images/pago.png'),
                width: 300,
                height: 250,
              ),
              Text('Numero de cuenta 1'),
              _okButton(context),
            ],
          ),
        ),
      );
    },
  );
}

Widget _okButton(BuildContext context) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
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
