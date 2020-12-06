import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rodo_flutter_app/util/constants.dart';

import '../bottom_nav/bottom_nav_unselected.dart';
import '../model/vehicle_type.dart';
import '../util/data.dart';
import '../widget/custom_app_bar.dart';
import '../widget/vehicle_type_item.dart';

class VehicleTypeScreen extends StatefulWidget {
  static const String ROUTE_NAME = '/vehicle-type';

  @override
  State<StatefulWidget> createState() {
    return _VehicleTypeScreenState();
  }
}

class _VehicleTypeScreenState extends State<VehicleTypeScreen> {
  SystemUiOverlayStyle _currentStyle;
  List<VehicleType> vehicleTypeList;
  double _appBarHeight;

  _VehicleTypeScreenState() {
    vehicleTypeList = Data.getVehicleTypeList();

    AppBar appBar = AppBar();
    _appBarHeight = appBar.preferredSize.height;
  }

  _updateUiStyle() {
    setState(() {
      _currentStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateUiStyle();
    return AnnotatedRegion(
      value: _currentStyle,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CustomAppBar(_appBarHeight),
              Flexible(
                child: Container(
                  color: kColorDarkGreen,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20.0,
                    ),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.9,
                      // shrinkWrap: true,
                      children: vehicleTypeList.map((item) {
                        return VehicleTypeItem(item);
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavUnselected(),
      ),
    );
  }
}
