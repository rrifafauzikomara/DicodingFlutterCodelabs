import 'package:flutter/material.dart';

import 'package:dicoding_flutter_codelabs/model/ingredients.dart';

class IngredientsDetailPage extends StatelessWidget {

  Ingredients ingredients;

  IngredientsDetailPage({Key key, @required this.ingredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Ingredients"),
        ),
        body: getBody());
  }

  getBody() {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(32.0),
          child: Text(
            "${ingredients.strIngredient}",
            softWrap: true,
          ),
        )
      ],
    );
  }
}