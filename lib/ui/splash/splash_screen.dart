import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/my_theme_data.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          MyThemeData.themeMode == ThemeMode.light
              ? 'assets/images/splash.png'
              : 'assets/images/splashdark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
