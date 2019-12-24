import 'package:alcool_ou_gasolina/model/util.model.dart';
import 'package:alcool_ou_gasolina/widgets/buttonCalc.widget.dart';
import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasolinaControler = new MoneyMaskedTextController();
  var _alcoolControler = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa utilizar o Álcool!",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: Util().familia_da_fonte,
                    color: Theme.of(context).primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
          ),
          Input(label: "Gasolina", controlador: _gasolinaControler),
          Input(
            label: "Alcool",
            controlador: _alcoolControler,
          ),
          BotaoCalc(),
        ],
      ),
    );
  }
}
