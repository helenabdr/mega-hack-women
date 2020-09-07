import 'package:flutter/material.dart';

bool c = false;

class ContentTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 290,
      child: Stack(
        children: <Widget>[
          _text1(),
          Align(
            alignment: Alignment.topCenter,
            child: _row1(),
          ),
          Align(
            alignment: Alignment.center,
            child: _row2(),
          ),
          if (c) Text('if')
        ],
      ),
    );
  }
}

// Button
Widget _actionClose() {
  return Container(
    width: 30,
    height: 8,
    margin: EdgeInsets.only(bottom: 40),
    child: IconButton(
      icon: Icon(Icons.close),
      color: Color.fromARGB(255, 255, 255, 255),
      iconSize: 25,
      onPressed: () {
        c = true;
      },
    ),
  );
}

//Create borders

BoxDecoration myBoxDecoration1() {
  return BoxDecoration(
    border: Border.all(color: Color.fromARGB(255, 108, 0, 102)),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: Color.fromARGB(255, 108, 0, 102),
  );
}

//-----------------------------------
// Description: One widget to every meet

Widget _row1() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration1(),
    child: Row(
      children: <Widget>[
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '12 ago\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255))),
              TextSpan(
                text: '10:00',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text("Vamos conversar sobre sua saúde psicológica?",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        ),
        _actionClose(),
      ],
    ),
  );
}

Widget _row2() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration1(),
    child: Row(
      children: <Widget>[
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '08 out\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255))),
              TextSpan(
                text: '17:00',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text("Técnicas de Mindfulness para fazer durante o trabalho",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        ),
        _actionClose(),
      ],
    ),
  );
}

//-----------------------------------
// Widgets of text

Widget _text1() {
  return Text(
    'Suas próximas reuniões',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
  );
}
