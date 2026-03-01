// ignore_for_file: unused_element, unnecessary_cast

import 'pkix_public_key.dart';

/// An attestor public key that will be used to verify attestations signed by this attestor.
class AttestorPublicKey {
  /// ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  final String? asciiArmoredPgpPublicKey;
  /// Optional. A descriptive comment. This field may be updated.
  final String? comment;
  /// The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on `public_key` cases below for details.
  final String? id;
  /// A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  final PkixPublicKey? pkixPublicKey;

  /// Creates a new [AttestorPublicKey].
  /// [asciiArmoredPgpPublicKey] ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  /// [comment] Optional. A descriptive comment. This field may be updated.
  /// [id] The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on `public_key` cases below for details.
  /// [pkixPublicKey] A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  AttestorPublicKey({
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
      'pkixPublicKey': ?pkixPublicKey == null ? null : pkixPublicKey!.toMap(),
    };
  }

  factory AttestorPublicKey.fromMap(Map<String, dynamic> map) {
    return AttestorPublicKey(
      asciiArmoredPgpPublicKey: map['asciiArmoredPgpPublicKey'] == null ? null : map['asciiArmoredPgpPublicKey'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      pkixPublicKey: map['pkixPublicKey'] == null ? null : PkixPublicKey.fromMap((map['pkixPublicKey'] as Map).cast<String, dynamic>()),
    );
  }
}

