import 'package:flutter/material.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/utils/constants.dart';

class TinyButton extends StatelessWidget {
  final Function()? onTap;
  final Color? boxColor;
  final Color? textColor;
  final int? turns;
  final IconData? icon;
  final String? text;
  final Color? iconColor;
  const TinyButton({
    Key? key,
    this.boxColor,
    this.textColor,
    this.turns,
    this.icon,
    this.text,
    this.onTap,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 34,
        width: 125,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: AppTextStyles.child1
                  .copyWith(fontSize: 12, color: textColor ?? AppColors.black),
            ),
            RotatedBox(
              quarterTurns: turns ?? 0,
              child: Icon(
                icon,
                size: 20,
                color: iconColor ?? AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}