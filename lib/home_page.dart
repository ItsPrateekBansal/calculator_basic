import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  var num1 = 0,num2 = 0,sum = 0.toDouble();
  final TextEditingController t1 = new TextEditingController(text:"0");
  final TextEditingController t2 = new TextEditingController(text:"0");
  void clear(){
    setState(() {
      num1=0;
      num2=0;
      t1.text = "0";
      t2.text = "0";
    });
  }
  void addition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 + num2).toDouble();
    });
  }
  void subtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 - num2).toDouble();
    });
  }

  void multiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 * num2).toDouble();
    });
  }

  void divide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("OUTPUT : $sum",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.purple,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.tealAccent,
            ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "First Number",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Second Number",
              ),
              controller: t2,
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: Icon(Icons.add),
                  onPressed: addition,
                  color: Colors.tealAccent,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  onPressed: subtraction,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  onPressed: multiply,
                  color: Colors.tealAccent,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  onPressed: divide,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  onPressed: clear,
                  color: Colors.lightBlueAccent,
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}