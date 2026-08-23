// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretsSecretRotation {
  /// Timestamp in UTC at which the secret is scheduled to rotate.
  final pulumi.Input<String> nextRotationTime;
  /// The Duration between rotation notifications.
  final pulumi.Input<String> rotationPeriod;

  /// Creates a new [GetRegionalSecretsSecretRotation].
  /// [nextRotationTime] Timestamp in UTC at which the secret is scheduled to rotate.
  /// [rotationPeriod] The Duration between rotation notifications.
  const GetRegionalSecretsSecretRotation({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': nextRotationTime,
      'rotationPeriod': rotationPeriod,
    };
  }

  factory GetRegionalSecretsSecretRotation.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecretRotation(
      nextRotationTime: pulumi.Input.fromValue(map['nextRotationTime'] as String),
      rotationPeriod: pulumi.Input.fromValue(map['rotationPeriod'] as String),
    );
  }
}
