import 'package:flutter/material.dart';
import 'package:material_text_field/theme/material_text_field_theme.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  inputDecorationTheme: MaterialTextFieldTheme.filledOrOutlinedTextTheme(
    radius: 16
  ),
);
