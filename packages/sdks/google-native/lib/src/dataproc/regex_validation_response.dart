// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation based on regular expressions.
class RegexValidationResponse {
  /// RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final pulumi.Input<List<String>> regexes;

  /// Creates a new [RegexValidationResponse].
  /// [regexes] RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  const RegexValidationResponse({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexes': regexes,
    };
  }

  factory RegexValidationResponse.fromMap(Map<String, dynamic> map) {
    return RegexValidationResponse(
      regexes: pulumi.Input.fromValue((map['regexes'] as List).cast<String>()),
    );
  }
}

