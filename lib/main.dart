import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bahan Makanan',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bahan Makanan'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Chicken'),
            ),
            ListTile(
              title: Text('Salmon'),
            ),
            ListTile(
              title: Text('Beef'),
            ),
            ListTile(
              title: Text('Pork'),
            ),
            ListTile(
              title: Text('Avocado'),
            ),
            ListTile(
              title: Text('Apple Cider Vinegar'),
            ),
            ListTile(
              title: Text('Asparagus'),
            )
          ],
        ),
      ),
    );
  }
}