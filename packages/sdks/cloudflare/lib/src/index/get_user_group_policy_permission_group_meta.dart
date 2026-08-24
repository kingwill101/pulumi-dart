// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupPolicyPermissionGroupMeta {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetUserGroupPolicyPermissionGroupMeta].
  /// [key] Required.
  /// [value] Required.
  const GetUserGroupPolicyPermissionGroupMeta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetUserGroupPolicyPermissionGroupMeta.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyPermissionGroupMeta(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
