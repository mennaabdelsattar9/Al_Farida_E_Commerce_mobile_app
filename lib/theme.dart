import 'package:flutter/material.dart';
//import 'constants.dart';
ThemeData theme(){
  return ThemeData(
        scaffoldBackgroundColor: Colors.pink[50],
        fontFamily: "Muli",
        appBarTheme: appBarTheme(),
        textTheme: textTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: Colors.pink[900]),
              gapPadding: 10,
            );
  return InputDecorationTheme(

          //floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 20,
            ),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
          );
}

TextTheme textTheme() {
  return TextTheme(
        bodyText1: TextStyle(color: Colors.pink[900]),
        bodyText2: TextStyle(color: Colors.pink[900]),
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        color: Colors.pink[900],
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.pink[50]),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.pink[50], fontSize: 18),
        ),
      );
}