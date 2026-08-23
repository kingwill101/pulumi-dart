// ignore_for_file: unused_element, unnecessary_cast

import 'crypto_key_version_response.dart';
import 'crypto_key_version_template_response.dart';

/// Result data returned by getCryptoKey.
class GetCryptoKeyResult {
  /// The time at which this CryptoKey was created.
  final String createTime;
  /// Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  final String cryptoKeyBackend;
  /// Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  final String destroyScheduledDuration;
  /// Immutable. Whether this key may contain imported versions only.
  final bool importOnly;
  /// Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  final Map<String, String> labels;
  /// The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String name;
  /// At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final String nextRotationTime;
  /// A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
  final CryptoKeyVersionResponse primary;
  /// Immutable. The immutable purpose of this CryptoKey.
  final String purpose;
  /// next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final String rotationPeriod;
  /// A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  final CryptoKeyVersionTemplateResponse versionTemplate;

  /// Creates a new [GetCryptoKeyResult].
  /// [createTime] The time at which this CryptoKey was created.
  /// [cryptoKeyBackend] Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  /// [destroyScheduledDuration] Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  /// [importOnly] Immutable. Whether this key may contain imported versions only.
  /// [labels] Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  /// [name] The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [nextRotationTime] At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  /// [primary] A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
  /// [purpose] Immutable. The immutable purpose of this CryptoKey.
  /// [rotationPeriod] next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  /// [versionTemplate] A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  const GetCryptoKeyResult({
    required this.createTime,
    required this.cryptoKeyBackend,
    required this.destroyScheduledDuration,
    required this.importOnly,
    required this.labels,
    required this.name,
    required this.nextRotationTime,
    required this.primary,
    required this.purpose,
    required this.rotationPeriod,
    required this.versionTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'cryptoKeyBackend': cryptoKeyBackend,
      'destroyScheduledDuration': destroyScheduledDuration,
      'importOnly': importOnly,
      'labels': labels,
      'name': name,
      'nextRotationTime': nextRotationTime,
      'primary': primary.toMap(),
      'purpose': purpose,
      'rotationPeriod': rotationPeriod,
      'versionTemplate': versionTemplate.toMap(),
    };
  }

  factory GetCryptoKeyResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyResult(
      createTime: map['createTime'] as String,
      cryptoKeyBackend: map['cryptoKeyBackend'] as String,
      destroyScheduledDuration: map['destroyScheduledDuration'] as String,
      importOnly: map['importOnly'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      nextRotationTime: map['nextRotationTime'] as String,
      primary: CryptoKeyVersionResponse.fromMap((map['primary']! as Map).cast<String, dynamic>()),
      purpose: map['purpose'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
      versionTemplate: CryptoKeyVersionTemplateResponse.fromMap((map['versionTemplate']! as Map).cast<String, dynamic>()),
    );
  }
}
