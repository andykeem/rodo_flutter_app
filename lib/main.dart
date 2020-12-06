import 'package:flutter/material.dart';

import 'ui/home_screen.dart';
import 'ui/vehicle_type_screen.dart';

main() => runApp(RodoApp());

class RodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.ROUTE_NAME,
      routes: {
        HomeScreen.ROUTE_NAME: (context) => HomeScreen(),
        VehicleTypeScreen.ROUTE_NAME: (context) => VehicleTypeScreen(),
      },
    );
  }
}
