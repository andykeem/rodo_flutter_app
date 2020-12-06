import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../util/constants.dart';

class CustomAppBar extends StatelessWidget {
  final double height;

  CustomAppBar(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Center(
                  child: IconButton(
                    icon: ImageIcon(
                      AssetImage('images/ic_arrow_back.png'),
                      color: kColorDarkGreen,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 58.0),
                  child: Text(
                    kVehicleTypeAppBarTitle,
                    style: TextStyle(
                      color: kColorDarkGreen,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
