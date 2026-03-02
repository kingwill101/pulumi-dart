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
  GetTableAclAccessPolicy({
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
      expiry: (map['expiry'] as String).input(),
      permissions: (map['permissions'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

