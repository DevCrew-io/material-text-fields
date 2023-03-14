import 'package:material_text_fields/utils/extensions.dart';

class FormValidation {
  FormValidation._();

  static String? requiredTextField(String? input) =>
      input.isNotNullOrEmpty() ? null : 'This field cannot be empty';

  static String? emailTextField(String? input) =>
      input.isValidEmail() ? null : 'Invalid Email Address';
}
