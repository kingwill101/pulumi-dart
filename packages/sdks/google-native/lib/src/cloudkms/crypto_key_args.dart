// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_purpose.dart';
import 'crypto_key_version_template.dart';

/// {@template pulumi_cloudkms_v1_crypto_key_args_doc}
/// The set of arguments for CryptoKey.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_crypto_key_args_doc}
class CryptoKeyArgs {
  /// Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  final pulumi.Input<String>? cryptoKeyBackend;
  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String>? cryptoKeyId;
  /// Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  final pulumi.Input<String>? destroyScheduledDuration;
  /// Immutable. Whether this key may contain imported versions only.
  final pulumi.Input<bool>? importOnly;
  final pulumi.Input<String> keyRingId;
  /// Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final pulumi.Input<String>? nextRotationTime;
  final pulumi.Input<String>? project;
  /// Immutable. The immutable purpose of this CryptoKey.
  final pulumi.Input<CryptoKeyPurpose>? purpose;
  /// next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final pulumi.Input<String>? rotationPeriod;
  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
  final pulumi.Input<bool>? skipInitialVersionCreation;
  /// A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  final pulumi.Input<CryptoKeyVersionTemplate>? versionTemplate;

  /// Creates a new [CryptoKeyArgs].
  /// [cryptoKeyBackend] Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  /// [cryptoKeyId] Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [destroyScheduledDuration] Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  /// [importOnly] Immutable. Whether this key may contain imported versions only.
  /// [keyRingId] Required.
  /// [labels] Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  /// [location] Optional.
  /// [nextRotationTime] At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  /// [project] Optional.
  /// [purpose] Immutable. The immutable purpose of this CryptoKey.
  /// [rotationPeriod] next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  /// [skipInitialVersionCreation] If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
  /// [versionTemplate] A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  CryptoKeyArgs({
    this.cryptoKeyBackend,
    this.cryptoKeyId,
    this.destroyScheduledDuration,
    this.importOnly,
    required this.keyRingId,
    this.labels,
    this.location,
    this.nextRotationTime,
    this.project,
    this.purpose,
    this.rotationPeriod,
    this.skipInitialVersionCreation,
    this.versionTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyBackend': ?cryptoKeyBackend,
      'cryptoKeyId': ?cryptoKeyId,
      'destroyScheduledDuration': ?destroyScheduledDuration,
      'importOnly': ?importOnly,
      'keyRingId': keyRingId,
      'labels': ?labels,
      'location': ?location,
      'nextRotationTime': ?nextRotationTime,
      'project': ?project,
      'purpose': ?pulumi.Input.mapOptionalInputValue<CryptoKeyPurpose, String>(purpose, (value) => value.value),
      'rotationPeriod': ?rotationPeriod,
      'skipInitialVersionCreation': ?skipInitialVersionCreation,
      'versionTemplate': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionTemplate, Map<String, dynamic>>(versionTemplate, (value) => value.toMap()),
    };
  }

  factory CryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyArgs(
      cryptoKeyBackend: map['cryptoKeyBackend'] == null ? null : (map['cryptoKeyBackend'] as String).input(),
      cryptoKeyId: map['cryptoKeyId'] == null ? null : (map['cryptoKeyId'] as String).input(),
      destroyScheduledDuration: map['destroyScheduledDuration'] == null ? null : (map['destroyScheduledDuration'] as String).input(),
      importOnly: map['importOnly'] == null ? null : (map['importOnly'] as bool).input(),
      keyRingId: (map['keyRingId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      nextRotationTime: map['nextRotationTime'] == null ? null : (map['nextRotationTime'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      purpose: map['purpose'] == null ? null : (CryptoKeyPurpose.fromValue(map['purpose'] as String)).input(),
      rotationPeriod: map['rotationPeriod'] == null ? null : (map['rotationPeriod'] as String).input(),
      skipInitialVersionCreation: map['skipInitialVersionCreation'] == null ? null : (map['skipInitialVersionCreation'] as bool).input(),
      versionTemplate: map['versionTemplate'] == null ? null : (CryptoKeyVersionTemplate.fromMap((map['versionTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

