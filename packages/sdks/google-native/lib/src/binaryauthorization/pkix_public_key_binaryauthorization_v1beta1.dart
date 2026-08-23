// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_signature_algorithm_binaryauthorization_v1beta1.dart';

/// A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKeyBinaryauthorizationV1beta1 {
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final pulumi.Input<String>? publicKeyPem;
  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final pulumi.Input<PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1>? signatureAlgorithm;

  /// Creates a new [PkixPublicKeyBinaryauthorizationV1beta1].
  /// [publicKeyPem] A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  /// [signatureAlgorithm] The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  const PkixPublicKeyBinaryauthorizationV1beta1({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': ?publicKeyPem,
      'signatureAlgorithm': ?pulumi.Input.mapOptionalInputValue<PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1, String>(signatureAlgorithm, (value) => value.wireValue),
    };
  }

  factory PkixPublicKeyBinaryauthorizationV1beta1.fromMap(Map<String, dynamic> map) {
    return PkixPublicKeyBinaryauthorizationV1beta1(
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureAlgorithm: (() { final guardedValue = map['signatureAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
