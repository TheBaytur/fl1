import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

  class _MyFirstAppState extends State<MyFirstApp> {
    late bool _isLoading;
    late double _progressValue;

    @override
  void initState() {
    _isLoading = false;
    _progressValue = 0.0;
    super.initState();
  }
    
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(title: Text('My First fl App'),
        
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/fridge_logo.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 16,
                left: 115,
                child: Text('My custom Font',
              style: TextStyle(fontSize: 30,
              color: Colors.red,
              fontFamily: 'AmdCreamScream',
              ),
              ),
              ),
            ],
          ),
          
        ),
       floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState((){
              _isLoading = !_isLoading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
      ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(  seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _isLoading = false;
          _progressValue = 0.0;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}

// My main app is a simple Flutter application that displays a loading indicator and some text.
