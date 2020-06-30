import 'package:aspirewebpanel/core/colors.dart';
import 'package:aspirewebpanel/core/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageCard {
  static Widget getHomePageCard(String title) {
    return Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Center(
        child: Text(
          title,
          style: firstTitleTextStyle,
        ),
      ),
    );
  }
}
