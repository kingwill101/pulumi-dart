// ignore_for_file: unused_element, unnecessary_cast

import 'secret_archive_reference_response.dart';

class SecretRotationStatusResponse {
  /// The maximum number of days the secret may be used before it must be changed.
  final double expirePeriodDays;
  /// The date and time when the secret was last changed.
  final String lastRotationTime;
  /// The number of days a secret exists before rotations will be attempted.
  final double rotationPeriodDays;
  /// The reference to the secret in a key vault.
  final SecretArchiveReferenceResponse secretArchiveReference;
  /// The type name used to identify the purpose of the secret.
  final String secretType;

  /// Creates a new [SecretRotationStatusResponse].
  /// [expirePeriodDays] The maximum number of days the secret may be used before it must be changed.
  /// [lastRotationTime] The date and time when the secret was last changed.
  /// [rotationPeriodDays] The number of days a secret exists before rotations will be attempted.
  /// [secretArchiveReference] The reference to the secret in a key vault.
  /// [secretType] The type name used to identify the purpose of the secret.
  SecretRotationStatusResponse({
    required this.expirePeriodDays,
    required this.lastRotationTime,
    required this.rotationPeriodDays,
    required this.secretArchiveReference,
    required this.secretType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirePeriodDays': expirePeriodDays,
      'lastRotationTime': lastRotationTime,
      'rotationPeriodDays': rotationPeriodDays,
      'secretArchiveReference': secretArchiveReference.toMap(),
      'secretType': secretType,
    };
  }

  factory SecretRotationStatusResponse.fromMap(Map<String, dynamic> map) {
    return SecretRotationStatusResponse(
      expirePeriodDays: map['expirePeriodDays'] as double,
      lastRotationTime: map['lastRotationTime'] as String,
      rotationPeriodDays: map['rotationPeriodDays'] as double,
      secretArchiveReference: SecretArchiveReferenceResponse.fromMap((map['secretArchiveReference'] as Map).cast<String, dynamic>()),
      secretType: map['secretType'] as String,
    );
  }
}

