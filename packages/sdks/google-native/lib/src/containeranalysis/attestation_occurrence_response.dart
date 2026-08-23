// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_response.dart';
import 'signature_response.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.
class AttestationOccurrenceResponse {
  /// One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
  final pulumi.Input<List<JwtResponse>> jwts;
  /// The serialized payload that is verified by one or more `signatures`.
  final pulumi.Input<String> serializedPayload;
  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final pulumi.Input<List<SignatureResponse>> signatures;

  /// Creates a new [AttestationOccurrenceResponse].
  /// [jwts] One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
  /// [serializedPayload] The serialized payload that is verified by one or more `signatures`.
  /// [signatures] One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  const AttestationOccurrenceResponse({
    required this.jwts,
    required this.serializedPayload,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwts': pulumi.Input.mapInputValue<List<JwtResponse>, List<Map<String, dynamic>>>(jwts, (value) => pulumi.Input.encodeList<JwtResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serializedPayload': serializedPayload,
      'signatures': pulumi.Input.mapInputValue<List<SignatureResponse>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<SignatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttestationOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationOccurrenceResponse(
      jwts: pulumi.Input.fromValue(pulumi.Input.decodeList<JwtResponse>(map['jwts']!, (value) => JwtResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serializedPayload: pulumi.Input.fromValue(map['serializedPayload'] as String),
      signatures: pulumi.Input.fromValue(pulumi.Input.decodeList<SignatureResponse>(map['signatures']!, (value) => SignatureResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
