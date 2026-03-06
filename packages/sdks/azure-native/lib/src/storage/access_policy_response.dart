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
  const AccessPolicyResponse({
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
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

