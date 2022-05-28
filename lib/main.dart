import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/persistent_tab_view/persistent_tab_vire_page.dart';
import 'package:picpay_clone/src/pages/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColors.color,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    ),
  );
}
