import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  title: 'Flutter App',
  home: FlutterScaffold(),
));

class FlutterScaffold extends StatefulWidget {

  @override
  _CounterState createState() {
    return new _CounterState();
  }
}


class _CounterState extends State<FlutterScaffold>{
  int _counter = 0;

  void _increment(){
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Nav menu',
          onPressed: () => print("Press Nav Menu"),
        ),
        title: Text("Test Text"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => print("Press Search"),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Pressed $_counter times',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed:_increment,
      ),
    );
  }

}