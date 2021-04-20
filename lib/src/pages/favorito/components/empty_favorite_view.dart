import 'package:flutter/material.dart';

class EmptyFavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _favoriteBody(),
    );
  }
}

Widget _favoriteBody() {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            width: 216,
            height: 216,
            image: AssetImage('assets/images/favorite.png'),
          ),
          Text(
            'Lista de favorito esta vacia',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
