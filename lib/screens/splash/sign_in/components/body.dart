import 'package:ecommerce_me/components/no_account_text.dart';
import 'package:ecommerce_me/components/social_card.dart';
import 'package:ecommerce_me/screens/splash/sign_in/components/sign_form.dart';
import 'package:ecommerce_me/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text("Welcome", style: TextStyle(
                  color: Colors.pink[900],
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("Sign in with email and password \nor continue with Facebook or Google",
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: (){},
                        ),
                        SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        press: (){},
                        ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText(),
              ],
              ),
          ),
        ),
      ) ,
    );
  }
}







