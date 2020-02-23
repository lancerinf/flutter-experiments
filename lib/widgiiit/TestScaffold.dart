import 'package:flutter/material.dart';

class TestScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first test scaffold widget'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}