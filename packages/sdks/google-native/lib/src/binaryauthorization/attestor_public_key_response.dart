// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_response.dart';

/// An attestor public key that will be used to verify attestations signed by this attestor.
class AttestorPublicKeyResponse {
  /// ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  final pulumi.Input<String> asciiArmoredPgpPublicKey;
  /// Optional. A descriptive comment. This field may be updated.
  final pulumi.Input<String> comment;
  /// A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  final pulumi.Input<PkixPublicKeyResponse> pkixPublicKey;

  /// Creates a new [AttestorPublicKeyResponse].
  /// [asciiArmoredPgpPublicKey] ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  /// [comment] Optional. A descriptive comment. This field may be updated.
  /// [pkixPublicKey] A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  AttestorPublicKeyResponse({
    required this.asciiArmoredPgpPublicKey,
    required this.comment,
    required this.pkixPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asciiArmoredPgpPublicKey': asciiArmoredPgpPublicKey,
      'comment': comment,
      'pkixPublicKey': pulumi.Input.mapInputValue<PkixPublicKeyResponse, Map<String, dynamic>>(pkixPublicKey, (value) => value.toMap()),
    };
  }

  factory AttestorPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return AttestorPublicKeyResponse(
      asciiArmoredPgpPublicKey: (map['asciiArmoredPgpPublicKey'] as String).input(),
      comment: (map['comment'] as String).input(),
      pkixPublicKey: (PkixPublicKeyResponse.fromMap((map['pkixPublicKey'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

