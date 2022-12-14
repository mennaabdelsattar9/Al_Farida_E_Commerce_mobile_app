import 'package:flutter/material.dart';

//import '../../../constants.dart';
import '../../../size_config.dart';






class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("Farida", style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: Colors.pink[900],
          fontWeight: FontWeight.bold,
        ),
        ),
        Text(
         // TextStyle(fontSize: 18, color: Colors.pink[800]),
          text, 
          textAlign: TextAlign.center,
          ),
        Spacer( flex: 2),
        Image.asset(
          image,
        height: getProportionateScreenHeight(350),
        width: getProportionateScreenWidth(300),
        ),
      ],
    );
  }
}