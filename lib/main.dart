import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      home: Scaffold(
        appBar: AppBar(title: Text('Choose lots: ')),
        body: FirstScreen(),
        )
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      body:ListView(
      children: <Widget>[
        ListTile(
          title: Text('Lot 1'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap:(){
            _navigateToSecondScreen(context);
          }
        ),
        ListTile(
          title: Text('Lot 2'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap:(){
            _navigateToSecondScreen(context);
          }
        ),
      ], 
    )
    );
  }
}

  class SubPage extends StatelessWidget {
   @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Map Page"),
      ),
      body: new Text("Something else"),
    );
  }
}

  void _navigateToSecondScreen(BuildContext context) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubPage(),
            ));
      }
  
  
  