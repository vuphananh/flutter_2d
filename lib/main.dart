import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;
//  String _currentAnimationName = "badge_challenger";
//  String _currentAnimationName = "badge_dreamer";
  String _currentAnimationName = "badge_expert";
//  String _currentAnimationName = "badge_explorer";
//  String _currentAnimationName = "loading";
//  String _currentAnimationName = "jump";
  int action = 0;
//  String title = "loading cat";
//  String title = "badge challenger";
//  String title = "badge dreamer";
  String title = "badge expert";
//  String title = "badge explorer";
//  String assetfile = "assets/badge_challenger";
//  String assetfile = "assets/badge_dreamer";
  String assetfile = "assets/badge_expert";
//  String assetfile = "assets/badge_explorer";
//  String assetfile = "assets/cat_loading";
//  String assetfile = "assets/Robot";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(title),
      ),
      body: new Container(
        margin: new EdgeInsets.only(top: 30.0),
        height: 300.0,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new NimaActor("assets/badge_dreamer", alignment:Alignment.center, fit:BoxFit.scaleDown,
            animation:"badge_dreamer", mixSeconds:1.0),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
//          action ++;
//          if (action >1) action = 0;

          setState(() {
            switch (action) {
//              case 0:
//                title = "badge challenger";
//                assetfile = "assets/badge_challenger";
//                _currentAnimationName = "badge_challenger";
//                break;
//              case 0:
//                title = "badge dreamer";
//                assetfile = "assets/badge_dreamer";
//                _currentAnimationName = "badge_dreamer";
//                break;
//              case 0:
//                title = "badge expert";
//                assetfile = "assets/badge_expert";
//                _currentAnimationName = "badge_expert";
//                break;
//              case 0:
//                title = "badge explorer";
//                assetfile = "assets/badge_explorer";
//                _currentAnimationName = "badge_explorer";
//                break;
//              case 0:
//                title = "loading cat";
//                assetfile = "assets/cat_loading";
//                _currentAnimationName = "loading";
//                break;
//              case 0:
//                title = "robot jump";
//                assetfile = "assets/Robot";
//                _currentAnimationName = "jump";
//                break;
//              case 1:
//                title = "robot attack";
//                _currentAnimationName = "attack";
//                break;
            }
          });
        },
        child: new Icon(Icons.arrow_upward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
