
import 'package:flutter/material.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

import '../../main page/screens/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF769e84),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: DropShadowImage(
                image: const Image(image: AssetImage('assets/images/i1.png')),
                offset: const Offset(10, 10),
                // blurRadius: 10,
                scale: 1.05,
              ),
            ),
            const SizedBox(
              height: 300,
              width: 300,
              child: Image(image: AssetImage('assets/images/i3.png')),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 100, 148, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, MainPage.routeName);
                },
                child: const Icon(Icons.navigate_next_rounded))
          ],
        ),
      ),
    );
  }
}
