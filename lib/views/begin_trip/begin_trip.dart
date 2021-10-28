import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/utils/constants.dart';
import 'package:trip_app/widgets/button.dart';
import 'package:trip_app/widgets/wide_button.dart';

class BeginTrip extends StatelessWidget {
  const BeginTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets.customAppBar(context, title: 'Begin trip'),
      body: Stack(
        children: [
          Positioned(
            right: 70,
            top: 220,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 50,
                      child: Image.asset(
                        'assets/route.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 20),
              height: MediaQuery.of(context).size.height * 0.38,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(27),
                  topLeft: Radius.circular(27),
                ),
                boxShadow: Shadow.boxShadow,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 1.5,
                        width: 40,
                        color: AppColors.darkgrey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              WideButton(
                                color: AppColors.white,
                                height: 145,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '04 m : 18s',
                                      style: AppTextStyles.hearderBold
                                          .copyWith(color: AppColors.deepGreen),
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      'Omobolaji',
                                      style: AppTextStyles.child1,
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      '7 Prince Ibrahim Odofin Street Idado'
                                      '\nEstate Igbo-Efon',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.bodyText.copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 27),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  WideButton(
                                    ontap: Navigator.of(context).pop,
                                    color: AppColors.deepred,
                                    height: 45,
                                    width: 150,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Cancel trip',
                                        style: AppTextStyles.child1.copyWith(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  WideButton(
                                    color: AppColors.black,
                                    height: 45,
                                    width: 150,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Start trip',
                                        style: AppTextStyles.child1
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Positioned(
                            right: 20,
                            top: 15,
                            child: NewButton(
                              icon: CupertinoIcons.phone,
                              color: AppColors.deepGreen,
                              height: 45,
                              width: 45,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
