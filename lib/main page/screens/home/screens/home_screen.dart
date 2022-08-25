// ignore_for_file: unnecessary_const

import 'package:car_app/common/utils/constants/app_textstyle.dart';
import 'package:car_app/main%20page/screens/home/screens/american_screen.dart';
import 'package:car_app/main%20page/screens/home/screens/french_screen.dart';
import 'package:car_app/main%20page/screens/home/screens/hot_screen.dart';
import 'package:car_app/main%20page/screens/home/screens/mixed_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8dbda1),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
                child: SizedBox(
                    child: Image(image: AssetImage('assets/images/i1.png')))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: index == 0
                              ? const Color(0xFF8e6400)
                              : const Color(0x0ff8dbda),
                        ),
                        height: 35,
                        width: 50,
                        child: Center(
                          child: Text(
                            'HOT ',
                            style: AppTextStyle.kbold,
                          ),
                        ),
                      ),
                      // Container(
                      //   height: 10,
                      //   width: 50,
                      //   color: index==0 ? Color(0xFF8e6400) :const Color(0xFF8dbda1)

                      // )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: index == 1
                              ? const Color(0xFF8e6400)
                              : const Color(0x0ff8dbda),
                        ),
                        child: Center(
                          child: Text(
                            'AMERICAN ',
                            style: AppTextStyle.kbold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: index == 2
                              ? const Color(0xFF8e6400)
                              : const Color(0x0ff8dbda),
                        ),
                        child: Center(
                          child: Text(
                            'FRENCH ',
                            style: AppTextStyle.kbold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: index == 3
                              ? const Color(0xFF8e6400)
                              : const Color(0x0ff8dbda),
                        ),
                        child: Center(
                          child: Text(
                            'MIXED ',
                            style: AppTextStyle.kbold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: IndexedStack(
              index: index,
              children: const [
                HotScreen(),
                AmericanScreen(),
                FrenchScreen(),
                MixedScreen(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
