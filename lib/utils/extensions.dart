/// String extension functions for Text field validations
extension StringValidator on String? {
  /// Return true if given string is not null or empty
  bool isNotNullOrEmpty() =>
      (this == null || this?.isEmpty == true) ? false : true;

  /// Return true if given string is null or empty
  bool isNullOrEmpty() =>
      (this == null || this?.isEmpty == true) ? true : false;

  /// Return true if given string is valid email and not empty or null
  bool isValidEmail() {
    return isNullOrEmpty()
        ? false
        : RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(this!);
  }
}
