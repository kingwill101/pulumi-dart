// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation based on a list of allowed values.
class ValueValidationResponse {
  /// List of allowed values for the parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ValueValidationResponse].
  /// [values] List of allowed values for the parameter.
  ValueValidationResponse({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory ValueValidationResponse.fromMap(Map<String, dynamic> map) {
    return ValueValidationResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
