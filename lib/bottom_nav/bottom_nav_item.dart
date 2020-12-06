import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String assetName;
  final Function onPressed;

  BottomNavItem({@required this.assetName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ImageIcon(AssetImage(this.assetName)),
      iconSize: 35.0,
      color: Color(0xaa1a3036),
      onPressed: this.onPressed,
    );
  }
}
