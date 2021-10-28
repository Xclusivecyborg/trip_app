import 'package:flutter/material.dart';
import 'package:trip_app/utils/constants.dart';
import 'package:trip_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 2,
          backgroundColor: AppColors.deepWhite,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
