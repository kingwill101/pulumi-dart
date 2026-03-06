// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_signed_attestation_content_type.dart';
import 'signature_containeranalysis_v1beta1.dart';

/// An attestation wrapper that uses the Grafeas `Signature` message. This attestation must define the `serialized_payload` that the `signatures` verify and any metadata necessary to interpret that plaintext. The signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  final pulumi.Input<GenericSignedAttestationContentType>? contentType;
  /// The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  final pulumi.Input<String>? serializedPayload;
  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final pulumi.Input<List<SignatureContaineranalysisV1beta1>>? signatures;

  /// Creates a new [GenericSignedAttestation].
  /// [contentType] Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  /// [serializedPayload] The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  /// [signatures] One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  const GenericSignedAttestation({
    this.contentType,
    this.serializedPayload,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?pulumi.Input.mapOptionalInputValue<GenericSignedAttestationContentType, String>(contentType, (value) => value.wireValue),
      'serializedPayload': ?serializedPayload,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<SignatureContaineranalysisV1beta1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<SignatureContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GenericSignedAttestation.fromMap(Map<String, dynamic> map) {
    return GenericSignedAttestation(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenericSignedAttestationContentType.fromValue(guardedValue as String)); })(),
      serializedPayload: (() { final guardedValue = map['serializedPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SignatureContaineranalysisV1beta1>(guardedValue, (value) => SignatureContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

