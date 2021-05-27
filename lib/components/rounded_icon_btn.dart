import 'package:flutter/material.dart';

import '../size_config.dart';

// ignore: must_be_immutable
class RoundedIconBtn extends StatelessWidget {
  RoundedIconBtn({
    Key key,
    @required this.icon,
    @required this.press,
    this.showShadow = false,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCancelCallback press;
  final bool showShadow;

  ButtonStyle flatButton = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    primary: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 10,
              color: Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: flatButton,
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
