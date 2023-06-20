import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/sura_details/sura_details.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(0xFFB7935F),
        ),
        cardColor: Colors.white,
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: Color(0xFFB7935F),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color(0xFF242424),
              fontSize: 30,
            )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen(),
      },
    );
  }
}