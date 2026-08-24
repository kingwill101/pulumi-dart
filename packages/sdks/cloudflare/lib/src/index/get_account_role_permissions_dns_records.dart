// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountRolePermissionsDnsRecords {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountRolePermissionsDnsRecords].
  /// [read] Required.
  /// [write] Required.
  const GetAccountRolePermissionsDnsRecords({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountRolePermissionsDnsRecords.fromMap(Map<String, dynamic> map) {
    return GetAccountRolePermissionsDnsRecords(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
