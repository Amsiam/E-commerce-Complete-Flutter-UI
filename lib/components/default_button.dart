import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  ButtonStyle flatButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    primary: kPrimaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: flatButton,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
