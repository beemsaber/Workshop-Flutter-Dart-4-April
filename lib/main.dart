import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Widget myText = Text(
    'สวัสดีชาวโลก',
    style: TextStyle(
        fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green),
  );

  Widget showLogo = Image.asset('images/logo.gif');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.android),
          title: Text('แอปของเราเอง'),
          actions: <Widget>[Icon(Icons.cloud_upload), Icon(Icons.exit_to_app)],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.yellow], begin: Alignment(-1, -1))),
          padding: EdgeInsets.only(top: 50.0),
          alignment: Alignment.topCenter,
          child: showLogo,
        ),
      ),
    );
  }
}
