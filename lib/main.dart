import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 243, 86, 33),
        ),
        body: Center(
          child: Text('This is Flutter 1 application',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ), 
        ),
      ),
    ),
    )
  );
  
}
