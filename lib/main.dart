import 'package:ecommerce_me/routes.dart';
import 'package:ecommerce_me/screens/splash/splash_screen.dart';
import 'package:ecommerce_me/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
     // home: SplashScreen(),
     initialRoute: SplashScreen.routeName,
     routes: routes,
    );
  }
}
