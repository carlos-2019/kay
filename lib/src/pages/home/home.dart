import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        elevation: 0.0,
        title: Center(
          child: Text('Kay'),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(
                Icons.filter_list,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                _topBar(context),
                _categoria(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _listCategoria(context, Colors.orange[200],
                              'assets/images/Electronica.png', 'Electronica'),
                          _listCategoria(context, Colors.red[200],
                              'assets/images/Ropa.png', 'Ropa'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _listCategoria(context, Colors.blue[200],
                              'assets/images/Belleza.png', 'Belleza'),
                          _listCategoria(context, Colors.green[200],
                              'assets/images/Regalos.png', 'Regalos'),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16.0, top: 20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: colorPrimario,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.search,
                size: 20.0,
                color: colorPrimario,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  '¿Que estas buscando?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _categoria() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Categorias',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        Icon(
          Icons.more_horiz,
          color: colorPrimario,
        ),
      ],
    ),
  );
}

Widget _listCategoria(
    BuildContext context, Color color, String urlImg, String nombre) {
  return Expanded(
    child: GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[200], width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Row(
          children: <Widget>[
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(0.5),
              ),
              child: Center(
                child: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    urlImg,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  nombre,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
