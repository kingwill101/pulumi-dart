// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a selector for extracting and matching an MSH field to a value.
class VersionSourceResponse {
  /// The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  final pulumi.Input<String> mshField;

  /// The value to match with the field. For example, "My Application Name" or "2.3".
  final pulumi.Input<String> value;

  /// Creates a new [VersionSourceResponse].
  /// [mshField] The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  /// [value] The value to match with the field. For example, "My Application Name" or "2.3".
  VersionSourceResponse({required this.mshField, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mshField': mshField, 'value': value};
  }

  factory VersionSourceResponse.fromMap(Map<String, dynamic> map) {
    return VersionSourceResponse(
      mshField: pulumi.Input.fromValue(map['mshField'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
