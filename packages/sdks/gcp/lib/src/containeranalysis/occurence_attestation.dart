// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'occurence_attestation_signature.dart';

class OccurenceAttestation {
  /// The serialized payload that is verified by one or
  /// more signatures. A base64-encoded string.
  final pulumi.Input<String> serializedPayload;
  /// One or more signatures over serializedPayload.
  /// Verifier implementations should consider this attestation
  /// message verified if at least one signature verifies
  /// serializedPayload. See Signature in common.proto for more
  /// details on signature structure and verification.
  /// Structure is documented below.
  final pulumi.Input<List<OccurenceAttestationSignature>> signatures;

  /// Creates a new [OccurenceAttestation].
  /// [serializedPayload] The serialized payload that is verified by one or
  /// [signatures] One or more signatures over serializedPayload.
  const OccurenceAttestation({
    required this.serializedPayload,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serializedPayload': serializedPayload,
      'signatures': pulumi.Input.mapInputValue<List<OccurenceAttestationSignature>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<OccurenceAttestationSignature, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OccurenceAttestation.fromMap(Map<String, dynamic> map) {
    return OccurenceAttestation(
      serializedPayload: pulumi.Input.fromValue(map['serializedPayload'] as String),
      signatures: pulumi.Input.fromValue(pulumi.Input.decodeList<OccurenceAttestationSignature>(map['signatures']!, (value) => OccurenceAttestationSignature.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
