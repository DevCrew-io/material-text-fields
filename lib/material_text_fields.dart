library material_text_fields;

import 'package:flutter/material.dart';

/// This is a magic widget, you can use for text input field with custom styling.
/// You can define theming of text field in app level theme file, or
/// You can create different fields with different styling
class MaterialTextField extends StatelessWidget {
  /// The type of information for which to optimize the text input control
  final TextInputType? keyboardType;

  /// A controller for an editable text field.
  final TextEditingController? controller;

  /// Signature for validating a form field.
  /// Returns an error string to display if the input is invalid, or null
  final FormFieldValidator<String>? validator;

  /// An action the user has requested the text input control to perform
  final TextInputAction? textInputAction;

  /// An icon that appears after the editable part of the text field
  final Widget? suffixIcon;

  /// An icon that appears before the editable part of the text field
  final Widget? prefixIcon;

  /// Hint text, shows within the container of field
  final String? hint;

  /// Pass [true] to hide the data entered in the input field
  /// The default of this is false, which makes it visible to us
  /// Often used for password field
  final bool obscureText;

  /// Enable/disable value entering in the input field
  /// Default value of this is true, which makes it enable.
  final bool enabled;

  /// Signature for callbacks that report that an underlying value has changed.
  final ValueChanged<String>? onChanged;

  /// Text styling of input field
  final TextStyle? style;

  /// An icon to show before the input field and outside of the decoration's
  final Widget? icon;

  /// The color of the [icon]
  final Color? iconColor;

  /// Text that provides context about the [InputDecorator.child]'s value, such
  /// as how the value will be used.
  final String? helperText;

  /// The style to use for the [helperText]
  final TextStyle? helperStyle;

  /// The maximum number of lines the [helperText] can occupy.
  final int? helperMaxLines;

  /// The direction to use for the [hintText]
  final TextDirection? hintTextDirection;

  /// The maximum number of lines the [hint] can occupy.
  final int? hintMaxLines;

  /// Text that appears below the [InputDecorator.child] and the border.
  final String? errorText;

  /// The style to use for the [errorText].
  final TextStyle? errorStyle;

  /// The maximum number of lines the [errorText] can occupy.
  final int? errorMaxLines;

  /// Defines **how** the floating label should behave.
  /// When [FloatingLabelBehavior.auto] the label will float to the top only when
  /// the field is focused or has some text content, otherwise it will appear
  /// in the field in place of the content.
  /// When [FloatingLabelBehavior.always] the label will always float at the top
  /// of the field above the content.
  /// When [FloatingLabelBehavior.never] the label will always appear in an empty
  /// field in place of the content.
  final FloatingLabelBehavior? floatingLabelBehavior;

  /// Defines **where** the floating label should be displayed.
  final FloatingLabelAlignment? floatingLabelAlignment;

  /// Optional text prefix to place on the line before the input.
  final String? prefixText;

  /// The style to use for the [prefixText].
  final TextStyle? prefixStyle;

  /// Optional color of the prefixIcon
  final Color? prefixIconColor;

  /// Optional text suffix to place on the line before the input.
  final String? suffixText;

  /// The style to use for the [suffixStyle].
  final TextStyle? suffixStyle;

  /// Optional color of the suffixIcon
  final Color? suffixIconColor;

  /// Label text for outlined text field
  final String? labelText;

  /// You can also pass custom theming to this class which is differ from
  /// app level theming.
  final InputDecorationTheme? theme;

  const MaterialTextField({
    Key? key,
    this.keyboardType,
    this.controller,
    this.validator,
    this.textInputAction,
    this.suffixIcon,
    this.prefixIcon,
    this.hint,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
    this.style,
    this.icon,
    this.iconColor,
    this.errorStyle,
    this.errorMaxLines,
    this.errorText,
    this.floatingLabelAlignment,
    this.floatingLabelBehavior,
    this.helperMaxLines,
    this.helperStyle,
    this.helperText,
    this.hintMaxLines,
    this.hintTextDirection,
    this.suffixIconColor,
    this.prefixIconColor,
    this.prefixStyle,
    this.prefixText,
    this.suffixStyle,
    this.suffixText,
    this.labelText,
    this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintStyle: theme?.hintStyle,
        contentPadding: theme?.contentPadding,
        errorStyle: theme?.errorStyle,
        floatingLabelStyle: theme?.floatingLabelStyle,
        labelStyle: theme?.labelStyle,
        fillColor: theme?.fillColor,
        border: theme?.border,
        focusedBorder: theme?.focusedBorder,
        enabledBorder: theme?.enabledBorder,
        icon: icon,
        iconColor: theme?.iconColor,
        errorMaxLines: theme?.errorMaxLines,
        errorText: errorText,
        floatingLabelAlignment: theme?.floatingLabelAlignment,
        floatingLabelBehavior: theme?.floatingLabelBehavior,
        helperMaxLines: theme?.helperMaxLines,
        helperStyle: theme?.helperStyle,
        helperText: helperText,
        hintMaxLines: hintMaxLines,
        hintTextDirection: hintTextDirection,
        suffixIconColor: theme?.suffixIconColor,
        prefixIconColor: theme?.prefixIconColor,
        prefixStyle: theme?.prefixStyle,
        prefixText: prefixText,
        suffixStyle: theme?.suffixStyle,
        suffixText: suffixText,
        filled: theme?.filled,
      ),
      validator: validator,
      onChanged: onChanged,
      enabled: enabled,
      obscureText: obscureText,
      controller: controller,
      style: style,
      textInputAction: textInputAction,
    );
  }
}
