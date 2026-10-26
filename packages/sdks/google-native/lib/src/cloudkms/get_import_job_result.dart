// ignore_for_file: unused_element, unnecessary_cast

import 'key_operation_attestation_response.dart';
import 'wrapping_public_key_response.dart';

/// Result data returned by getImportJob.
class GetImportJobResult {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
  final KeyOperationAttestationResponse? attestation;
  /// The time at which this ImportJob was created.
  final String? createTime;
  /// The time this ImportJob expired. Only present if state is EXPIRED.
  final String? expireEventTime;
  /// The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
  final String? expireTime;
  /// The time this ImportJob's key material was generated.
  final String? generateTime;
  /// Immutable. The wrapping method to be used for incoming key material.
  final String? importMethod;
  /// The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.
  final String? name;
  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  final String? protectionLevel;
  /// The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
  final WrappingPublicKeyResponse? publicKey;
  /// The current state of the ImportJob, indicating if it can be used.
  final String? state;

  /// Creates a new [GetImportJobResult].
  /// [attestation] Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
  /// [createTime] The time at which this ImportJob was created.
  /// [expireEventTime] The time this ImportJob expired. Only present if state is EXPIRED.
  /// [expireTime] The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
  /// [generateTime] The time this ImportJob's key material was generated.
  /// [importMethod] Immutable. The wrapping method to be used for incoming key material.
  /// [name] The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.
  /// [protectionLevel] Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  /// [publicKey] The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
  /// [state] The current state of the ImportJob, indicating if it can be used.
  const GetImportJobResult({
    this.attestation,
    this.createTime,
    this.expireEventTime,
    this.expireTime,
    this.generateTime,
    this.importMethod,
    this.name,
    this.protectionLevel,
    this.publicKey,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?attestation?.toMap(),
      'createTime': ?createTime,
      'expireEventTime': ?expireEventTime,
      'expireTime': ?expireTime,
      'generateTime': ?generateTime,
      'importMethod': ?importMethod,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'publicKey': ?publicKey?.toMap(),
      'state': ?state,
    };
  }

  factory GetImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetImportJobResult(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return KeyOperationAttestationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireEventTime: (() { final guardedValue = map['expireEventTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generateTime: (() { final guardedValue = map['generateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importMethod: (() { final guardedValue = map['importMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return WrappingPublicKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
