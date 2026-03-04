// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_signed_attestation_response.dart';
import 'pgp_signed_attestation_response_containeranalysis_v1beta1.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationResponseContaineranalysisV1beta1 {
  final pulumi.Input<GenericSignedAttestationResponse> genericSignedAttestation;

  /// A PGP signed attestation.
  final pulumi.Input<PgpSignedAttestationResponseContaineranalysisV1beta1>
  pgpSignedAttestation;

  /// Creates a new [AttestationResponseContaineranalysisV1beta1].
  /// [genericSignedAttestation] Required.
  /// [pgpSignedAttestation] A PGP signed attestation.
  AttestationResponseContaineranalysisV1beta1({
    required this.genericSignedAttestation,
    required this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericSignedAttestation':
          pulumi.Input.mapInputValue<
            GenericSignedAttestationResponse,
            Map<String, dynamic>
          >(genericSignedAttestation, (value) => value.toMap()),
      'pgpSignedAttestation':
          pulumi.Input.mapInputValue<
            PgpSignedAttestationResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(pgpSignedAttestation, (value) => value.toMap()),
    };
  }

  factory AttestationResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttestationResponseContaineranalysisV1beta1(
      genericSignedAttestation: pulumi.Input.fromValue(
        GenericSignedAttestationResponse.fromMap(
          (map['genericSignedAttestation']! as Map).cast<String, dynamic>(),
        ),
      ),
      pgpSignedAttestation: pulumi.Input.fromValue(
        PgpSignedAttestationResponseContaineranalysisV1beta1.fromMap(
          (map['pgpSignedAttestation']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
