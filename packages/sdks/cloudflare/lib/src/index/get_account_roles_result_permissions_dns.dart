// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountRolesResultPermissionsDns {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountRolesResultPermissionsDns].
  /// [read] Required.
  /// [write] Required.
  const GetAccountRolesResultPermissionsDns({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountRolesResultPermissionsDns.fromMap(Map<String, dynamic> map) {
    return GetAccountRolesResultPermissionsDns(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
