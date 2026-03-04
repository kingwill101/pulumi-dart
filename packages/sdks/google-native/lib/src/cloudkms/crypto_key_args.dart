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
      'purpose': ?pulumi.Input.mapOptionalInputValue<CryptoKeyPurpose, String>(
        purpose,
        (value) => value.wireValue,
      ),
      'rotationPeriod': ?rotationPeriod,
      'skipInitialVersionCreation': ?skipInitialVersionCreation,
      'versionTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            CryptoKeyVersionTemplate,
            Map<String, dynamic>
          >(versionTemplate, (value) => value.toMap()),
    };
  }

  factory CryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyArgs(
      cryptoKeyBackend: (() {
        final guardedValue = map['cryptoKeyBackend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cryptoKeyId: (() {
        final guardedValue = map['cryptoKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destroyScheduledDuration: (() {
        final guardedValue = map['destroyScheduledDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importOnly: (() {
        final guardedValue = map['importOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextRotationTime: (() {
        final guardedValue = map['nextRotationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      purpose: (() {
        final guardedValue = map['purpose'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CryptoKeyPurpose.fromValue(guardedValue as String),
        );
      })(),
      rotationPeriod: (() {
        final guardedValue = map['rotationPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipInitialVersionCreation: (() {
        final guardedValue = map['skipInitialVersionCreation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      versionTemplate: (() {
        final guardedValue = map['versionTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CryptoKeyVersionTemplate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
