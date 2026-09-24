import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/colors.dart';

// Sematry medium
// MADE Okine bold
// Satoshi bold
final _texttheme = TextTheme(
  // Title
  titleLarge: _titlebold.copyWith(fontSize: 128),
  titleMedium: _titlebold.copyWith(fontSize: 96),
  titleSmall: _titlemed.copyWith(fontSize: 64),
  //Body
  bodyMedium: TextStyle(),
  bodySmall: _text.copyWith(fontSize: 16),
);

final _titlemed = TextStyle(fontFamily: 'Sematary_Medium', color: blanc);
final _titlebold = TextStyle(fontFamily: 'MADE_Okine_Sans_bold', color: blanc);
final _text = TextStyle(fontFamily: 'Satoshi_Variable', color: blanc);

final thememain = ThemeData(
  textTheme: _texttheme,
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

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      overlayColor: Colors.transparent,
      textStyle: TextStyle(fontFamily: 'Satoshi_Variable', fontSize: 16),
      foregroundColor: noir,
    ),
  ),
);
