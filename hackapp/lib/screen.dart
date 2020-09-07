import 'package:flutter/material.dart';
import 'package:hackapp/content_bottom.dart';
import 'package:hackapp/content_top.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: ContentTop(),
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
            child: ContentBottom(),
          ),
        ],
      ),
    );
  }
}
