// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_archive_reference_response.dart';

class SecretRotationStatusResponse {
  /// The maximum number of days the secret may be used before it must be changed.
  final pulumi.Input<double> expirePeriodDays;
  /// The date and time when the secret was last changed.
  final pulumi.Input<String> lastRotationTime;
  /// The number of days a secret exists before rotations will be attempted.
  final pulumi.Input<double> rotationPeriodDays;
  /// The reference to the secret in a key vault.
  final pulumi.Input<SecretArchiveReferenceResponse> secretArchiveReference;
  /// The type name used to identify the purpose of the secret.
  final pulumi.Input<String> secretType;

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
      'secretArchiveReference': pulumi.Input.mapInputValue<SecretArchiveReferenceResponse, Map<String, dynamic>>(secretArchiveReference, (value) => value.toMap()),
      'secretType': secretType,
    };
  }

  factory SecretRotationStatusResponse.fromMap(Map<String, dynamic> map) {
    return SecretRotationStatusResponse(
      expirePeriodDays: (map['expirePeriodDays'] as double).input(),
      lastRotationTime: (map['lastRotationTime'] as String).input(),
      rotationPeriodDays: (map['rotationPeriodDays'] as double).input(),
      secretArchiveReference: (SecretArchiveReferenceResponse.fromMap((map['secretArchiveReference'] as Map).cast<String, dynamic>())).input(),
      secretType: (map['secretType'] as String).input(),
    );
  }
}

