import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:petra_pit_pitan/login.dart';
import 'package:petra_pit_pitan/screen/admin/akunNonaktif.dart';
import 'package:petra_pit_pitan/screen/admin/beranda.dart';
import 'package:petra_pit_pitan/screen/admin/listSepeda.dart';
import 'package:petra_pit_pitan/screen/admin/notifikasiPeringatan.dart';
import 'package:petra_pit_pitan/screen/user/Beranda.dart';
import 'package:petra_pit_pitan/screen/user/history.dart';
import 'package:petra_pit_pitan/screen/user/profile.dart';
import 'package:petra_pit_pitan/screen/user/reservasi.dart';
import 'package:petra_pit_pitan/theme.dart';

class navbarUserPage extends StatefulWidget {
  const navbarUserPage({super.key});

  @override
  State<navbarUserPage> createState() => _navbarUserPageState();
}

class _navbarUserPageState extends State<navbarUserPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarUser(),
    );
  }
}

class BottomNavBarUser extends StatelessWidget {
  const BottomNavBarUser({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        berandaUserPage(),
        reservasiUserPage(),
        historyUserPage(),
        profileUserPage()
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          title: ("Beranda"),
          activeColorPrimary: secondarycolor,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.add_road_rounded, color: Colors.white),
          title: ("Reservasi"),
          activeColorPrimary: secondarycolor,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.history, color: Colors.white),
          title: ("History"),
          activeColorPrimary: secondarycolor,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle_outlined, color: Colors.white),
          title: ("Profile"),
          activeColorPrimary: secondarycolor,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: primarycolor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: primarycolor,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}
