// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMemberRolePermissionsDnsRecords {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountMemberRolePermissionsDnsRecords].
  /// [read] Required.
  /// [write] Required.
  const GetAccountMemberRolePermissionsDnsRecords({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountMemberRolePermissionsDnsRecords.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberRolePermissionsDnsRecords(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
