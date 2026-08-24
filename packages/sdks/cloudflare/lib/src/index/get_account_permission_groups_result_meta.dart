// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountPermissionGroupsResultMeta {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetAccountPermissionGroupsResultMeta].
  /// [key] Required.
  /// [value] Required.
  const GetAccountPermissionGroupsResultMeta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAccountPermissionGroupsResultMeta.fromMap(Map<String, dynamic> map) {
    return GetAccountPermissionGroupsResultMeta(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
