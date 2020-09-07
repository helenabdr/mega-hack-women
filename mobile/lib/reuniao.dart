import 'package:flutter/material.dart';
import 'reuniao_disponivel.dart';
import 'reuniao_inscrita.dart';
import 'menu.dart';

class Reuniao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Menu()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 108, 0, 102),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: ReuniaoIscrita(),
          ),
          Divider(
            height: 550,
            color: Colors.black87,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ReuniaoDisponivel(),
          ),
        ],
      ),
    );
  }
}
