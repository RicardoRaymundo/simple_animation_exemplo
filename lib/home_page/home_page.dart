import 'package:flutter/material.dart';

import 'package:simple_animation_exemplo/home_page/topbar/blue_bar.dart';
import 'package:simple_animation_exemplo/home_page/topbar/my_circle_avatar.dart';
import 'package:simple_animation_exemplo/home_page/home_page_content.dart';

//Neste projeto cada widget de conteudo da pagina tem um controlador de
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
      // ambos são animados logo apos a inicializacao do app
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
          MyCircleAvatar(),
        ],
      ),
    );
  }
}
