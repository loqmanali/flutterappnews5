import 'package:flutter/material.dart';
import 'package:flutterappnews5/screens/home_screen.dart';
import 'package:flutterappnews5/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/onboarding_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    // go to home screen
    _screen = OnBoardingScreen();
  } else {
    _screen = HomeScreen();
  }
  runApp(MyApp(_screen));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Widget _screen;
  MyApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      theme: AppTheme.appTheme,
      home: this._screen,
    );
  }
}
