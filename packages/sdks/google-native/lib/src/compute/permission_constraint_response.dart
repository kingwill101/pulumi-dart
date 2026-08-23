// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom constraint that specifies a key and a list of allowed values for Istio attributes.
class PermissionConstraintResponse {
  /// Key of the constraint.
  final pulumi.Input<String> key;
  /// A list of allowed values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [PermissionConstraintResponse].
  /// [key] Key of the constraint.
  /// [values] A list of allowed values.
  const PermissionConstraintResponse({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory PermissionConstraintResponse.fromMap(Map<String, dynamic> map) {
    return PermissionConstraintResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
