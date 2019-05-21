import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller1 = new TextEditingController();
  final controller2 = new TextEditingController();
  final GlobalKey key1 = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Story Reader"),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: new Form(
        key:,
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(15.0),
              child: new TextFormField(
                controller: controller1,
                decoration: new InputDecoration(
                  labelText: "Enter the tag name",
                  hintStyle: new TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  helperText: "Enter the basic idea of the story!",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                ),
                validator: (val) => val == null ? val : null,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(15.0),
              child: new TextFormField(
                maxLines: 10,
                controller: controller2,
                decoration: new InputDecoration(
                  labelText: "Enter the story in brief",
                  hintStyle: new TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  helperText: "Enter the story!",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                ),
              ),
            ),
            new RaisedButton(
              child: new Text("Enter into Database"),
              onPressed: _Print,
            ),
          ],
        ),
      ),

    );
  }

  void _Print() {

  }
}
