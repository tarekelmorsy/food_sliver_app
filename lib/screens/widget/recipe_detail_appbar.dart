import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/colors.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275,
      backgroundColor: Colors.white,
      elevation: 0,
      stretch: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/images/food_picture.png",
          fit: BoxFit.cover,
        ),
        stretchModes: [StretchMode.blurBackground, StretchMode.zoomBackground],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: Container(
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32))),
          child: Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
                color: kOutlineColor, borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
      leadingWidth: 80,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(56.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            margin: EdgeInsets.only(left: 24),
            height: 56,
            width: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.20),
            ),
            child: SvgPicture.asset('assets/icons/arrow-ios-back-outline.svg'),
          ),
        ),
      ),
    );
  }
}
