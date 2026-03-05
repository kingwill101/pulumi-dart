// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom constraint that specifies a key and a list of allowed values for Istio attributes.
class PermissionConstraint {
  /// Key of the constraint.
  final pulumi.Input<String>? key;
  /// A list of allowed values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [PermissionConstraint].
  /// [key] Key of the constraint.
  /// [values] A list of allowed values.
  PermissionConstraint({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory PermissionConstraint.fromMap(Map<String, dynamic> map) {
    return PermissionConstraint(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

