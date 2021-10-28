import 'package:flutter/material.dart';
import 'package:trip_app/utils/constants.dart';

Row progressRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      progressLine(1),
      progressLine(2),
      progressLine(3),
      progressLine(4),
      progressLine(5),
      progressLine(6),
      progressLine(7),
      progressLine(8),
      progressLine(9),
      progressLine(10),
      progressLine(1),
      progressLine(2),
      progressLine(3),
      progressLine(4),
      progressLine(5),
      progressLine(6),
      progressLine(7),
      progressLine(8),
      progressLine(9),
      progressLine(10),
    ],
  );
}

Widget progressLine(int index) {
  return Container(
    height: index.isEven ? 12 : 17,
    width: 0.5,
    color: AppColors.lightgrey,
  );
}
