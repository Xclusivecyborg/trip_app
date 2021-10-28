import 'package:flutter/material.dart';
import 'package:trip_app/utils/constants.dart';

class WideButton extends StatelessWidget {
  final Function()? ontap;
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  const WideButton(
      {Key? key, this.height, this.width, this.color, this.child, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height ?? 55,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColors.white,
          boxShadow: Shadow.boxShadow,
          borderRadius: BorderRadius.circular(8),
        ),
        child: child ?? Container(),
      ),
    );
  }
}
