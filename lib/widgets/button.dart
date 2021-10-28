import 'package:flutter/material.dart';
import 'package:trip_app/utils/constants.dart';

class NewButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPress;
  final Color? color;
  final double? height;
  final double? width;
  const NewButton(
      {Key? key,
      @required this.icon,
      this.onPress,
      @required this.color,
      @required this.height,
      @required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Icon(
          icon,
          size: 30,
          color: AppColors.white,
        
        ),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, shape: BoxShape.circle, boxShadow: Shadow.boxShadow),
      ),
    );
  }
}
