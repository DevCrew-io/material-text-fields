library material_text_fields;

import 'package:flutter/material.dart';

abstract class _TextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hint;
  final bool obscureText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
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

class MaterialTextField extends _TextField {
  final String? labelText;
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
