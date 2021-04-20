import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';

import 'package:kay/src/pages/favorito/components/empty_favorite_view.dart';
import 'package:kay/src/pages/favorito/components/favorite_view.dart';

class Favorito extends StatefulWidget {
  @override
  _FavoritoState createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  final emptyFavoriteState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        elevation: 0.0,
        /*title: Text('Favorito'),
        centerTitle: true,*/
      ),
      body: emptyFavoriteState ? EmptyFavoriteView() : FavoriteView(),
    );
  }
}
