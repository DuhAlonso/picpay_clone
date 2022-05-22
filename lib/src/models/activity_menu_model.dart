import 'package:flutter/material.dart';

class ActivityMenuModel {
  final String title;
  final String? subTitle;
  final String urlPhoto;
  final bool isTwoLines;
  final bool contentButton;
  final Color? color;
  ActivityMenuModel({
    required this.title,
    this.subTitle,
    required this.urlPhoto,
    this.isTwoLines = false,
    this.contentButton = false,
    this.color,
  });
}
