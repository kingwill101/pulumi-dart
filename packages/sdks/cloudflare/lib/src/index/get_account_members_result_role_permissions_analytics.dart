// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMembersResultRolePermissionsAnalytics {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountMembersResultRolePermissionsAnalytics].
  /// [read] Required.
  /// [write] Required.
  const GetAccountMembersResultRolePermissionsAnalytics({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountMembersResultRolePermissionsAnalytics.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultRolePermissionsAnalytics(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
