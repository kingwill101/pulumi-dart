// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_signed_attestation.dart';
import 'pgp_signed_attestation_containeranalysis_v1beta1.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationContaineranalysisV1beta1 {
  final pulumi.Input<GenericSignedAttestation>? genericSignedAttestation;
  /// A PGP signed attestation.
  final pulumi.Input<PgpSignedAttestationContaineranalysisV1beta1>? pgpSignedAttestation;

  /// Creates a new [AttestationContaineranalysisV1beta1].
  /// [genericSignedAttestation] Optional.
  /// [pgpSignedAttestation] A PGP signed attestation.
  const AttestationContaineranalysisV1beta1({
    this.genericSignedAttestation,
    this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericSignedAttestation': ?pulumi.Input.mapOptionalInputValue<GenericSignedAttestation, Map<String, dynamic>>(genericSignedAttestation, (value) => value.toMap()),
      'pgpSignedAttestation': ?pulumi.Input.mapOptionalInputValue<PgpSignedAttestationContaineranalysisV1beta1, Map<String, dynamic>>(pgpSignedAttestation, (value) => value.toMap()),
    };
  }

  factory AttestationContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AttestationContaineranalysisV1beta1(
      genericSignedAttestation: (() { final guardedValue = map['genericSignedAttestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenericSignedAttestation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pgpSignedAttestation: (() { final guardedValue = map['pgpSignedAttestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PgpSignedAttestationContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

