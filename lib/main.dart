import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/ngenge.jpg"),
          ),
          Text(
            "Ngenge Senior",
            style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "FLUTTER DEVELOPMENT",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
            letterSpacing: 2.5),
          ),
          Container(
            height: 12,
          ),
          Container(
            width: 100,
            child: Divider(
              height: 3,
              color: Colors.white,
            ),
          ),
          Container(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.teal,
              ),
              title: Text("+237 671 83 24 63",
                  style: TextStyle(fontFamily: 'Source Sans Pro')),
            ),
          ),
          Container(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                "seniorngenge@gmail.com",
                style: TextStyle(fontFamily: 'Source Sans Pro'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
