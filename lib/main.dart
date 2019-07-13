import "package:flutter/material.dart";

void main() => runApp(
  new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(primarySwatch: Colors.brown),
  home: new MyHomePage()
  )
);


  class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
  }
  
  class _MyHomePageState extends State<MyHomePage> {

  

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(title: Text("Age calculator")),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new OutlineButton(
                child: new Text("Select your year of birth"),
                borderSide: new BorderSide(color: Colors.black, width: 3.0),
                color: Colors.white,
                onPressed: ()=>print("Hello world"),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new Text("Your age is 10",
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      );
    }
  }