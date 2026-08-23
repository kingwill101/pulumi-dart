// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleFilterMatchBlobIndexTag {
  /// The filter tag name used for tag based filtering for blob objects.
  final pulumi.Input<String> name;
  /// The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  final pulumi.Input<String> operation;
  /// The filter tag value used for tag based filtering for blob objects.
  final pulumi.Input<String> value;

  /// Creates a new [GetPolicyRuleFilterMatchBlobIndexTag].
  /// [name] The filter tag name used for tag based filtering for blob objects.
  /// [operation] The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  /// [value] The filter tag value used for tag based filtering for blob objects.
  const GetPolicyRuleFilterMatchBlobIndexTag({
    required this.name,
    required this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operation': operation,
      'value': value,
    };
  }

  factory GetPolicyRuleFilterMatchBlobIndexTag.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleFilterMatchBlobIndexTag(
      name: pulumi.Input.fromValue(map['name'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
