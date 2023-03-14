import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String title;
  final TextStyle? titleStyling;
  final Widget child;
  final double labelSpacing;

  const LabeledTextField({
    super.key,
    required this.title,
    required this.child,
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
        child,
      ],
    );
  }
}
