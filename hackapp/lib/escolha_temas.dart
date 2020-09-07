import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'menu.dart';

// Classe para alterar a cor dos botões do Grid
class MyButtonModal {
  final String buttonText;
  bool changeButtonColor;

  MyButtonModal({this.buttonText, this.changeButtonColor = false});
}

class EscolhaTemas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Juntas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Segoe UI',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(body: Center(child: GridViewWidget())));
  }
}

class GridViewWidget extends StatefulWidget {
  GridViewState createState() => GridViewState();
}

class GridViewState extends State {
  bool changeColor = false;

  List<MyButtonModal> _a = [
    MyButtonModal(buttonText: 'Liderança'),
    MyButtonModal(buttonText: 'COVID-19'),
    MyButtonModal(buttonText: 'Comunicação Digital'),
    MyButtonModal(buttonText: 'Financeiro'),
    MyButtonModal(buttonText: 'Casa x trabalho'),
    MyButtonModal(buttonText: 'Casa e Família'),
    MyButtonModal(buttonText: 'Gestão do tempo'),
    MyButtonModal(buttonText: 'Contato com fornecedores'),
    MyButtonModal(buttonText: 'Vendas online'),
    MyButtonModal(buttonText: 'Problemas emocionais'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        child: new Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 108, 0, 102),
              ),
            ),
            Text('Voltar'),
            SizedBox(width: 90),
            Text('Já tem cadastro?'),
            ButtonTheme(
              minWidth: 0.01,
              height: 0.01,
              child: FlatButton(
                  color: Colors.transparent,
                  splashColor: Colors.black26,
                  child: Text('Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      )),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Dados Pessoais'),
                  Text('Profissional'),
                  Text('Interesses'),
                ]),
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: new AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 108, 0, 102)),
            value: 0.75,
          ),
          new Container(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Center(
                  child: Text('Quais temas te interessam?',
                      style: TextStyle(fontSize: 20)))),
          new Container(
            height: 10,
          ),
          ButtonTheme(
              child: FlatButton(
                  color: Colors.transparent,
                  splashColor: Colors.black26,
                  child: Text(
                    'Você receberá conteúdo sobre esses temas durante a navegação. Fique tranquila, porque você poderá modificar essas configurações a qualquer momento.',
                    textAlign: TextAlign.justify,
                  ),
                  onPressed: () {})),
          new Container(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: GridView.count(
                  shrinkWrap: true,
                  primary: true,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 1,
                  childAspectRatio: (2 / 1),
                  crossAxisCount: 2,
                  children: _a.map((MyButtonModal f) {
                    return InkWell(
                      child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          decoration: BoxDecoration(
                              color: f.changeButtonColor
                                  ? Color.fromARGB(255, 108, 0, 102)
                                  : Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 108, 0, 102))),
                          child: Center(
                            child: Text(f.buttonText,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: f.changeButtonColor
                                        ? Colors.white
                                        : Color.fromARGB(255, 108, 0, 102)),
                                textAlign: TextAlign.center),
                          )),
                      onTap: () {
                        setState(() {
                          f.changeButtonColor = !f.changeButtonColor;
                        });
                      },
                    );
                  }).toList())),
          ButtonTheme(
            minWidth: 100,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(
                      color: Color.fromARGB(255, 108, 0, 102), width: 3)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
              color: Colors.white,
              textColor: Color.fromARGB(255, 108, 0, 102),
              child: Text('Criar conta',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
