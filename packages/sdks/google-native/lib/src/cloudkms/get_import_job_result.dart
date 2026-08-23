// ignore_for_file: unused_element, unnecessary_cast

import 'key_operation_attestation_response.dart';
import 'wrapping_public_key_response.dart';

/// Result data returned by getImportJob.
class GetImportJobResult {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
  final KeyOperationAttestationResponse attestation;
  /// The time at which this ImportJob was created.
  final String createTime;
  /// The time this ImportJob expired. Only present if state is EXPIRED.
  final String expireEventTime;
  /// The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
  final String expireTime;
  /// The time this ImportJob's key material was generated.
  final String generateTime;
  /// Immutable. The wrapping method to be used for incoming key material.
  final String importMethod;
  /// The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.
  final String name;
  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  final String protectionLevel;
  /// The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
  final WrappingPublicKeyResponse publicKey;
  /// The current state of the ImportJob, indicating if it can be used.
  final String state;

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
    required this.attestation,
    required this.createTime,
    required this.expireEventTime,
    required this.expireTime,
    required this.generateTime,
    required this.importMethod,
    required this.name,
    required this.protectionLevel,
    required this.publicKey,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': attestation.toMap(),
      'createTime': createTime,
      'expireEventTime': expireEventTime,
      'expireTime': expireTime,
      'generateTime': generateTime,
      'importMethod': importMethod,
      'name': name,
      'protectionLevel': protectionLevel,
      'publicKey': publicKey.toMap(),
      'state': state,
    };
  }

  factory GetImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetImportJobResult(
      attestation: KeyOperationAttestationResponse.fromMap((map['attestation']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      expireEventTime: map['expireEventTime'] as String,
      expireTime: map['expireTime'] as String,
      generateTime: map['generateTime'] as String,
      importMethod: map['importMethod'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKey: WrappingPublicKeyResponse.fromMap((map['publicKey']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}
