import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _phrases = [
    "Seja feliz. A base de remédios",
    "Potencial. Nem todo mundo será Astronauta quando crescer!",
    "Esforço. Plágio economiza tempo!",
    "Vocês que pensam que sabem tudo, se incomodem conosco que sabemos!",
    "A inteligência artificial não é páreo para a estupidez natural!",
    "Faça um bom uso do objeto cilíndrico que você deve ter, sob a sua mesa!",
    "Saboreie os momentos sob os holofotes. Eles não irão durar muito!",
    "Se você não conseguir de primeira, remova todas as evidências de que você ao menos tentou!",
    "A Inabilidade de um Time, tem um impacto muito maior que a soma das inabilidades individuais de seus componentes!",
    "Fujões nunca vencem. Vencedores nunca fogem. Mas aqueles que nunca vencem e continuam sem fugir são idiotas!",
    "Quando o que está por vir é duro, o durão pede um café!",
    "Finalmente ela olhou pra você. E te achou feio.",
    "Aquela festa parece legal... Ninguém te convidou.",
    "Uma mulher te cantou...era um travesti.",
    "Sexta feira! O melhor dia para invejar pessoas felizes...",
    "Se você vai se atrasar, então se atrase de verdade. Não dois minutinhos. Atrase-se uma hora e saboreie seu café da manhã!",
    "Sonhos são como arco-íris. Somente os bobos correm atrás deles!",
    "Uma jornada de milhares de quilômetros, as vezes termina mal. Muito mal!",
    "“Realizando o impossível“ significa apenas a demanda que seu chefe irá adicionar as suas atividades regulares.",
    "Sua cara metade virou gay!",
    "Faça um elogio. Não receba outro em troca.",
    "Ela disse que te ama. “Desculpe, janela errada”.",
    "Você venceu seus inimigos. Playstation!",
    "Acaricie sua mão. Finja que é de uma garota!",
    "Seu fim de semana. Também conhecido como “fail de semana”!",
  ];

  var _phrase = "Clique abaixo para gerar uma frase!";

  void _getPhrase(){
    var _number  = Random().nextInt(_phrases.length);
    setState(() {
      _phrase = _phrases[_number];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pig Coach'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/pig.png',height: 250,width: 250),
            Text(
              _phrase, 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
                
              ),
            ),
            RaisedButton(
              child: Text(
                'Gerar',
                style: TextStyle(
                  fontSize: 25, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: (){
                _getPhrase();
              },
            )
          ],
        ),
      ),
    );
  }
}