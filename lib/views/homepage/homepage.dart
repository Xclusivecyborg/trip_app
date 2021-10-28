import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/utils/constants.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/views/incoming_order/incoming_order.dart';
import 'package:trip_app/widgets/tiny_button.dart';
import 'package:trip_app/widgets/wide_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool? selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.white,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        title: Image.asset('assets/triplogo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 14, 8),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const IncomingOrder()));
              },
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.black,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 25,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: AppTextStyles.header1
                            .copyWith(color: AppColors.white),
                      ),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: AppColors.deepGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 28.0, right: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Tolu,',
                style: AppTextStyles.header2,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WideButton(
                    height: 50,
                    width: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          height: 19,
                          width: 19,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.white,
                              ),
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Set direction',
                          style: AppTextStyles.child1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  WideButton(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.38,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'online',
                          style: AppTextStyles.child1.copyWith(
                              color: selected!
                                  ? AppColors.darkgrey
                                  : AppColors.black),
                        ),
                        Container(
                          height: 25,
                          width: 45,
                          decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(35)),
                          child: Switch(
                              thumbColor:
                                  MaterialStateProperty.all(AppColors.white),
                              inactiveTrackColor: AppColors.black,
                              activeTrackColor: AppColors.lightgrey,
                              value: selected!,
                              onChanged: (val) {
                                setState(() {
                                  selected = val;
                                });
                              }),
                        ),
                        Text(
                          'offline',
                          style: AppTextStyles.child1.copyWith(
                            color: selected!
                                ? AppColors.black
                                : AppColors.darkgrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              WideButton(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 21.0, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardChild.cardChild(
                          title: 'Main Balance', price: 'N 5,000.00'),
                      CardChild.cardChild(
                          title: 'Bonus Balance', price: 'N 2,000.00'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TinyButton(
                            text: 'Transfer funds',
                            turns: 2,
                            icon: Icons.transit_enterexit,
                            boxColor: AppColors.grey,
                          ),
                          TinyButton(
                            text: 'Fund wallet',
                            icon: Icons.transit_enterexit,
                            boxColor: AppColors.lightGreen,
                            textColor: AppColors.deepGreen,
                            iconColor: AppColors.deepGreen,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              WideButton(
                height: 49,
                color: AppColors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 58.0, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash out',
                        style: AppTextStyles.child1
                            .copyWith(color: AppColors.white),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: AppColors.lightgrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              WideButton(
                height: 86,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardChild.cardChild2(
                        left: 10.0,
                        right: 0,
                        title: 'Today\'s earnings',
                        price: 'N 5,000.00'),
                    Container(
                      height: 70,
                      width: 1.5,
                      color: AppColors.grey,
                    ),
                    CardChild.cardChild2(
                        left: 0,
                        right: 10.0,
                        title: 'Today\'s bonus ',
                        price: 'N 2,050.30'),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              WideButton(
                height: 49,
                color: AppColors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View rating',
                        style: AppTextStyles.child1
                            .copyWith(color: AppColors.white),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: AppColors.white, size: 20),
                          Icon(Icons.star, color: AppColors.white, size: 20),
                          Icon(Icons.star, color: AppColors.white, size: 20),
                          Icon(Icons.star, color: AppColors.white, size: 20),
                          Icon(Icons.star, color: AppColors.white, size: 20),
                        ],
                      ),
                      Text(
                        '5.0',
                        style: AppTextStyles.header2
                            .copyWith(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
