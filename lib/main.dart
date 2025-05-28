import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              LinearProgressIndicator(value: 23),
              Text('Loading...',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
              Text('Press any button',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
            
            ]),
          ),
        ),
       floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.cloud_download),
      ),
      ),
    );
  }
}
