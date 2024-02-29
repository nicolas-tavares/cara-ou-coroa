import 'package:flutter/material.dart';
import 'package:flutter_app/Resultado.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void _exibirResultado(){

    var itens = ["cara","coroa"];
    var numero = Random().nextInt(itens.length); //Gerar numero de itens aleatorio do tamanho da lista
    var resultado = itens[numero];  //resultado vai pegar um numero gerado aleatoriamente da lista "itens"

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Resultado(valor: resultado,)
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
