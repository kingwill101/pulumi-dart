// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareAclAccessPolicy {
  /// The time at which this Access Policy should be valid untilWhen using `storage_account_id` this should be in RFC3339 format. If using the deprecated `storage_account_name` property, this uses the [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.
  final pulumi.Input<String>? expiry;
  /// The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  ///
  /// &gt; **Note:** Permission order is strict at the service side, and permissions need to be listed in the order above.
  final pulumi.Input<String> permissions;
  /// The time at which this Access Policy should be valid from. When using `storage_account_id` this should be in RFC3339 format. If using the deprecated `storage_account_name` property, this uses the [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.
  final pulumi.Input<String>? start;

  /// Creates a new [ShareAclAccessPolicy].
  /// [expiry] The time at which this Access Policy should be valid untilWhen using `storage_account_id` this should be in RFC3339 format. If using the deprecated `storage_account_name` property, this uses the [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.
  /// [permissions] The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  /// [start] The time at which this Access Policy should be valid from. When using `storage_account_id` this should be in RFC3339 format. If using the deprecated `storage_account_name` property, this uses the [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.
  const ShareAclAccessPolicy({
    this.expiry,
    required this.permissions,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': ?expiry,
      'permissions': permissions,
      'start': ?start,
    };
  }

  factory ShareAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return ShareAclAccessPolicy(
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

