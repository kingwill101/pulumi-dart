// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKeyResponseBinaryauthorizationV1beta1 {
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final pulumi.Input<String> publicKeyPem;
  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final pulumi.Input<String> signatureAlgorithm;

  /// Creates a new [PkixPublicKeyResponseBinaryauthorizationV1beta1].
  /// [publicKeyPem] A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  /// [signatureAlgorithm] The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  const PkixPublicKeyResponseBinaryauthorizationV1beta1({
    required this.publicKeyPem,
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': publicKeyPem,
      'signatureAlgorithm': signatureAlgorithm,
    };
  }

  factory PkixPublicKeyResponseBinaryauthorizationV1beta1.fromMap(Map<String, dynamic> map) {
    return PkixPublicKeyResponseBinaryauthorizationV1beta1(
      publicKeyPem: pulumi.Input.fromValue(map['publicKeyPem'] as String),
      signatureAlgorithm: pulumi.Input.fromValue(map['signatureAlgorithm'] as String),
    );
  }
}
