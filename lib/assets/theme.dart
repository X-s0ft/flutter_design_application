import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/colors.dart';

// Sematry medium
// MADE Okine bold
// Satoshi bold
final texttheme = TextTheme(
  // Title
  titleLarge: TextStyle(fontSize: 128),
  titleMedium: TextStyle(fontSize: 96),
  titleSmall: TextStyle(fontSize: 64),
  //Body
  bodyMedium: TextStyle(),
  bodySmall: TextStyle(fontSize: 16, fontFamily: 'Satoshi_Variable'),
);

final _text = TextStyle();

// TODO: Создать главную тему
final thememain = ThemeData(
  textTheme: texttheme,
  scaffoldBackgroundColor: blanc,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    titleSpacing: 55,
    toolbarHeight: 100,
    elevation: 0,
    surfaceTintColor: blanc,
    backgroundColor: blanc,
    actionsPadding: EdgeInsets.all(31),
  ),
  // TODO: Дописать визуал кнопки
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      overlayColor: Colors.transparent,
      textStyle: TextStyle(fontFamily: 'Satoshi_Variable', fontSize: 16),
      foregroundColor: noir,
    ),
  ),
);
