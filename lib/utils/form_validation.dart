import 'package:material_text_field/utils/extensions.dart';

/// Extension function implementations for field validation
class FormValidation {
  FormValidation._();

  /// Implementation of [StringValidator.isNotNullOrEmpty] for required text field
  static String? requiredTextField(String? input) =>
      input.isNotNullOrEmpty() ? null : 'This field cannot be empty';

  /// Implementation of [StringValidator.isValidEmail] for email validation
  static String? emailTextField(String? input) =>
      input.isValidEmail() ? null : 'Invalid Email Address';
}
