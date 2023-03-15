import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/dashboard_controller.dart';
import 'package:getx_bottom_navigation/setting_page.dart';
import 'package:getx_bottom_navigation/user_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_page.dart';
import 'message_page.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          bottomNavigationBar:Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GNav(
                haptic: true, // haptic feedback
                tabBorderRadius: 15,
                backgroundColor: Colors.white,
                tabActiveBorder: Border.all(color: Colors.purple, width: 1.5), // tab button border
                curve: Curves.easeIn, // tab animation curves
                duration: Duration(milliseconds: 200), // tab animation duration
                color: Colors.grey[600], // unselected icon color
                activeColor: Colors.purple, // selected icon and text color
                iconSize: 28, // tab button icon size
                tabBackgroundColor: Colors.purple.withOpacity(0.3), // selected tab background color
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 07),
                selectedIndex: controller.tabIndex,
                onTabChange: controller.changeTab,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textStyle: TextStyle(fontSize: 18,color: Colors.purple),
                tabs: [
                  GButton(
                    icon: Icons.home_filled,
                    text: 'Home',
                    gap: 10,
                  ),
                  GButton(
                    icon: Icons.group,
                    text: 'Users',
                    gap: 10,
                  ),
                  GButton(
                    icon: Icons.message,
                    text: 'Message',
                    gap: 10,
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: 'Setting',
                    gap: 10,
                  )
                ]
            ),
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                UserPage(),
                MessagePage(),
                SettingPage()],
            ),
          ),
        ),
      );
    });
  }
}
