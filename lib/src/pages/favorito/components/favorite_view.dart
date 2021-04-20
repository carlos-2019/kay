import 'package:flutter/material.dart';

class FavoriteView extends StatefulWidget {
  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _listFavorite(),
                _listFavorite(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listFavorite() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Image.network(
              'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          title: Text('Nombre del producto'),
          subtitle: Text('Precio'),
        ),
      ],
    ),
  );
}
