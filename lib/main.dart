import 'package:flutter/material.dart';
import 'package:widget_testing/widgiiit/TestPictureWidget.dart';
import 'package:widget_testing/widgiiit/TestScaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dis great demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.deepOrangeAccent,
        ),
        home: Builder(
          builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text('Fede widget testing app'),
              ),
              body: Column(
                children: <Widget>[
                  CustomListTile(TestScaffold(), 'TestScaffold'),
                  CustomListTile(TestPictureWidget(), 'TestPictureWidget')
                ],
              )),
        ));
  }
}

class CustomListTile extends Container {
  StatelessWidget _pushWidget;
  var _widgetTitle;

  CustomListTile(StatelessWidget pushWidget, String widgetTitle) {
    this._pushWidget = pushWidget;
    this._widgetTitle = widgetTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blueGrey))),
      child: ListTile(
        title: Text(_widgetTitle),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => _pushWidget));
        },
      ),
    );
  }
}
