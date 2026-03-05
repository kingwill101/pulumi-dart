// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_binaryauthorization_v1beta1.dart';

/// An attestor public key that will be used to verify attestations signed by this attestor.
class AttestorPublicKeyBinaryauthorizationV1beta1 {
  /// ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  final pulumi.Input<String>? asciiArmoredPgpPublicKey;
  /// Optional. A descriptive comment. This field may be updated.
  final pulumi.Input<String>? comment;
  /// The ID of this public key. Signatures verified by BinAuthz must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on `public_key` cases below for details.
  final pulumi.Input<String>? id;
  /// A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  final pulumi.Input<PkixPublicKeyBinaryauthorizationV1beta1>? pkixPublicKey;

  /// Creates a new [AttestorPublicKeyBinaryauthorizationV1beta1].
  /// [asciiArmoredPgpPublicKey] ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  /// [comment] Optional. A descriptive comment. This field may be updated.
  /// [id] The ID of this public key. Signatures verified by BinAuthz must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on `public_key` cases below for details.
  /// [pkixPublicKey] A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  AttestorPublicKeyBinaryauthorizationV1beta1({
    this.asciiArmoredPgpPublicKey,
    this.comment,
    this.id,
    this.pkixPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asciiArmoredPgpPublicKey': ?asciiArmoredPgpPublicKey,
      'comment': ?comment,
      'id': ?id,
      'pkixPublicKey': ?pulumi.Input.mapOptionalInputValue<PkixPublicKeyBinaryauthorizationV1beta1, Map<String, dynamic>>(pkixPublicKey, (value) => value.toMap()),
    };
  }

  factory AttestorPublicKeyBinaryauthorizationV1beta1.fromMap(Map<String, dynamic> map) {
    return AttestorPublicKeyBinaryauthorizationV1beta1(
      asciiArmoredPgpPublicKey: (() { final guardedValue = map['asciiArmoredPgpPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pkixPublicKey: (() { final guardedValue = map['pkixPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PkixPublicKeyBinaryauthorizationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

