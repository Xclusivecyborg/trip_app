import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/utils/constants.dart';
import 'package:trip_app/views/begin_trip/begin_trip.dart';
import 'package:trip_app/widgets/button.dart';
import 'package:trip_app/widgets/progress_line.dart';
import 'package:trip_app/widgets/wide_button.dart';

class IncomingOrder extends StatelessWidget {
  const IncomingOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets.customAppBar(context, title: 'Incoming order'),
      body: Stack(
        children: [
          Positioned(
            top: 5,
            left: 92,
            child: SizedBox(
              width: 80,
              height: 50,
              child: Image.asset(
                'assets/eta.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 106.0, top: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 180,
                      height: 150,
                      child: Image.asset(
                        'assets/root.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      right: 62,
                      top: 65,
                      child: Container(
                        height: 1.5,
                        width: 40,
                        color: AppColors.lightgrey,
                      ),
                    )
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
                  left: 10, right: 10, bottom: 10, top: 10),
              height: MediaQuery.of(context).size.height * 0.53,
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
                        color: AppColors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Widgets.address(
                                color: AppColors.deepGreen,
                                user: "Sender's address",
                                address:
                                    '7 Prince Ibrahim Odofin Street Idado \nEstate Igbo-Efon',
                              ),
                              const SizedBox(height: 7),
                              Widgets.address(
                                user: "Receiver's addresses",
                                address:
                                    '7 Prince Ibrahim\nEstate Igbo-Efon\n7 Prince Ibrahim\nOdofin Street Idado',
                              ),
                              const SizedBox(height: 10),
                              WideButton(
                                color: AppColors.deepGreen,
                                height: 77,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CardChild.cardChild2(
                                        header: AppColors.white,
                                        body: AppColors.white,
                                        left: 10.0,
                                        right: 0,
                                        title: 'Time',
                                        price: '20 secs'),
                                    Container(
                                      height: 60,
                                      width: 0.5,
                                      color: AppColors.white,
                                    ),
                                    CardChild.cardChild2(
                                        header: AppColors.white,
                                        body: AppColors.white,
                                        left: 0,
                                        right: 10.0,
                                        title: 'Distance',
                                        price: '2.8 km'),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              progressRow(),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  const LinearProgressIndicator(
                                    value: 0.9,
                                    color: AppColors.deepGreen,
                                    backgroundColor: AppColors.deepWhite,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '0 s',
                                        style: AppTextStyles.child1.copyWith(
                                          fontSize: 12,
                                          color: AppColors.lightgrey,
                                        ),
                                      ),
                                      Text(
                                        '20 s',
                                        style: AppTextStyles.child1.copyWith(
                                          fontSize: 12,
                                          color: AppColors.lightgrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
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
                                        'Reject',
                                        style: AppTextStyles.child1.copyWith(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  WideButton(
                                    ontap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const BeginTrip()));
                                    },
                                    color: AppColors.black,
                                    height: 45,
                                    width: 150,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Accept trip',
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
                            top: 2,
                            right: 7,
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
