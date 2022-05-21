import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/persistent_tab_view/persistent_tab_vire_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColors.color,
        ),
      ),
      home: PersistentTabVirePage(),
    ),
  );
}
