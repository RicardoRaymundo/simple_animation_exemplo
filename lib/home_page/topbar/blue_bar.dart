import 'package:flutter/material.dart';

import 'package:simple_animations/simple_animations.dart';

class BlueBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Nosso container da topBar é filho deste widget, um controlador de animacao
    return ControlledAnimation(
      //Quando tempo ate o fim da animacao
      duration: Duration(milliseconds: 1000),
      //Controla a movimentacao da animacao
      tween: Tween<double>(begin: 0, end: 150),
      curve: Curves.easeIn,
      builder: (context, animation) {
        return Container(
          height: animation,
          width: double.infinity,
          color: Colors.blue,
        );
      },
    );
  }
}
