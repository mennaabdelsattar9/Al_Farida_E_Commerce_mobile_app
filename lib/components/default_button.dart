import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
          primary: Colors.pink[50],
          backgroundColor: Colors.pink[900],
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: press,
          child: Text(text),
    ),
    );
  }
}
