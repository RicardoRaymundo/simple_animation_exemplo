import 'package:flutter/material.dart';
import 'package:simple_animation_exemplo/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Esse widget é a raiz desta aplicacao
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // O conteudo de 'home' esta no widget HomePage()
      // Widget criado separadamente e importado para ca
      home: HomePage(),
    );
  }
}