import 'package:flutter/material.dart';
import 'package:rodo_flutter_app/util/constants.dart';

import '../ui/home_screen.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;

  BottomNav({this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35.0,
      currentIndex: selectedIndex,
      items: getNavBarItems(),
      selectedItemColor: kColorDarkGreen,
      onTap: (index) {
        print('clicked: $index');
        switch (index) {
          case 0:
            Navigator.pushNamed(context, HomeScreen.ROUTE_NAME);
            break;
        }
      },
    );
  }

  List<BottomNavigationBarItem> getNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('images/ic_home.png'),
        ),
        label: '',
        activeIcon: ImageIcon(
          AssetImage('images/ic_home_on.png'),
        ),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('images/ic_chat.png'),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('images/ic_fav.png'),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('images/ic_order.png'),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('images/ic_setting.png'),
        ),
        label: '',
      ),
    ];
  }
}
