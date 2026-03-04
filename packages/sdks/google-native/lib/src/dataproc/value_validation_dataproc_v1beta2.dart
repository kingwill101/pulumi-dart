// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation based on a list of allowed values.
class ValueValidationDataprocV1beta2 {
  /// List of allowed values for the parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ValueValidationDataprocV1beta2].
  /// [values] List of allowed values for the parameter.
  ValueValidationDataprocV1beta2({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory ValueValidationDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ValueValidationDataprocV1beta2(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
