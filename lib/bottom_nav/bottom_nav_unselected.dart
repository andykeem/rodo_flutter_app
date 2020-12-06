import 'package:flutter/material.dart';

import '../ui/home_screen.dart';
import 'bottom_nav_item.dart';

class BottomNavUnselected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavItem(
            assetName: 'images/ic_home.png',
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.ROUTE_NAME);
            },
          ),
          BottomNavItem(
            assetName: 'images/ic_chat.png',
            onPressed: () {
              print('chat item pressed');
            },
          ),
          BottomNavItem(
            assetName: 'images/ic_fav.png',
            onPressed: () {
              print('favorite item pressed');
            },
          ),
          BottomNavItem(
            assetName: 'images/ic_order.png',
            onPressed: () {
              print('order item pressed');
            },
          ),
          BottomNavItem(
            assetName: 'images/ic_setting.png',
            onPressed: () {
              print('setting item pressed');
            },
          ),
        ],
      ),
    );
  }
}
