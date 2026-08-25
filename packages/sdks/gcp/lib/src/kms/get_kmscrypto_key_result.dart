// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmscrypto_key_key_access_justifications_policy.dart';
import 'get_kmscrypto_key_primary.dart';
import 'get_kmscrypto_key_version_template.dart';

/// Result data returned by getKMSCryptoKey.
class GetKMSCryptoKeyResult {
  final String? cryptoKeyBackend;
  final String? deletionPolicy;
  final String? destroyScheduledDuration;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? importOnly;
  final List<GetKMSCryptoKeyKeyAccessJustificationsPolicy>? keyAccessJustificationsPolicies;
  final String? keyRing;
  final Map<String, String>? labels;
  final String? name;
  final List<GetKMSCryptoKeyPrimary>? primaries;
  final Map<String, String>? pulumiLabels;
  /// Defines the cryptographic capabilities of the key.
  final String? purpose;
  /// Every time this period passes, generate a new CryptoKeyVersion and set it as
  /// the primary. The first rotation will take place after the specified period. The rotation period has the format
  /// of a decimal number with up to 9 fractional digits, followed by the letter s (seconds).
  final String? rotationPeriod;
  final bool? skipInitialVersionCreation;
  final List<GetKMSCryptoKeyVersionTemplate>? versionTemplates;

  /// Creates a new [GetKMSCryptoKeyResult].
  /// [cryptoKeyBackend] Optional.
  /// [deletionPolicy] Optional.
  /// [destroyScheduledDuration] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importOnly] Optional.
  /// [keyAccessJustificationsPolicies] Optional.
  /// [keyRing] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [primaries] Optional.
  /// [pulumiLabels] Optional.
  /// [purpose] Defines the cryptographic capabilities of the key.
  /// [rotationPeriod] Every time this period passes, generate a new CryptoKeyVersion and set it as
  /// [skipInitialVersionCreation] Optional.
  /// [versionTemplates] Optional.
  const GetKMSCryptoKeyResult({
    this.cryptoKeyBackend,
    this.deletionPolicy,
    this.destroyScheduledDuration,
    this.effectiveLabels,
    this.id,
    this.importOnly,
    this.keyAccessJustificationsPolicies,
    this.keyRing,
    this.labels,
    this.name,
    this.primaries,
    this.pulumiLabels,
    this.purpose,
    this.rotationPeriod,
    this.skipInitialVersionCreation,
    this.versionTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyBackend': ?cryptoKeyBackend,
      'deletionPolicy': ?deletionPolicy,
      'destroyScheduledDuration': ?destroyScheduledDuration,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'importOnly': ?importOnly,
      'keyAccessJustificationsPolicies': ?(() { final guardedValue = keyAccessJustificationsPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKMSCryptoKeyKeyAccessJustificationsPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyRing': ?keyRing,
      'labels': ?labels,
      'name': ?name,
      'primaries': ?(() { final guardedValue = primaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKMSCryptoKeyPrimary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'purpose': ?purpose,
      'rotationPeriod': ?rotationPeriod,
      'skipInitialVersionCreation': ?skipInitialVersionCreation,
      'versionTemplates': ?(() { final guardedValue = versionTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKMSCryptoKeyVersionTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetKMSCryptoKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyResult(
      cryptoKeyBackend: (() { final guardedValue = map['cryptoKeyBackend']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destroyScheduledDuration: (() { final guardedValue = map['destroyScheduledDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importOnly: (() { final guardedValue = map['importOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyAccessJustificationsPolicies: (() { final guardedValue = map['keyAccessJustificationsPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKMSCryptoKeyKeyAccessJustificationsPolicy>(guardedValue, (value) => GetKMSCryptoKeyKeyAccessJustificationsPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyRing: (() { final guardedValue = map['keyRing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaries: (() { final guardedValue = map['primaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKMSCryptoKeyPrimary>(guardedValue, (value) => GetKMSCryptoKeyPrimary.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rotationPeriod: (() { final guardedValue = map['rotationPeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skipInitialVersionCreation: (() { final guardedValue = map['skipInitialVersionCreation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versionTemplates: (() { final guardedValue = map['versionTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKMSCryptoKeyVersionTemplate>(guardedValue, (value) => GetKMSCryptoKeyVersionTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
