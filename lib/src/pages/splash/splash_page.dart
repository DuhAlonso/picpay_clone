import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/persistent_tab_view/persistent_tab_vire_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, anotherAnimation) {
                return const PersistentTabVirePage();
              },
              transitionDuration: const Duration(milliseconds: 1100),
              transitionsBuilder:
                  (context, animation, anotherAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.color.shade700,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Image.asset(
            'assets/images/picpay-44.png',
            scale: 10,
          ),
        ),
      ),
    );
  }
}
