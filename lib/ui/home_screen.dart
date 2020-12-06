import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bottom_nav/bottom_nav.dart';
import '../ui/vehicle_type_screen.dart';
import '../util/constants.dart';
import '../widget/rounded_button.dart';
import '../widget/rounded_edit_text.dart';

class HomeScreen extends StatefulWidget {
  static const ROUTE_NAME = '/';

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  SystemUiOverlayStyle _currentStyle;

  _updateUiStyle() {
    setState(() {
      _currentStyle = SystemUiOverlayStyle(
        statusBarColor: kColorDarkGreen,
        statusBarIconBrightness: Brightness.light,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateUiStyle();
    return AnnotatedRegion(
      value: _currentStyle,
      child: Scaffold(
        backgroundColor: kColorDarkGreen,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 190.0,
                child: Image(
                  image: AssetImage(kLogoAssetName),
                ),
              ),
              Positioned(
                top: 270.0,
                child: RoundedEditText(kSearchHintText),
              ),
              Positioned(
                top: 390.0,
                child: RoundedButton(
                  text: kSearchByTypeBtnLabel,
                  onPressed: () {
                    print('search by vehicle type clicked..');
                    Navigator.pushNamed(context, VehicleTypeScreen.ROUTE_NAME);
                  },
                ),
              ),
              Positioned(
                top: 462.0,
                child: RoundedButton(
                  text: kDailyDealsBtnLabel,
                  onPressed: () {
                    print('see deals of the day clicked..');
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(selectedIndex: 0),
      ),
    );
  }
}
