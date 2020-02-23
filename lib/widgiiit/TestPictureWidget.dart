import 'package:flutter/material.dart';

class TestPictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A widget with a picture'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Image.asset(
        'assets/images/catUniverse.jpeg',
        scale: 2.0,
      ),
    );
  }
}