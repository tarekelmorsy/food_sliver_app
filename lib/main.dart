import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_app/config/colors.dart';
import 'package:sliver_app/screens/recipe_detail/recipe_detail_screen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildThemData(),
      debugShowCheckedModeBanner: false,

      home:RecipeDetail(),
    );
  }
  // final ThemeData kAppThemeData=_buildThemData();
  ThemeData _buildThemData(){
    final base=ThemeData.light();
    final baseTestThem=GoogleFonts.interTextTheme(base.textTheme);
    return base.copyWith(
      scaffoldBackgroundColor: Colors.white,
      textTheme: baseTestThem.copyWith(
        titleLarge: baseTestThem.titleLarge!.copyWith(
          height: 32.0/22.0,
          fontWeight:FontWeight.bold,
          color: kMainTextColor,
          letterSpacing: 0.5
        ),
        titleMedium: baseTestThem.titleMedium!.copyWith(
            height: 27.0/17.0,
            fontSize: 17,
            fontWeight:FontWeight.bold,
            color: kMainTextColor,
            letterSpacing: 0.5
        ),
        titleSmall: baseTestThem.titleSmall!.copyWith(
            height: 25.0/15.0,
            fontSize: 15,
            fontWeight:FontWeight.bold,
            color: kMainTextColor,
            letterSpacing: 0.5
        ),
        bodyLarge: baseTestThem.bodyLarge!.copyWith(
            height: 27.0/17.0,
            fontSize: 17,
            color: kMainTextColor,
            letterSpacing: 0.5
        ),
          bodyMedium: baseTestThem.bodyMedium!.copyWith(
              height: 25.0/15.0,
              fontSize: 15,
              color: kMainTextColor,
              letterSpacing: 0.5
          ),
          bodySmall: baseTestThem.bodySmall!.copyWith(
              height: 15.0/12.0,
              color: kMainTextColor,
              letterSpacing: 0.5
          )
      )
    );
  }
}
