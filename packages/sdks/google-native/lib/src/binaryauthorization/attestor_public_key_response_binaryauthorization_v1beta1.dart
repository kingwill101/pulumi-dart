// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_response_binaryauthorization_v1beta1.dart';

/// An attestor public key that will be used to verify attestations signed by this attestor.
class AttestorPublicKeyResponseBinaryauthorizationV1beta1 {
  /// ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  final pulumi.Input<String> asciiArmoredPgpPublicKey;
  /// Optional. A descriptive comment. This field may be updated.
  final pulumi.Input<String> comment;
  /// A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  final pulumi.Input<PkixPublicKeyResponseBinaryauthorizationV1beta1> pkixPublicKey;

  /// Creates a new [AttestorPublicKeyResponseBinaryauthorizationV1beta1].
  /// [asciiArmoredPgpPublicKey] ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  /// [comment] Optional. A descriptive comment. This field may be updated.
  /// [pkixPublicKey] A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  const AttestorPublicKeyResponseBinaryauthorizationV1beta1({
    required this.asciiArmoredPgpPublicKey,
    required this.comment,
    required this.pkixPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asciiArmoredPgpPublicKey': asciiArmoredPgpPublicKey,
      'comment': comment,
      'pkixPublicKey': pulumi.Input.mapInputValue<PkixPublicKeyResponseBinaryauthorizationV1beta1, Map<String, dynamic>>(pkixPublicKey, (value) => value.toMap()),
    };
  }

  factory AttestorPublicKeyResponseBinaryauthorizationV1beta1.fromMap(Map<String, dynamic> map) {
    return AttestorPublicKeyResponseBinaryauthorizationV1beta1(
      asciiArmoredPgpPublicKey: pulumi.Input.fromValue(map['asciiArmoredPgpPublicKey'] as String),
      comment: pulumi.Input.fromValue(map['comment'] as String),
      pkixPublicKey: pulumi.Input.fromValue(PkixPublicKeyResponseBinaryauthorizationV1beta1.fromMap((map['pkixPublicKey']! as Map).cast<String, dynamic>())),
    );
  }
}

