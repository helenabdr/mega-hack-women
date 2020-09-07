import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste/reuniao.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.settings,
            color: Color.fromARGB(255, 108, 0, 102),
          ),
          actions: [
            IconButton(
              onPressed: () {
                //SystemNavigator.pop(),
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 108, 0, 102),
              ),
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 40,
              child: Text('O que você quer fazer?',
                  style: TextStyle(fontSize: 25)),
            ),
            Positioned(
              top: 130,
              child: Center(
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 342,
                        height: 60,
                        child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          label: Text(
                            'Conversar',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.forum,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 108, 0, 102),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 342,
                        height: 60,
                        child: RaisedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Reuniao()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          label: Text(
                            'Reuniões',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 108, 0, 102),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 342,
                        height: 60,
                        child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          label: Text(
                            'Notificações',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 108, 0, 102),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 342,
                        height: 56,
                        child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          label: Text(
                            'Mural',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.grade,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 108, 0, 102),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 1,
              right: 1,
              child: Image.asset('assets/fundo.png'),
            ),
          ],
        ));
  }
}
