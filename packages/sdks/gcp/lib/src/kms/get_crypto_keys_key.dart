// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_keys_key_key_access_justifications_policy.dart';
import 'get_crypto_keys_key_primary.dart';
import 'get_crypto_keys_key_version_template.dart';

class GetCryptoKeysKey {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  final pulumi.Input<String> cryptoKeyBackend;
  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  final pulumi.Input<String> destroyScheduledDuration;
  final pulumi.Input<Map<String, String>> effectiveLabels;
  final pulumi.Input<String> id;
  /// Whether this key may contain imported versions only.
  final pulumi.Input<bool> importOnly;
  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  final pulumi.Input<List<GetCryptoKeysKeyKeyAccessJustificationsPolicy>> keyAccessJustificationsPolicies;
  /// The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  final pulumi.Input<String>? keyRing;
  /// Labels with user-defined metadata to apply to this resource.
  ///
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// The resource name for the CryptoKey.
  final pulumi.Input<String>? name;
  /// A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be unset.
  final pulumi.Input<List<GetCryptoKeysKeyPrimary>> primaries;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  final pulumi.Input<String> purpose;
  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter 's' (seconds). It must be greater than a day (ie, 86400).
  final pulumi.Input<String> rotationPeriod;
  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the 'google_kms_crypto_key_version' resource to create a new CryptoKeyVersion
  /// or 'google_kms_key_ring_import_job' resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  final pulumi.Input<bool> skipInitialVersionCreation;
  /// A template describing settings for new crypto key versions.
  final pulumi.Input<List<GetCryptoKeysKeyVersionTemplate>> versionTemplates;

  /// Creates a new [GetCryptoKeysKey].
  /// [cryptoKeyBackend] The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// [destroyScheduledDuration] The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// [effectiveLabels] Required.
  /// [id] Required.
  /// [importOnly] Whether this key may contain imported versions only.
  /// [keyAccessJustificationsPolicies] The policy used for Key Access Justifications Policy Enforcement. If this
  /// [keyRing] The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  /// [labels] Labels with user-defined metadata to apply to this resource.
  /// [name] The resource name for the CryptoKey.
  /// [primaries] A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purpose] The immutable purpose of this CryptoKey. See the
  /// [rotationPeriod] Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// [skipInitialVersionCreation] If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// [versionTemplates] A template describing settings for new crypto key versions.
  GetCryptoKeysKey({
    required this.cryptoKeyBackend,
    required this.destroyScheduledDuration,
    required this.effectiveLabels,
    required this.id,
    required this.importOnly,
    required this.keyAccessJustificationsPolicies,
    this.keyRing,
    required this.labels,
    this.name,
    required this.primaries,
    required this.pulumiLabels,
    required this.purpose,
    required this.rotationPeriod,
    required this.skipInitialVersionCreation,
    required this.versionTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyBackend': cryptoKeyBackend,
      'destroyScheduledDuration': destroyScheduledDuration,
      'effectiveLabels': effectiveLabels,
      'id': id,
      'importOnly': importOnly,
      'keyAccessJustificationsPolicies': pulumi.Input.mapInputValue<List<GetCryptoKeysKeyKeyAccessJustificationsPolicy>, List<Map<String, dynamic>>>(keyAccessJustificationsPolicies, (value) => pulumi.Input.encodeList<GetCryptoKeysKeyKeyAccessJustificationsPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRing': ?keyRing,
      'labels': labels,
      'name': ?name,
      'primaries': pulumi.Input.mapInputValue<List<GetCryptoKeysKeyPrimary>, List<Map<String, dynamic>>>(primaries, (value) => pulumi.Input.encodeList<GetCryptoKeysKeyPrimary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': pulumiLabels,
      'purpose': purpose,
      'rotationPeriod': rotationPeriod,
      'skipInitialVersionCreation': skipInitialVersionCreation,
      'versionTemplates': pulumi.Input.mapInputValue<List<GetCryptoKeysKeyVersionTemplate>, List<Map<String, dynamic>>>(versionTemplates, (value) => pulumi.Input.encodeList<GetCryptoKeysKeyVersionTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCryptoKeysKey.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKey(
      cryptoKeyBackend: pulumi.Input.fromValue(map['cryptoKeyBackend'] as String),
      destroyScheduledDuration: pulumi.Input.fromValue(map['destroyScheduledDuration'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      importOnly: pulumi.Input.fromValue(map['importOnly'] as bool),
      keyAccessJustificationsPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCryptoKeysKeyKeyAccessJustificationsPolicy>(map['keyAccessJustificationsPolicies']!, (value) => GetCryptoKeysKeyKeyAccessJustificationsPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      keyRing: (() { final guardedValue = map['keyRing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCryptoKeysKeyPrimary>(map['primaries']!, (value) => GetCryptoKeysKeyPrimary.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      rotationPeriod: pulumi.Input.fromValue(map['rotationPeriod'] as String),
      skipInitialVersionCreation: pulumi.Input.fromValue(map['skipInitialVersionCreation'] as bool),
      versionTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCryptoKeysKeyVersionTemplate>(map['versionTemplates']!, (value) => GetCryptoKeysKeyVersionTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

