import 'package:flutter/material.dart';
import 'package:dicoding_flutter_codelabs/view/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The Ingredients',
        home: IngredientsPage()
    );
  }
}