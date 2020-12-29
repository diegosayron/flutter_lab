import 'package:flutter/material.dart';

void main() => runApp(SimpleCalc());

class SimpleCalc extends StatefulWidget {
  SimpleCalc({Key key}) : super(key: key);

  @override
  _SimpleCalcState createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {
  @override
  Widget build(BuildContext context) {
    //2 - depois de criados os métodos e renomeadas as variáveis criadas pelo code snippet, criar os campos acima do return, mas dentro do widget:

    TextField n1 = TextField(
      keyboardType: TextInputType.number,
    );

    TextField n2 = TextField(
      keyboardType: TextInputType.number,
    );

    RaisedButton btn = RaisedButton(
      onPressed: () {},
      child: Text('Somar'),
    );

    Column cols = Column(
      children: <Widget>[
        n1,
        n2,
        btn
      ], //AQUI É O LUGAR ONDE INSERIMOS OS ELEMENTOS (WIDGETS)
    );

    //return null; //null, por enquanto
    return MaterialApp(
      title: 'Simple Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),

        //ABAIXO DO APP BAR, O BODY!
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: cols,
        ),
      ),
    );
  }
}
