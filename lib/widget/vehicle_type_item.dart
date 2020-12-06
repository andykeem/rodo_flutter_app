import 'package:flutter/material.dart';

import '../model/vehicle_type.dart';

class VehicleTypeItem extends StatelessWidget {
  final VehicleType item;

  VehicleTypeItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 105.0,
          height: 50.4,
          child: Image(
            image: AssetImage(item.image),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          item.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
