import 'package:flutter/material.dart';

class MaterialTextFieldTheme {
  static InputDecorationTheme borderlessTextTheme({
    TextStyle? hintStyle,
    Color fillColor = Colors.transparent,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? errorStyle,
    TextStyle? floatingLabelStyle,
    double width = 1,
    Color? enabledColor,
    Color? focusedColor,
    Color? prefixIconColor,
    Color? suffixIconColor,
  }) {
    return InputDecorationTheme(
      hintStyle: hintStyle,
      contentPadding: contentPadding,
      errorStyle: errorStyle,
      floatingLabelStyle: floatingLabelStyle,
      border: const UnderlineInputBorder(
        borderSide: BorderSide(),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide:
            BorderSide(color: enabledColor ?? Colors.blue, width: width),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide:
            BorderSide(color: focusedColor ?? Colors.blue, width: width),
      ),
      suffixIconColor: suffixIconColor,
      prefixIconColor: prefixIconColor,
      fillColor: fillColor,
    );
  }

  static InputDecorationTheme filledOrOutlinedTextTheme({
    TextStyle? hintStyle,
    EdgeInsetsGeometry? contentPadding,
    double radius = 4,
    double width = 1,
    Color? enabledColor,
    Color? focusedColor,
    TextStyle? labelStyle,
    TextStyle? floatingLabelStyle,
    TextStyle? errorStyle,
    Color fillColor = Colors.black12,
    Color? prefixIconColor,
    Color? suffixIconColor,
  }) {
    bool showErrBorderWithFilled =
        (focusedColor != null || enabledColor != null);
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      floatingLabelStyle: floatingLabelStyle,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      contentPadding: contentPadding,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide:
            showErrBorderWithFilled ? const BorderSide() : BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide:
            BorderSide(width: width, color: enabledColor ?? Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: width, color: focusedColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(radius),
      ),
      errorStyle: errorStyle,
      prefixIconColor: prefixIconColor,
      suffixIconColor: suffixIconColor,
    );
  }
}
