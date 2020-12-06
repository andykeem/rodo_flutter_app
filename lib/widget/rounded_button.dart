import 'package:flutter/material.dart';

import '../util/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  RoundedButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onPressed,
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 14.0,
          color: kColorLightGreen,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: kColorLightGreen,
          width: 1.0,
        ),
      ),
      padding: EdgeInsets.all(18.0),
      minWidth: 330.0,
    );
  }
}
