import 'package:ecommerce_me/components/default_button.dart';
import 'package:ecommerce_me/screens/home/home_screen.dart';
import 'package:ecommerce_me/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //  SizedBox(height: SizeConfig.screenHeight * 0.03),
        Image.asset("assets/images/success3.png",
        height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
          fontSize: getProportionateScreenWidth(30),
          fontWeight: FontWeight.bold,
          color: Colors.pink[900],
        ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Go to home",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}