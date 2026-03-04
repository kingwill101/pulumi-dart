// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareAclAccessPolicy {
  /// The time at which this Access Policy is valid until.
  final pulumi.Input<String> expiry;

  /// The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  final pulumi.Input<String> permissions;

  /// The time at which this Access Policy is valid from.
  final pulumi.Input<String> start;

  /// Creates a new [GetShareAclAccessPolicy].
  /// [expiry] The time at which this Access Policy is valid until.
  /// [permissions] The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  /// [start] The time at which this Access Policy is valid from.
  GetShareAclAccessPolicy({
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

  factory GetShareAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetShareAclAccessPolicy(
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
