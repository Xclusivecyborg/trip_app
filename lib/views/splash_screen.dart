import 'package:flutter/material.dart';
import 'package:trip_app/utils/app_styles.dart';
import 'package:trip_app/widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatoToIndexScreen();
  }

  void _navigatoToIndexScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const IndexScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/triplogo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                'Trip',
                style: AppTextStyles.hearderBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
