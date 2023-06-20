import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color lightMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8FBf8);
  static const Color darkAccentColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: lightPrimaryColor,
    ),
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimaryColor,
    accentColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: lightMainTextColor,
          fontSize: 30,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        color: lightMainTextColor,
        fontSize: 32,
      ),
      headline5: TextStyle(
        color: lightMainTextColor,
        fontSize: 24,
      ),
      bodyText1: TextStyle(
        color: lightMainTextColor,
        fontSize: 24,
      ),
      bodyText2: TextStyle(
        color: lightMainTextColor,
        fontSize: 20,
      ),
    ),
  );
  static var darkTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: darkAccentColor,
    ),
    cardColor: darkPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimaryColor,
    accentColor: darkAccentColor,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: darkMainTextColor,
          fontSize: 30,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkAccentColor,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        color: darkMainTextColor,
        fontSize: 32,
      ),
      headline5: TextStyle(
        color: darkMainTextColor,
        fontSize: 24,
      ),
      bodyText1: TextStyle(
        color: darkMainTextColor,
        fontSize: 24,
      ),
      bodyText2: TextStyle(
        color: darkMainTextColor,
        fontSize: 20,
      ),
    ),
  );

  static ThemeMode themeMode = ThemeMode.dark;
}
