import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var controlador = new MoneyMaskedTextController();

  Input({@required this.label,@required this.controlador});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 100,
                child: Text(label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
                
              ),
              Expanded(
                child: TextFormField(
                  controller: controlador,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: "Big Shoulders Display",
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          );
  }
}