import 'package:flutter/material.dart';
import 'package:material_text_field/material_text_fields.dart';

/// This class is used for labeled text field [example]
class LabeledTextField extends StatelessWidget {
  /// Label title
  final String title;

  /// Label text styling
  final TextStyle? titleStyling;

  /// Provide [MaterialTextField] as child
  final MaterialTextField textField;

  /// Spacing between label and [textField]
  final double labelSpacing;

  const LabeledTextField({
    super.key,
    required this.title,
    required this.textField,
    this.titleStyling,
    this.labelSpacing = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 2,
            ),
            Text(
              title,
              style: titleStyling ??
                  const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
            )
          ],
        ),
        SizedBox(
          height: labelSpacing,
        ),
        textField,
      ],
    );
  }
}
