// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_import_job_attestation.dart';
import 'key_ring_import_job_public_key.dart';

/// Input properties used for looking up and filtering KeyRingImportJob resources.
class KeyRingImportJobState {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time.
  /// Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only present if the chosen ImportMethod is one with a protection level of HSM.
  /// Structure is documented below.
  final pulumi.Input<List<KeyRingImportJobAttestation>>? attestations;
  /// The time at which this resource is scheduled for expiration and can no longer be used.
  /// This is in RFC3339 text format.
  final pulumi.Input<String>? expireTime;
  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  final pulumi.Input<String>? importJobId;
  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  final pulumi.Input<String>? importMethod;
  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  final pulumi.Input<String>? keyRing;
  /// The resource name for this ImportJob in the format projects/*/locations/*/keyRings/*/importJobs/*.
  final pulumi.Input<String>? name;
  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  final pulumi.Input<String>? protectionLevel;
  /// The public key with which to wrap key material prior to import. Only returned if state is `ACTIVE`.
  /// Structure is documented below.
  final pulumi.Input<List<KeyRingImportJobPublicKey>>? publicKeys;
  /// The current state of the ImportJob, indicating if it can be used.
  final pulumi.Input<String>? state;

  /// Creates a new [KeyRingImportJobState].
  /// [attestations] Statement that was generated and signed by the key creator (for example, an HSM) at key creation time.
  /// [expireTime] The time at which this resource is scheduled for expiration and can no longer be used.
  /// [importJobId] It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  /// [importMethod] The wrapping method to be used for incoming key material.
  /// [keyRing] The KeyRing that this import job belongs to.
  /// [name] The resource name for this ImportJob in the format projects/*/locations/*/keyRings/*/importJobs/*.
  /// [protectionLevel] The protection level of the ImportJob. This must match the protectionLevel of the
  /// [publicKeys] The public key with which to wrap key material prior to import. Only returned if state is `ACTIVE`.
  /// [state] The current state of the ImportJob, indicating if it can be used.
  KeyRingImportJobState({
    pulumi.Output<List<KeyRingImportJobAttestation>>? attestations,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? importJobId,
    pulumi.Output<String>? importMethod,
    pulumi.Output<String>? keyRing,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionLevel,
    pulumi.Output<List<KeyRingImportJobPublicKey>>? publicKeys,
    pulumi.Output<String>? state,
  }) :
      attestations = pulumi.Input.asOptionalInput<List<KeyRingImportJobAttestation>>(attestations),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      importJobId = pulumi.Input.asOptionalInput<String>(importJobId),
      importMethod = pulumi.Input.asOptionalInput<String>(importMethod),
      keyRing = pulumi.Input.asOptionalInput<String>(keyRing),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionLevel = pulumi.Input.asOptionalInput<String>(protectionLevel),
      publicKeys = pulumi.Input.asOptionalInput<List<KeyRingImportJobPublicKey>>(publicKeys),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestations': ?pulumi.Input.mapOptionalInputValue<List<KeyRingImportJobAttestation>, List<Map<String, dynamic>>>(attestations, (value) => pulumi.Input.encodeList<KeyRingImportJobAttestation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expireTime': ?expireTime,
      'importJobId': ?importJobId,
      'importMethod': ?importMethod,
      'keyRing': ?keyRing,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<KeyRingImportJobPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<KeyRingImportJobPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory KeyRingImportJobState.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobState(
      attestations: map['attestations'] == null ? null : pulumi.Output.create<List<KeyRingImportJobAttestation>>(pulumi.Input.decodeList<KeyRingImportJobAttestation>(map['attestations'], (value) => KeyRingImportJobAttestation.fromMap((value as Map).cast<String, dynamic>()))),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      importJobId: map['importJobId'] == null ? null : pulumi.Output.create<String>(map['importJobId'] as String),
      importMethod: map['importMethod'] == null ? null : pulumi.Output.create<String>(map['importMethod'] as String),
      keyRing: map['keyRing'] == null ? null : pulumi.Output.create<String>(map['keyRing'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionLevel: map['protectionLevel'] == null ? null : pulumi.Output.create<String>(map['protectionLevel'] as String),
      publicKeys: map['publicKeys'] == null ? null : pulumi.Output.create<List<KeyRingImportJobPublicKey>>(pulumi.Input.decodeList<KeyRingImportJobPublicKey>(map['publicKeys'], (value) => KeyRingImportJobPublicKey.fromMap((value as Map).cast<String, dynamic>()))),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

