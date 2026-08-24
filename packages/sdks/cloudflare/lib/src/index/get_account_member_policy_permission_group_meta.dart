// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMemberPolicyPermissionGroupMeta {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetAccountMemberPolicyPermissionGroupMeta].
  /// [key] Required.
  /// [value] Required.
  const GetAccountMemberPolicyPermissionGroupMeta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAccountMemberPolicyPermissionGroupMeta.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberPolicyPermissionGroupMeta(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
