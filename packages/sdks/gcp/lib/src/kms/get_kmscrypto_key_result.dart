// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmscrypto_key_key_access_justifications_policy.dart';
import 'get_kmscrypto_key_primary.dart';
import 'get_kmscrypto_key_version_template.dart';

/// Result data returned by getKMSCryptoKey.
class GetKMSCryptoKeyResult {
  final String cryptoKeyBackend;
  final String deletionPolicy;
  final String destroyScheduledDuration;
  final Map<String, String> effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool importOnly;
  final List<GetKMSCryptoKeyKeyAccessJustificationsPolicy> keyAccessJustificationsPolicies;
  final String keyRing;
  final Map<String, String> labels;
  final String name;
  final List<GetKMSCryptoKeyPrimary> primaries;
  final Map<String, String> pulumiLabels;
  /// Defines the cryptographic capabilities of the key.
  final String purpose;
  /// Every time this period passes, generate a new CryptoKeyVersion and set it as
  /// the primary. The first rotation will take place after the specified period. The rotation period has the format
  /// of a decimal number with up to 9 fractional digits, followed by the letter s (seconds).
  final String rotationPeriod;
  final bool skipInitialVersionCreation;
  final List<GetKMSCryptoKeyVersionTemplate> versionTemplates;

  /// Creates a new [GetKMSCryptoKeyResult].
  /// [cryptoKeyBackend] Required.
  /// [deletionPolicy] Required.
  /// [destroyScheduledDuration] Required.
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importOnly] Required.
  /// [keyAccessJustificationsPolicies] Required.
  /// [keyRing] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [primaries] Required.
  /// [pulumiLabels] Required.
  /// [purpose] Defines the cryptographic capabilities of the key.
  /// [rotationPeriod] Every time this period passes, generate a new CryptoKeyVersion and set it as
  /// [skipInitialVersionCreation] Required.
  /// [versionTemplates] Required.
  const GetKMSCryptoKeyResult({
    required this.cryptoKeyBackend,
    required this.deletionPolicy,
    required this.destroyScheduledDuration,
    required this.effectiveLabels,
    required this.id,
    required this.importOnly,
    required this.keyAccessJustificationsPolicies,
    required this.keyRing,
    required this.labels,
    required this.name,
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
      'deletionPolicy': deletionPolicy,
      'destroyScheduledDuration': destroyScheduledDuration,
      'effectiveLabels': effectiveLabels,
      'id': id,
      'importOnly': importOnly,
      'keyAccessJustificationsPolicies': pulumi.Input.encodeList<GetKMSCryptoKeyKeyAccessJustificationsPolicy, Map<String, dynamic>>(keyAccessJustificationsPolicies, (value) => value.toMap()),
      'keyRing': keyRing,
      'labels': labels,
      'name': name,
      'primaries': pulumi.Input.encodeList<GetKMSCryptoKeyPrimary, Map<String, dynamic>>(primaries, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'purpose': purpose,
      'rotationPeriod': rotationPeriod,
      'skipInitialVersionCreation': skipInitialVersionCreation,
      'versionTemplates': pulumi.Input.encodeList<GetKMSCryptoKeyVersionTemplate, Map<String, dynamic>>(versionTemplates, (value) => value.toMap()),
    };
  }

  factory GetKMSCryptoKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyResult(
      cryptoKeyBackend: map['cryptoKeyBackend'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      destroyScheduledDuration: map['destroyScheduledDuration'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      importOnly: map['importOnly'] as bool,
      keyAccessJustificationsPolicies: pulumi.Input.decodeList<GetKMSCryptoKeyKeyAccessJustificationsPolicy>(map['keyAccessJustificationsPolicies']!, (value) => GetKMSCryptoKeyKeyAccessJustificationsPolicy.fromMap((value as Map).cast<String, dynamic>())),
      keyRing: map['keyRing'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      primaries: pulumi.Input.decodeList<GetKMSCryptoKeyPrimary>(map['primaries']!, (value) => GetKMSCryptoKeyPrimary.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      purpose: map['purpose'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
      skipInitialVersionCreation: map['skipInitialVersionCreation'] as bool,
      versionTemplates: pulumi.Input.decodeList<GetKMSCryptoKeyVersionTemplate>(map['versionTemplates']!, (value) => GetKMSCryptoKeyVersionTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
