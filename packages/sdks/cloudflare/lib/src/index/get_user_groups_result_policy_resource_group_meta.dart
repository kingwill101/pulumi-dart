// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupsResultPolicyResourceGroupMeta {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetUserGroupsResultPolicyResourceGroupMeta].
  /// [key] Required.
  /// [value] Required.
  const GetUserGroupsResultPolicyResourceGroupMeta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetUserGroupsResultPolicyResourceGroupMeta.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicyResourceGroupMeta(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
