// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsSecretRotation {
  /// Timestamp in UTC at which the Secret is scheduled to rotate.
  final pulumi.Input<String> nextRotationTime;
  /// The Duration between rotation notifications.
  final pulumi.Input<String> rotationPeriod;

  /// Creates a new [GetSecretsSecretRotation].
  /// [nextRotationTime] Timestamp in UTC at which the Secret is scheduled to rotate.
  /// [rotationPeriod] The Duration between rotation notifications.
  GetSecretsSecretRotation({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': nextRotationTime,
      'rotationPeriod': rotationPeriod,
    };
  }

  factory GetSecretsSecretRotation.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretRotation(
      nextRotationTime: (map['nextRotationTime'] as String).input(),
      rotationPeriod: (map['rotationPeriod'] as String).input(),
    );
  }
}

