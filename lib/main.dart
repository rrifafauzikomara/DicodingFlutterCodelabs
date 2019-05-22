import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//      initialRoute: '/',
//      routes: {
//        // Ketika navigasi ke route "/", buat HomeScreen Widget
//        '/': (context) => HomeScreen(),
//        // ketika navigasi ke route "/detail", buat DetailScreen Widget
//        '/detail': (context) => DetailScreen(),
//      },
      title: 'Bahan Makanan',
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomeScreen> {

  List<String> data = ['Chicken','Salmon','Beef','Pork','Avocado','Apple Cider Vinegar','Asparagus'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Bahan Makanan'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]),
//            onTap: () {
//              Navigator.pushNamed(context, '/detail', arguments: );
//            },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(item: data[index]),
                  ),
                );
              },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

  DetailScreen({Key key, this.item}) : super(key: key);
  final String item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Detail Bahan Makanan'),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}