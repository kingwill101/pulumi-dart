// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyResponse {
  /// Expiry time of the access policy
  final pulumi.Input<String>? expiryTime;
  /// List of abbreviated permissions.
  final pulumi.Input<String>? permission;
  /// Start time of the access policy
  final pulumi.Input<String>? startTime;

  /// Creates a new [AccessPolicyResponse].
  /// [expiryTime] Expiry time of the access policy
  /// [permission] List of abbreviated permissions.
  /// [startTime] Start time of the access policy
  AccessPolicyResponse({
    this.expiryTime,
    this.permission,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryTime': ?expiryTime,
      'permission': ?permission,
      'startTime': ?startTime,
    };
  }

  factory AccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AccessPolicyResponse(
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      permission: map['permission'] == null ? null : (map['permission'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

