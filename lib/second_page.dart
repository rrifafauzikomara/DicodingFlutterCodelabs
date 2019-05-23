import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  MySecondPage(this.decrementCounter, {Key key, this.title, this.counter})
      : super(key: key);
  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;

  @override
  _MySecondPageState createState() => new _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  void onPressed() {
    widget.decrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times :'),
            new Text(
              super.widget.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: onPressed,
          tooltip: 'Decrement',
          child: new Icon(Icons.indeterminate_check_box),
          backgroundColor: Colors.red),
    );
  }
}