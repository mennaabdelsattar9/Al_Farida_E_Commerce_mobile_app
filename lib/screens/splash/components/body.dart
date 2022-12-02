
import 'package:ecommerce_me/constants.dart';
import 'package:ecommerce_me/screens/splash/components/splash_content.dart';
import 'package:ecommerce_me/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../components/default_button.dart';
import 'package:ecommerce_me/components/default_button.dart';
import 'package:ecommerce_me/screens/splash/sign_in/sign_in_screen.dart';




class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    int currentPage = 0;
    List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Farida store, Let’s shop!",
      "image": "assets/images/092617-blogpost-1080x628.png" 
    },
    {
      "text":
          "We help people connect with the store \naround KSA Saudi Arabia ",
      "image": "assets/images/istockphoto-1253516957-1024x1024.png" 
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/istockphoto-1093593716-1024x1024.png" 
    },
  ];
  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentPage=value;
              });
              
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
            text: splashData[index]["text"],
            image: splashData[index]["image"],
          ),
          ), 
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: <Widget>[
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                     (index) => buildDot(index),
                     ),
                ),
                Spacer(flex: 3,),
                DefaultButton(
                  text: "Start",
                  press: (){
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                ),
                Spacer(),
              ],
              ),
          ),
        ),
      ],
    ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
              margin: EdgeInsets.only(right: 5),
              height: 6,
              width: currentPage == index ? 20:6,
              decoration: BoxDecoration(
                color: currentPage == index ? RenderErrorBox.backgroundColor: Colors.pink[900],
                borderRadius: BorderRadius.circular(6),
                ),
            );
  }
}




    
                


