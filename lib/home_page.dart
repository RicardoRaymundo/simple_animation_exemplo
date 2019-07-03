import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

//Neste arquivo cada widget de conteudo da pagina tem um controlador de
// animacao como parente direto
//Tendo isso em vista, os controladores e os conteudos
// sao definidos e configurados em blocos de codigo separados


class HomePage extends StatelessWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // O corpo é só uma topBar e o com o conteudo da home page basicos
      // ambos são animado logo apos a inicializacao do app
      body: Column(
        children: <Widget>[
          topBar(),
          HomePageContent(),
        ],
      ),
    );
  }

  SizedBox topBar() {
    return SizedBox(
      height: 150,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          //Criados mais dois widgets que compoem a topBar
          BlueBar(),
          CircleAvatar(),
        ],
      ),
    );
  }
}

class BlueBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Nosso container da topBar é filho deste widget, um controlador de animacao
    return ControlledAnimation(
      //Quando tempo ate o fim da animacao
      duration: Duration(milliseconds: 2000),
      //Controla a movimentacao da animacao
      tween: Tween<double>(begin: 0, end: 150),
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

class CircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variavel que guarda o tamanho da tela
    final size = MediaQuery.of(context).size;
    return ControlledAnimation(
      duration: Duration(milliseconds: 600),
      //Quando tempo para comecar a animacao
      delay: Duration(milliseconds: (1500 * 2).round()),
      //Estilo de animacao
      curve: Curves.elasticOut,
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, scaleValue) {
        return Positioned(
          //configurando a posicao do widget
          top: 100,
          left: size.width / 2 - 50,
          child: Transform.scale(
            scale: scaleValue,
            alignment: Alignment.center,
            child: blueCircle(),
          ),
        );
      },
    );
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
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //O corteuno principal da HomePage
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          //Widgets criados separados
          largeWhitespace(),
          titlePlaceholder(),
          smallWhitespace(),
          contentPlaceHolder(),
        ],
      ),
    );
  }

  Widget titlePlaceholder() {
    return ControlledAnimation(
      duration: Duration(milliseconds: 600),
      delay: Duration(milliseconds: (300 * 2.5).round()),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, opacityValue) {
        return Opacity(
          opacity: opacityValue,
          child: placeholderBox(28, 150, Alignment.centerLeft),
        );
      },
    );
  }

  Widget contentPlaceHolder() {
    return ControlledAnimation(
      duration: Duration(milliseconds: 600),
      delay: Duration(milliseconds: (300 * 3).round()),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, opacityValue) {
        return Opacity(
          opacity: opacityValue,
          child: placeholderBox(250, double.infinity, Alignment.centerLeft),
        );
      },
    );
  }

  Widget largeWhitespace() => SizedBox(height: 60);
  //Espacadores
  Widget smallWhitespace() => SizedBox(height: 8);

  Widget placeholderBox(double height, double width, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}