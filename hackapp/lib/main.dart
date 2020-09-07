import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hack Women',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Segoe UI',
      ),
      home: MeetPage(),
    );
  }
}

class MeetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App name'),
        ),
        backgroundColor: Color.fromARGB(255, 210, 210, 210),
        body: Screen());
  }
}
