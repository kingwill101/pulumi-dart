// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_signature_algorithm.dart';

/// A public key in the PkixPublicKey [format](https://tools.ietf.org/html/rfc5280#section-4.1.2.7). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKey {
  /// Optional. The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. This may be explicitly provided by the caller, but it MUST be a valid RFC3986 URI. If `key_id` is left blank and this `PkixPublicKey` is not used in the context of a wrapper (see next paragraph), a default key ID will be computed based on the digest of the DER encoding of the public key. If this `PkixPublicKey` is used in the context of a wrapper that has its own notion of key ID (e.g. `AttestorPublicKey`), then this field can either: * Match that value exactly. * Or be left blank, in which case it behaves exactly as though it is equal to that wrapper value.
  final pulumi.Input<String>? keyId;
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final pulumi.Input<String>? publicKeyPem;
  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final pulumi.Input<PkixPublicKeySignatureAlgorithm>? signatureAlgorithm;

  /// Creates a new [PkixPublicKey].
  /// [keyId] Optional. The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. This may be explicitly provided by the caller, but it MUST be a valid RFC3986 URI. If `key_id` is left blank and this `PkixPublicKey` is not used in the context of a wrapper (see next paragraph), a default key ID will be computed based on the digest of the DER encoding of the public key. If this `PkixPublicKey` is used in the context of a wrapper that has its own notion of key ID (e.g. `AttestorPublicKey`), then this field can either: * Match that value exactly. * Or be left blank, in which case it behaves exactly as though it is equal to that wrapper value.
  /// [publicKeyPem] A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  /// [signatureAlgorithm] The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  const PkixPublicKey({
    this.keyId,
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'publicKeyPem': ?publicKeyPem,
      'signatureAlgorithm': ?pulumi.Input.mapOptionalInputValue<PkixPublicKeySignatureAlgorithm, String>(signatureAlgorithm, (value) => value.wireValue),
    };
  }

  factory PkixPublicKey.fromMap(Map<String, dynamic> map) {
    return PkixPublicKey(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureAlgorithm: (() { final guardedValue = map['signatureAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PkixPublicKeySignatureAlgorithm.fromValue(guardedValue as String)); })(),
    );
  }
}

