import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dicoding_flutter_codelabs/model/ingredients.dart';
import 'package:dicoding_flutter_codelabs/view/detail_screen.dart';
import 'dart:convert';

class IngredientsPage extends StatefulWidget {

  IngredientsPage({Key key}) : super(key: key);
  @override
  _IngredientsPageState createState() => _IngredientsPageState();

}

class _IngredientsPageState extends State<IngredientsPage> {

  List<Ingredients> ingredients = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("The Ingredients"),
        ),

        body: getBody());

  }

  getBody() {
    if (ingredients.length == 0) {
      return Center(child: CircularProgressIndicator());
    } else {
      return getListView();
    }
  }


  ListView getListView() =>

      ListView.builder(
          itemCount: ingredients.length,
          itemBuilder: (BuildContext
          context, int position) {
            return getRow(position);
          }
      );


  Widget getRow(int i) {
    return GestureDetector(
        child: Padding(
            padding: EdgeInsets.all(10.0),

            child: Text("${ingredients[i].strIngredient}")

        ),

        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      IngredientsDetailPage(ingredients: ingredients[i])

              )

          );
        }

    );
  }

  loadData() async {
    String dataURL = "https://www.themealdb.com/api/json/v1/1/list.php?i=list";

    http.Response response = await http.get(dataURL);

    var responseJson = json.decode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        ingredients = (responseJson['meals'] as List)
            .map((p) => Ingredients.fromJson(p))
            .toList();
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

}