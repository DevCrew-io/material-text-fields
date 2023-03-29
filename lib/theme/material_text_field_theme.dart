import 'package:flutter/material.dart';

/// Abstract class for defining InputDecorationTheme properties
abstract class _MaterialTextFieldTheme extends InputDecorationTheme {
  const _MaterialTextFieldTheme({
    super.hintStyle,
    super.contentPadding,
    super.errorStyle,
    super.floatingLabelStyle,
    super.prefixIconColor,
    super.suffixIconColor,
    super.labelStyle,
    super.helperStyle,
    super.helperMaxLines,
    super.errorMaxLines,
    super.floatingLabelBehavior,
    super.floatingLabelAlignment,
    super.iconColor,
    super.prefixStyle,
    super.suffixStyle,
    super.fillColor,
    super.filled,
    super.border,
    super.enabledBorder,
    super.focusedBorder,
  });
}

/// This class is used for the theming of underlined text field
class BorderlessTextTheme extends _MaterialTextFieldTheme {
  BorderlessTextTheme({
    /// The style to use for the [InputDecoration.hintText].
    TextStyle? hintStyle,

    /// The Padding for the input decoration's container.
    EdgeInsetsGeometry? contentPadding,

    /// The style to use for the [InputDecoration.errorText].
    TextStyle? errorStyle,

    /// The style to use for the [LabelText].
    TextStyle? floatingLabelStyle,

    /// This is a enable border color for [InputDecoration.enabledBorder]
    Color? enabledColor,

    /// This is a focus border color for [InputDecoration.focusedBorder]
    Color? focusedColor,

    /// The Color to use for the [InputDecoration.prefixIcon].
    Color? prefixIconColor,

    /// The Color to use for the [InputDecoration.suffixIcon].
    Color? suffixIconColor,

    /// The width to use for border
    double width = 2,

    /// The radius to use for border corners
    double radius = 0,

    /// Background color for the text field
    Color fillColor = Colors.transparent,

    /// The style to use for the [InputDecoration.helperText].
    TextStyle? helperStyle,

    /// The maximum number of lines the [InputDecoration.helperText] can occupy.
    int? helperMaxLines,

    /// The maximum number of lines the [InputDecoration.errorText] can occupy.
    int? errorMaxLines,

    /// The Color to use for the [InputDecoration.icon].
    Color? iconColor,

    /// The style to use for the [InputDecoration.prefixText].
    TextStyle? prefixStyle,

    /// The style to use for the [InputDecoration.suffixText].
    TextStyle? suffixStyle,

    /// {@macro flutter.material.inputDecoration.floatingLabelBehavior}
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,

    /// {@macro flutter.material.inputDecoration.floatingLabelAlignment}
    FloatingLabelAlignment floatingLabelAlignment =
        FloatingLabelAlignment.start,
  }) : super(
          hintStyle: hintStyle,
          contentPadding: contentPadding,
          errorStyle: errorStyle,
          floatingLabelStyle: floatingLabelStyle,
          suffixIconColor: suffixIconColor,
          prefixIconColor: prefixIconColor,
          fillColor: fillColor,
          filled: fillColor != Colors.transparent ? true : false,
          helperStyle: helperStyle,
          helperMaxLines: helperMaxLines,
          errorMaxLines: errorMaxLines,
          floatingLabelBehavior: floatingLabelBehavior,
          floatingLabelAlignment: floatingLabelAlignment,
          iconColor: iconColor,
          prefixStyle: prefixStyle,
          suffixStyle: suffixStyle,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: enabledColor ?? Colors.blue, width: width - 1),
              borderRadius: BorderRadius.circular(radius)),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide:
                BorderSide(color: focusedColor ?? Colors.blue, width: width),
          ),
        );
}

/// This class is used for the theming of filled or outlined text field
class FilledOrOutlinedTextTheme extends _MaterialTextFieldTheme {
  FilledOrOutlinedTextTheme({
    TextStyle? hintStyle,
    TextStyle? helperStyle,
    EdgeInsetsGeometry? contentPadding,
    double radius = 4,
    double width = 1.5,
    Color? enabledColor,
    Color? focusedColor,
    TextStyle? labelStyle,
    TextStyle? floatingLabelStyle,
    TextStyle? errorStyle,
    Color fillColor = Colors.black12,
    Color? prefixIconColor,
    Color? suffixIconColor,
    int? helperMaxLines,
    int? errorMaxLines,
    Color? iconColor,
    TextStyle? prefixStyle,
    TextStyle? suffixStyle,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    FloatingLabelAlignment floatingLabelAlignment =
        FloatingLabelAlignment.start,
  }) : super(
          filled: true,
          fillColor: fillColor,
          floatingLabelStyle: floatingLabelStyle,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding,
          errorStyle: errorStyle,
          prefixIconColor: prefixIconColor,
          suffixIconColor: suffixIconColor,
          helperStyle: helperStyle,
          helperMaxLines: helperMaxLines,
          errorMaxLines: errorMaxLines,
          floatingLabelBehavior: floatingLabelBehavior,
          floatingLabelAlignment: floatingLabelAlignment,
          iconColor: iconColor,
          prefixStyle: prefixStyle,
          suffixStyle: suffixStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: focusedColor != null || enabledColor != null
                ? const BorderSide()
                : BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
                width: width, color: enabledColor ?? Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: width, color: focusedColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(radius),
          ),
        );
}
