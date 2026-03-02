// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_set.dart';

/// An attestation authenticator that will be used to verify attestations. Typically this is just a set of public keys. Conceptually, an authenticator can be treated as always returning either "authenticated" or "not authenticated" when presented with a signed attestation (almost always assumed to be a [DSSE](https://github.com/secure-systems-lab/dsse) attestation). The details of how an authenticator makes this decision are specific to the type of 'authenticator' that this message wraps.
class AttestationAuthenticator {
  /// Optional. A user-provided name for this `AttestationAuthenticator`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final pulumi.Input<String>? displayName;
  /// Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set validates the attestation signature, then the signature is considered authenticated (i.e. any one key is sufficient to authenticate).
  final pulumi.Input<PkixPublicKeySet>? pkixPublicKeySet;

  /// Creates a new [AttestationAuthenticator].
  /// [displayName] Optional. A user-provided name for this `AttestationAuthenticator`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [pkixPublicKeySet] Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set validates the attestation signature, then the signature is considered authenticated (i.e. any one key is sufficient to authenticate).
  AttestationAuthenticator({
    this.displayName,
    this.pkixPublicKeySet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'pkixPublicKeySet': ?pulumi.Input.mapOptionalInputValue<PkixPublicKeySet, Map<String, dynamic>>(pkixPublicKeySet, (value) => value.toMap()),
    };
  }

  factory AttestationAuthenticator.fromMap(Map<String, dynamic> map) {
    return AttestationAuthenticator(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      pkixPublicKeySet: map['pkixPublicKeySet'] == null ? null : (PkixPublicKeySet.fromMap((map['pkixPublicKeySet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

