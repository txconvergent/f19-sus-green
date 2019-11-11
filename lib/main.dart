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
      body: grid(),
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
  
  class grid1 extends StatelessWidget{
    Widget build (BuildContext context){
      return new GridView.count(
  // Create a grid with 2 columns. If you change the scrollDirection to
  // horizontal, this produces 2 rows.
  crossAxisCount: 2,
  // Generate 100 widgets that display their index in the List.
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        //style: Theme.of(context).textTheme.headline,
      ),
    );
  }),
);
    }
  }

  class grid extends StatelessWidget{
  Widget build (BuildContext ctxt) {
  return new GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 100,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: grid1(),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      color: Colors.teal[600],
    ),
  ],
);
  }
  }