// ignore_for_file: unused_element, unnecessary_cast

import 'external_protection_level_options_response.dart';
import 'key_operation_attestation_response.dart';

/// Result data returned by getCryptoKeyVersion.
class GetCryptoKeyVersionResult {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String? algorithm;
  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  final KeyOperationAttestationResponse? attestation;
  /// The time at which this CryptoKeyVersion was created.
  final String? createTime;
  /// The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  final String? destroyEventTime;
  /// The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  final String? destroyTime;
  /// The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  final String? externalDestructionFailureReason;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  final ExternalProtectionLevelOptionsResponse? externalProtectionLevelOptions;
  /// The time this CryptoKeyVersion's key material was generated.
  final String? generateTime;
  /// The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  final String? generationFailureReason;
  /// The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  final String? importFailureReason;
  /// The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  final String? importJob;
  /// The time at which this CryptoKeyVersion's key material was most recently imported.
  final String? importTime;
  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  final String? name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  final String? protectionLevel;
  /// Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  final bool? reimportEligible;
  /// The current state of the CryptoKeyVersion.
  final String? state;

  /// Creates a new [GetCryptoKeyVersionResult].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [attestation] Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  /// [createTime] The time at which this CryptoKeyVersion was created.
  /// [destroyEventTime] The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  /// [destroyTime] The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  /// [externalDestructionFailureReason] The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [generateTime] The time this CryptoKeyVersion's key material was generated.
  /// [generationFailureReason] The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  /// [importFailureReason] The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  /// [importJob] The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  /// [importTime] The time at which this CryptoKeyVersion's key material was most recently imported.
  /// [name] The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  /// [reimportEligible] Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  /// [state] The current state of the CryptoKeyVersion.
  const GetCryptoKeyVersionResult({
    this.algorithm,
    this.attestation,
    this.createTime,
    this.destroyEventTime,
    this.destroyTime,
    this.externalDestructionFailureReason,
    this.externalProtectionLevelOptions,
    this.generateTime,
    this.generationFailureReason,
    this.importFailureReason,
    this.importJob,
    this.importTime,
    this.name,
    this.protectionLevel,
    this.reimportEligible,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'attestation': ?attestation?.toMap(),
      'createTime': ?createTime,
      'destroyEventTime': ?destroyEventTime,
      'destroyTime': ?destroyTime,
      'externalDestructionFailureReason': ?externalDestructionFailureReason,
      'externalProtectionLevelOptions': ?externalProtectionLevelOptions?.toMap(),
      'generateTime': ?generateTime,
      'generationFailureReason': ?generationFailureReason,
      'importFailureReason': ?importFailureReason,
      'importJob': ?importJob,
      'importTime': ?importTime,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'reimportEligible': ?reimportEligible,
      'state': ?state,
    };
  }

  factory GetCryptoKeyVersionResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionResult(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return KeyOperationAttestationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destroyEventTime: (() { final guardedValue = map['destroyEventTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destroyTime: (() { final guardedValue = map['destroyTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalDestructionFailureReason: (() { final guardedValue = map['externalDestructionFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalProtectionLevelOptions: (() { final guardedValue = map['externalProtectionLevelOptions']; if (guardedValue == null) return null; return ExternalProtectionLevelOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generateTime: (() { final guardedValue = map['generateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generationFailureReason: (() { final guardedValue = map['generationFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importFailureReason: (() { final guardedValue = map['importFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importJob: (() { final guardedValue = map['importJob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importTime: (() { final guardedValue = map['importTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reimportEligible: (() { final guardedValue = map['reimportEligible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
