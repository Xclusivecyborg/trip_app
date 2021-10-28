import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/utils/constants.dart';
import 'package:trip_app/views/homepage/homepage.dart';
import 'package:trip_app/views/profile_page/profile.dart';
import 'package:trip_app/views/trackpage/tracks.dart';
import 'package:trip_app/views/trips_page/trips.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  List selections = [
    const Homepage(),
    const Tracks(),
    const Trips(),
    const Profile(),
  ];
  bool homepage = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selections.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: AppTextStyles.header2,
        unselectedLabelStyle: AppTextStyles.child1
            .copyWith(fontSize: 14, color: AppColors.darkgrey),
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        iconSize: 30,
        selectedItemColor: AppColors.deepGreen,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.lightgrey,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.white,
            label: 'Home',
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: selectedIndex == 0
                    ? AppColors.lightGreen
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const ImageIcon(
                AssetImage('assets/Vector.png'),
              ),
            ),
          ),
          const BottomNavigationBarItem(
            backgroundColor: AppColors.white,
            label: 'Track',
            icon: SizedBox(
              height: 30,
              width: 30,
            ),
          ),
          const BottomNavigationBarItem(
            backgroundColor: AppColors.white,
            label: 'Trips',
            icon: SizedBox(
              height: 30,
              width: 30,
            ),
          ),
          const BottomNavigationBarItem(
            backgroundColor: AppColors.white,
            label: 'Profile',
            icon: SizedBox(
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
