import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello, World!!!',
        
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
