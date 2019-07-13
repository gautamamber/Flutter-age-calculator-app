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
    // taking age in double because performing some animation
  double age = 0.0;
  var selectedYear;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  // datepicker

  void _showPicker(){
    showDatePicker(context: context,
     firstDate: new DateTime(1990), 
     initialDate: new DateTime(2019),
     lastDate: DateTime.now()).then((DateTime dt){
    setState(() {
      selectedYear = dt.year;
      print("selected year is $selectedYear");
      calculateAge();
    });
        });
  }

  void calculateAge(){
    setState(() {
      age = 2019 - selectedYear;
    });
    
  }





    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(title: Text("Age calculator")),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new OutlineButton(
                child: new Text(selectedYear != null ? selectedYear.toString():
                 "Select your age"),
                borderSide: new BorderSide(color: Colors.black, width: 3.0),
                color: Colors.white,
                onPressed: _showPicker
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new Text("Your age is ${age.toStringAsFixed(0)}",
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      );
    }
  }