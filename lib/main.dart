

import 'package:flutter/material.dart';

import 'main page/screens/main_page.dart';
import 'splash/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        MainPage.routeName: (context) => const MainPage(),
      },
    );
  }
}
