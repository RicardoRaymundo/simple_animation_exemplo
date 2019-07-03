import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

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
      duration: Duration(milliseconds: 1200),
      delay: Duration(milliseconds: (600 * 2.5).round()),
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
      duration: Duration(milliseconds: 1200),
      delay: Duration(milliseconds: (650 * 3).round()),
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

  //Espaçadores
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
