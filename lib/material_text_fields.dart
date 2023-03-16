library material_text_fields;

import 'package:flutter/material.dart';

/// This abstract class defines [TextFormField] properties
abstract class _TextField extends StatelessWidget {
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

  const _TextField({
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
  }) : super(key: key);
}

/// This is a magic widget, you can use for text input field with custom styling.
/// You can define theming of text field in app level theme file, or
/// You can create different fields with different styling
class MaterialTextField extends _TextField {
  /// Label text for outlined text field
  final String? labelText;

  /// You can also pass custom theming to this class which is differ from
  /// app level theming.
  final InputDecorationTheme? theme;

  const MaterialTextField({
    Key? key,
    TextInputType? keyboardType,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    final ValueChanged<String>? onChanged,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool obscureText = false,
    String? hint,
    bool enabled = true,
    this.labelText,
    this.theme,
    TextStyle? style,
  }) : super(
          key: key,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          textInputAction: textInputAction,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hint: hint,
          enabled: enabled,
          obscureText: obscureText,
          style: style,
        );

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
