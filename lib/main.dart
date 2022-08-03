import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trusty/screens/details.dart';
import 'package:trusty/screens/home.dart';
import 'package:trusty/screens/splash_screen.dart';
import 'package:trusty/screens/test_result.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: const Color(0xFFEA5959),
    primaryColorDark: const Color(0xFF330000),
    scaffoldBackgroundColor: const Color(0xFFFFE5E6),
    appBarTheme: const AppBarTheme(
      color: Color(0xFFF8A0A0),
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 52.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: TextStyle(
          fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline3: TextStyle(
          fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline4: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline5: TextStyle(
          fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.bold),
      headline6: TextStyle(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(fontSize: 14.0, color: Colors.black),
      bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
    ).apply(fontFamily: 'Poppins'),
  );
}

void main() async {
  runApp(MaterialApp(
    theme: _appTheme,
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash_screen',
    routes: {
      'splash_screen': (context) => const SplashScreen(),
      'home': (context) => const Home(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == 'details') {
        var data = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => Details(index: data));
      } else if (settings.name == 'test_result') {
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => TestResult(type: data));
      }
      return null;
    },
  ));
}
