import 'package:flutter/material.dart';

import 'package:simple_animations/simple_animations.dart';

//A classe começa com 'My' pois já existe no Flutter o widget CircleAvatar
class MyCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variavel que guarda o tamanho da tela
    final size = MediaQuery.of(context).size;
    return ControlledAnimation(
      duration: Duration(milliseconds: 600),
      //Quando tempo para comecar a animacao
      delay: Duration(milliseconds: (900 * 2).round()),
      //Estilo de animacao
      curve: Curves.elasticOut,
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, scaleValue) {
        return Positioned(
          //configurando a posicao do widget
          top: 100,
          left: (size.width / 2) - 50,
          child: Transform.scale(
            scale: scaleValue,
            alignment: Alignment.center,
            child: blueCircle(),
          ),
        );
      },
    );
  }
}

Widget blueCircle() {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      //Um valor alto de raio da borda resulta em um circulo
      // mas somente se tiver altura e largura iguais
      borderRadius: BorderRadius.circular(100),
      color: Colors.blue.shade700,
    ),
  );
}
