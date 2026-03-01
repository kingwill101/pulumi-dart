// ignore_for_file: unused_element, unnecessary_cast


class AccessPolicy {
  /// Expiry time of the access policy
  final String? expiryTime;
  /// List of abbreviated permissions.
  final String? permission;
  /// Start time of the access policy
  final String? startTime;

  /// Creates a new [AccessPolicy].
  /// [expiryTime] Expiry time of the access policy
  /// [permission] List of abbreviated permissions.
  /// [startTime] Start time of the access policy
  AccessPolicy({
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

  factory AccessPolicy.fromMap(Map<String, dynamic> map) {
    return AccessPolicy(
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      permission: map['permission'] == null ? null : map['permission'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

