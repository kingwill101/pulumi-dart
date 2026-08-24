// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountRolesResultPermissionsBilling {
  final pulumi.Input<bool> read;
  final pulumi.Input<bool> write;

  /// Creates a new [GetAccountRolesResultPermissionsBilling].
  /// [read] Required.
  /// [write] Required.
  const GetAccountRolesResultPermissionsBilling({
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
      'write': write,
    };
  }

  factory GetAccountRolesResultPermissionsBilling.fromMap(Map<String, dynamic> map) {
    return GetAccountRolesResultPermissionsBilling(
      read: pulumi.Input.fromValue(map['read'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
