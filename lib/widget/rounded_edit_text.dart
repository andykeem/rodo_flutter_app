import 'package:flutter/material.dart';

class RoundedEditText extends StatelessWidget {
  final String hintText;

  RoundedEditText(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.0,
      child: TextField(
        autofocus: false,
        style: TextStyle(
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: this.hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
