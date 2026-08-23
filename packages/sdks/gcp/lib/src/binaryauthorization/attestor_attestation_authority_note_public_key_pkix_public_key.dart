// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttestorAttestationAuthorityNotePublicKeyPkixPublicKey {
  /// A PEM-encoded public key, as described in
  /// `https://tools.ietf.org/html/rfc7468#section-13`
  final pulumi.Input<String>? publicKeyPem;
  /// The signature algorithm used to verify a message against
  /// a signature using this key. These signature algorithm must
  /// match the structure and any object identifiers encoded in
  /// publicKeyPem (i.e. this algorithm must match that of the
  /// public key).
  final pulumi.Input<String>? signatureAlgorithm;

  /// Creates a new [AttestorAttestationAuthorityNotePublicKeyPkixPublicKey].
  /// [publicKeyPem] A PEM-encoded public key, as described in
  /// [signatureAlgorithm] The signature algorithm used to verify a message against
  const AttestorAttestationAuthorityNotePublicKeyPkixPublicKey({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': ?publicKeyPem,
      'signatureAlgorithm': ?signatureAlgorithm,
    };
  }

  factory AttestorAttestationAuthorityNotePublicKeyPkixPublicKey.fromMap(Map<String, dynamic> map) {
    return AttestorAttestationAuthorityNotePublicKeyPkixPublicKey(
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureAlgorithm: (() { final guardedValue = map['signatureAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
