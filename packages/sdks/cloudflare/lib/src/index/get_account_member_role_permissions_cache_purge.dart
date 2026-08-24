// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMemberRolePermissionsCachePurge {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountMemberRolePermissionsCachePurge].
  /// [read] Required.
  /// [write] Required.
  const GetAccountMemberRolePermissionsCachePurge({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountMemberRolePermissionsCachePurge.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberRolePermissionsCachePurge(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
