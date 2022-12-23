import 'package:ecommerce/Core/Constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.Black),
            headline2: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor),
            bodyText1: TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                color: AppColor.primaryColor),
            headline3: TextStyle(fontSize: 40, color: AppColor.primaryColor),
          ));

ThemeData themeArabic = ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Cairo",
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.Black),
            headline2: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor),
            bodyText1: TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                color: AppColor.primaryColor),
            headline3: TextStyle(fontSize: 40, color: AppColor.primaryColor),
          ));