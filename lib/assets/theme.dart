import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/colors.dart';

// Sematry medium
// MADE Okine bold
// Satoshi bold
final texttheme = TextTheme(
  titleLarge: _text.copyWith(fontSize: 128),
  titleMedium: _text.copyWith(fontSize: 96),
  titleSmall: _text.copyWith(fontSize: 64),
);

final _text = TextStyle(color: blanc);

// TODO: Создать главную тему
final thememain = ThemeData(
  textTheme: texttheme,
  scaffoldBackgroundColor: blanc,
  appBarTheme: AppBarTheme(
    toolbarHeight: 100,
    backgroundColor: blanc,
    actionsPadding: EdgeInsets.all(31),
  ),
  // TODO: Дописать визуал кнопки
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(fontFamily: 'Satoshi_Variable'),
      foregroundColor: noir,
    ),
  ),
);
