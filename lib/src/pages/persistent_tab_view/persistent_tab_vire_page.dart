import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/home/home_page.dart';

class PersistentTabVirePage extends StatefulWidget {
  PersistentTabVirePage({Key? key}) : super(key: key);

  @override
  State<PersistentTabVirePage> createState() => _PersistentTabVirePageState();
}

class _PersistentTabVirePageState extends State<PersistentTabVirePage> {
  PersistentTabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(name: ''),
      items: _navBarsItems(ctx: context),
      confineInSafeArea: true,
      backgroundColor:
          Color.fromARGB(255, 39, 43, 48), // Default is Colors.white.

      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.white,
      ),
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}

List<Widget> _buildScreens({required String name}) {
  return [
    HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems({required BuildContext ctx}) {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Início"),
      activeColorPrimary: Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.account_balance_wallet_outlined,
      ),
      title: ("Carteira"),
      activeColorPrimary: Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        CupertinoIcons.money_dollar,
        size: 35,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      title: ("Pagar"),
      textStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      activeColorPrimary: MyColors.color.shade700,
      activeColorSecondary: Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: Color.fromARGB(189, 210, 210, 210),
      inactiveColorSecondary: MyColors.color,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.bell),
      title: ("Notificações"),
      activeColorPrimary: Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.shopping_bag_outlined),
      title: ("Store"),
      activeColorPrimary: Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: Color.fromARGB(190, 203, 203, 203),
    ),
  ];
}
