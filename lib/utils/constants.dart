import 'package:flutter/material.dart';

import 'app_styles.dart';

class AppColors {
  static const Color lightGreen = Color(0x1A0AC690);
  static const Color lightgrey = Color(0xff8D8C8C);
  static const Color darkgrey = Color(0xff979797);
  static const Color white = Color(0xFFFFFFFF);
  static const Color deepGreen = Color(0xFF0AC690);
  static const Color deepred = Color(0xFFE82727);
  static const Color black = Color(0xFF1A1A1A);
  static const Color deepWhite = Color(0xFFf9f9f9);
  static const Color grey = Color(0x1A1A1A1A);
}

class Shadow {
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      blurRadius: 8,
      color: Color.fromRGBO(0, 0, 0, 0.1),
      offset: Offset(0, 0),
      spreadRadius: 0,
    ),
  ];
}

class CardChild {
  static cardChild2(
      {double? left,
      double? right,
      Color? header,
      Color? body,
      required String? title,
      required String? price}) {
    return Padding(
      padding: EdgeInsets.only(left: left!, top: 12, bottom: 12, right: right!),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: AppTextStyles.header1.copyWith(
              color: header ?? AppColors.lightgrey,
            ),
          ),
          Text(
            price!,
            style: AppTextStyles.child1
                .copyWith(fontSize: 22, color: body ?? AppColors.black),
          ),
        ],
      ),
    );
  }

  static cardChild({required String? title, required String? price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!, style: AppTextStyles.child1.copyWith(fontSize: 12)),
        Text(
          price!,
          style: AppTextStyles.bodyText
              .copyWith(color: AppColors.black, fontSize: 15),
        ),
      ],
    );
  }
}

class Widgets {
  static AppBar customAppBar(BuildContext context, {required String? title}) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.deepWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      title: Text(
        title!,
        style: AppTextStyles.hearderBold,
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 15.0, 0, 15.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 14,
            ),
          ),
        ),
      ),
    );
  }

  static Column address({String? user, String? address, Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.my_location_sharp,
              color: color ?? AppColors.black,
              size: 15,
            ),
            const SizedBox(width: 10),
            Text(
              user!,
              style: AppTextStyles.child1.copyWith(
                fontSize: 12,
                color: AppColors.lightgrey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          address!,
          style: AppTextStyles.bodyText,
        ),
      ],
    );
  }
}
