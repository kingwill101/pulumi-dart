// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableAclAccessPolicy {
  final pulumi.Input<String> expiry;
  final pulumi.Input<String> permissions;
  final pulumi.Input<String> start;

  /// Creates a new [GetTableAclAccessPolicy].
  /// [expiry] Required.
  /// [permissions] Required.
  /// [start] Required.
  const GetTableAclAccessPolicy({
    required this.expiry,
    required this.permissions,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'permissions': permissions,
      'start': start,
    };
  }

  factory GetTableAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetTableAclAccessPolicy(
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
