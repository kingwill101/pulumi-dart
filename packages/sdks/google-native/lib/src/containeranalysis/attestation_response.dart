// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pgp_signed_attestation_response.dart';

/// Occurrence that represents a single "attestation". The authenticity of an Attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the AttestationAuthority to which this Attestation is attached is primarily useful for look-up (how to find this Attestation if you already know the Authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationResponse {
  final pulumi.Input<PgpSignedAttestationResponse> pgpSignedAttestation;

  /// Creates a new [AttestationResponse].
  /// [pgpSignedAttestation] Required.
  AttestationResponse({
    required this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pgpSignedAttestation': pulumi.Input.mapInputValue<PgpSignedAttestationResponse, Map<String, dynamic>>(pgpSignedAttestation, (value) => value.toMap()),
    };
  }

  factory AttestationResponse.fromMap(Map<String, dynamic> map) {
    return AttestationResponse(
      pgpSignedAttestation: (PgpSignedAttestationResponse.fromMap((map['pgpSignedAttestation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

