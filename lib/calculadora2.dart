import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(Calculadora2());

class Calculadora2 extends StatefulWidget {
  Calculadora2({Key key}) : super(key: key);

  @override
  _Calculadora2State createState() => _Calculadora2State();
}

class _Calculadora2State extends State<Calculadora2> {
  String resultado = 'A soma dos valores é: ';

  @override
  Widget build(BuildContext context) {
    /* VAMOS DAR ESTILO A ESSEES TEXTFIELDS
    TextField n1 = TextField(
      keyboardType: TextInputType.number,
    );
    */

    TextField n1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange[100]),
      decoration: InputDecoration(
          //labeltext é recomendação do google, pois exibe um label como espécie de tooltip.
          labelText: 'Número 1:',
          labelStyle: TextStyle(color: Colors.deepOrange),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 2.0))),
    );

    TextField n2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange[100]),
      decoration: InputDecoration(
          labelText: 'Número 2:',
          labelStyle: TextStyle(color: Colors.deepOrange),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 2.0))),
    );

    //será criado um Padding, com nome de clearfix, para separar os campos n1 e n2. Depois, adiciona-lo na "col", após n1 e depois, após n2.
    Padding clearfix = Padding(padding: EdgeInsets.all(5.0));

    RaisedButton btn1 = RaisedButton(
      onPressed: () {},
      child: Text('Somar'),
      color: Colors.deepOrange,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0)), //bordas arredondadas
    );

    Text resultado =
        Text(this.resultado); //this significa que é um membro da classe.

    Column col = Column(
      //No exemplo do professor não existe a palavra 'new'
      children: <Widget>[
        n1,
        clearfix,
        n2,
        clearfix,
        //btn1, //poderíamos estender o botão na criação dele, lá em cima, mas vamos adicionar um Widget sizedbox e extender por lá.  no exemplo do professor, está sem a vírgula, este último elemento.
        SizedBox(
          child: btn1,
          width: double.infinity, //pega toda a extensão
        ),
        clearfix,
        resultado,
      ],
    );

    return MaterialApp(
      title: 'Calculadora Simples',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: col,
        ),
      ),
    );
  }
}
