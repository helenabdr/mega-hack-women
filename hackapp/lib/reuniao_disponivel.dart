import 'package:flutter/material.dart';

bool del = false;

class ReuniaoDisponivel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      child: Stack(
        children: <Widget>[
          _text2(),
          Align(
            alignment: Alignment.topCenter,
            child: _row3(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _row4(),
          ),
          Align(
            alignment: Alignment.center,
            child: _row5(),
          ),
        ],
      ),
    );
  }
}

// Button
Widget _actionCheck() {
  return Container(
    width: 30,
    height: 8,
    margin: EdgeInsets.only(bottom: 40),
    child: IconButton(
      icon: Icon(Icons.check),
      color: Color.fromARGB(255, 108, 0, 102),
      iconSize: 25,
      onPressed: () {},
    ),
  );
}

//Create borders
BoxDecoration myBoxDecoration2() {
  return BoxDecoration(
    border: Border.all(color: Color.fromARGB(255, 108, 0, 102)),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
}

//-----------------------------------
// Description: One widget to every meet

Widget _row3() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration2(),
    child: Row(
      children: <Widget>[
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '13 ago\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 108, 0, 102))),
              TextSpan(
                text: '09:00',
                style: TextStyle(
                  color: Color.fromARGB(255, 108, 0, 102),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text("Utilizando o WhatsApp para vender mais",
              style: TextStyle(color: Color.fromARGB(255, 108, 0, 102))),
        ),
        _actionCheck(),
      ],
    ),
  );
}

Widget _row4() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration2(),
    child: Row(
      children: <Widget>[
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '05 ago\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 108, 0, 102))),
              TextSpan(
                text: '17:00',
                style: TextStyle(
                  color: Color.fromARGB(255, 108, 0, 102),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text("Bate-papo das cabeleireiras de Bauru-SP",
              style: TextStyle(color: Color.fromARGB(255, 108, 0, 102))),
        ),
        _actionCheck(),
      ],
    ),
  );
}

Widget _row5() {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: myBoxDecoration2(),
    child: Row(
      children: <Widget>[
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: '17 out\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 108, 0, 102))),
              TextSpan(
                text: '13:00',
                style: TextStyle(
                  color: Color.fromARGB(255, 108, 0, 102),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text("Como vocês fazem a gestão do tempo casa x trabalho",
              style: TextStyle(color: Color.fromARGB(255, 108, 0, 102))),
        ),
        _actionCheck(),
      ],
    ),
  );
}

//-----------------------------------
// Widgets of text

Widget _text2() {
  return Text(
    'Veja mais reuniões',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
  );
}
