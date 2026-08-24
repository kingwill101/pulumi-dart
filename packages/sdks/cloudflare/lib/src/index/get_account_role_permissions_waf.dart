// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountRolePermissionsWaf {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountRolePermissionsWaf].
  /// [read] Required.
  /// [write] Required.
  const GetAccountRolePermissionsWaf({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountRolePermissionsWaf.fromMap(Map<String, dynamic> map) {
    return GetAccountRolePermissionsWaf(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
