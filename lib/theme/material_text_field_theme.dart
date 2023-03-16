import 'package:flutter/material.dart';

/// This class is used to define the value of inputDecorationTheme
class MaterialTextFieldTheme {
  /// [hintStyle] for hint text styling
  /// [fillColor] for background color of text field
  /// [contentPadding] padding for the input decoration's container
  /// [errorStyle] style to use for the error message
  /// [floatingLabelStyle] for floating label text styling
  /// [width] for border width
  /// [enabledColor] color to use for enabled border
  /// [focusedColor] color to use for focused border
  /// [prefixIconColor] color to use for prefixIcon
  /// [suffixIconColor] color to use for suffixIcon

  /// This function is used for the theming of underlined text field
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

  /// [radius] corner radius of field
  /// [labelStyle] for label text styling

  /// This function is used for the theming of filled or outlined text field
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
