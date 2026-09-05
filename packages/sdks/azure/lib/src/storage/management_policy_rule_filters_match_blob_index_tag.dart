// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementPolicyRuleFiltersMatchBlobIndexTag {
  /// The filter tag name used for tag based filtering for blob objects.
  final pulumi.Input<String> name;
  /// The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  final pulumi.Input<String?>? operation;
  /// The filter tag value used for tag based filtering for blob objects.
  final pulumi.Input<String> value;

  /// Creates a new [ManagementPolicyRuleFiltersMatchBlobIndexTag].
  /// [name] The filter tag name used for tag based filtering for blob objects.
  /// [operation] The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  /// [value] The filter tag value used for tag based filtering for blob objects.
  const ManagementPolicyRuleFiltersMatchBlobIndexTag({
    required this.name,
    this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operation': ?operation,
      'value': value,
    };
  }

  factory ManagementPolicyRuleFiltersMatchBlobIndexTag.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleFiltersMatchBlobIndexTag(
      name: pulumi.Input.fromValue(map['name'] as String),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
