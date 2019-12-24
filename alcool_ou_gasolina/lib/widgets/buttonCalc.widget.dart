import 'package:alcool_ou_gasolina/model/util.model.dart';
import 'package:flutter/material.dart';

class BotaoCalc extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(60),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: FlatButton(
        onPressed: (){},
        child: Text("Calcular",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
            fontFamily: Util().familia_da_fonte,
          ),
        ),

      ),
    );
  }
}