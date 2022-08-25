import 'package:car_app/common/utils/constants/app_textstyle.dart';
import 'package:car_app/main%20page/screens/cart/screens/cart_screen.dart';
import 'package:car_app/main%20page/screens/home/screens/home_screen.dart';
import 'package:car_app/main%20page/screens/invoice/screens/invoice_screen.dart';
import 'package:car_app/main%20page/screens/medal/screens/medal_screen.dart';
import 'package:car_app/main%20page/screens/more%20/screens/more_screen.dart';
import 'package:car_app/main%20page/screens/my%20profile/screens/myprofile_screen.dart';
import 'package:car_app/main%20page/screens/notification/screens/notification_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const routeName = '/MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 5;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF8dbda1),
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            child: NavigationRail(
              selectedIconTheme: const IconThemeData(
                color: Colors.black
              ),
              unselectedIconTheme: const IconThemeData(
                color: Colors.grey
              ),
              selectedLabelTextStyle: const TextStyle(
                  decoration: TextDecoration.underline, color: Colors.black),
              labelType: NavigationRailLabelType.all,
              backgroundColor: const Color(0xFFe3e3cb),
              selectedIndex: index,
              onDestinationSelected: (index) => setState(
                () =>this.index = index,
              ),
              destinations: [
                const NavigationRailDestination(
                    icon: Icon(Icons.widgets), label: Text('')),
                const NavigationRailDestination(
                    icon: SizedBox(
                        height: 50,
                        width: 50,
                        child:
                            Image(image: AssetImage('assets/images/i4.png'))),
                    label: Text('')),
                NavigationRailDestination(
                    icon: const Icon(null),
                    label: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'MY PROFILE',
                        style: AppTextStyle.kbold,
                      ),
                    )),
                NavigationRailDestination(
                    icon: const Icon(null),
                    label: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'NOTIFICATION',
                        style: AppTextStyle.kbold,
                      ),
                    )),
                NavigationRailDestination(
                    icon: const Icon(null),
                    label: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'INVOICE',
                        style: AppTextStyle.kbold,
                      ),
                    )),
                NavigationRailDestination(
                    icon: const Icon(null),
                    label: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'HOME',
                        style: AppTextStyle.kbold,
                      ),
                    )),
                const NavigationRailDestination(
                    icon: Icon(Icons.shopping_bag), label: Text(''))
              ],
            ),
          ),
        ),
        Expanded(child: buildPages())
        
      ],
    )
    
    );
  }
  Widget  buildPages() {
    switch (index) {
      case 0:
        return const MoreScreen();
      case 1:
        return const MedalScreen();
      case 2:
        return const MyProfileScreen();
      case 3:
        return const NotificationScreen();
      case 4:
        return const InvoiceScreen();
      case 5:
        return const HomeScreen();
      case 6:
        return const CartScreen();

    
    }
    return const SizedBox();
  }

  
}
