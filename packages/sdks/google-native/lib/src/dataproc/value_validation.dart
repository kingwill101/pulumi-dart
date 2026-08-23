// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation based on a list of allowed values.
class ValueValidation {
  /// List of allowed values for the parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ValueValidation].
  /// [values] List of allowed values for the parameter.
  const ValueValidation({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory ValueValidation.fromMap(Map<String, dynamic> map) {
    return ValueValidation(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
