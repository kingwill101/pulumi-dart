// ignore_for_file: unused_element, unnecessary_cast


class RegionalSecretRotation {
  /// Timestamp in UTC at which the Secret is scheduled to rotate.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? nextRotationTime;
  /// The Duration between rotation notifications. Must be in seconds and at least 3600s (1h)
  /// and at most 3153600000s (100 years). If rotationPeriod is set, `next_rotation_time` must
  /// be set. `next_rotation_time` will be advanced by this period when the service
  /// automatically sends rotation notifications.
  final String? rotationPeriod;

  /// Creates a new [RegionalSecretRotation].
  /// [nextRotationTime] Timestamp in UTC at which the Secret is scheduled to rotate.
  /// [rotationPeriod] The Duration between rotation notifications. Must be in seconds and at least 3600s (1h)
  RegionalSecretRotation({
    this.nextRotationTime,
    this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': ?nextRotationTime,
      'rotationPeriod': ?rotationPeriod,
    };
  }

  factory RegionalSecretRotation.fromMap(Map<String, dynamic> map) {
    return RegionalSecretRotation(
      nextRotationTime: map['nextRotationTime'] == null ? null : map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] == null ? null : map['rotationPeriod'] as String,
    );
  }
}

