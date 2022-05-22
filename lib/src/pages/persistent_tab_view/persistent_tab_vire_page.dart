import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/home/home_page.dart';

class PersistentTabVirePage extends StatefulWidget {
  const PersistentTabVirePage({Key? key}) : super(key: key);

  @override
  State<PersistentTabVirePage> createState() => _PersistentTabVirePageState();
}

class _PersistentTabVirePageState extends State<PersistentTabVirePage> {
  PersistentTabController? _controller;

  @override
  void initState() {
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
          const Color.fromARGB(255, 39, 43, 48), // Default is Colors.white.

      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.white,
      ),
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
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
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems({required BuildContext ctx}) {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Início"),
      activeColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: const Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.account_balance_wallet_outlined,
      ),
      title: ("Carteira"),
      activeColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: const Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.money_dollar,
        size: 35,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      title: ("Pagar"),
      textStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      activeColorPrimary: MyColors.color.shade700,
      activeColorSecondary: const Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: const Color.fromARGB(189, 210, 210, 210),
      inactiveColorSecondary: MyColors.color,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.bell),
      title: ("Notificações"),
      activeColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: const Color.fromARGB(190, 203, 203, 203),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag_outlined),
      title: ("Store"),
      activeColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      inactiveColorPrimary: const Color.fromARGB(190, 203, 203, 203),
    ),
  ];
}
