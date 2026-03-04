// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_attestation_authority_note_public_key_pkix_public_key.dart';

class AttestorAttestationAuthorityNotePublicKey {
  /// ASCII-armored representation of a PGP public key, as the
  /// entire output by the command
  /// `gpg --export --armor foo@example.com` (either LF or CRLF
  /// line endings). When using this field, id should be left
  /// blank. The BinAuthz API handlers will calculate the ID
  /// and fill it in automatically. BinAuthz computes this ID
  /// as the OpenPGP RFC4880 V4 fingerprint, represented as
  /// upper-case hex. If id is provided by the caller, it will
  /// be overwritten by the API-calculated ID.
  final pulumi.Input<String>? asciiArmoredPgpPublicKey;

  /// A descriptive comment. This field may be updated.
  final pulumi.Input<String>? comment;

  /// The ID of this public key. Signatures verified by BinAuthz
  /// must include the ID of the public key that can be used to
  /// verify them, and that ID must match the contents of this
  /// field exactly. Additional restrictions on this field can
  /// be imposed based on which public key type is encapsulated.
  /// See the documentation on publicKey cases below for details.
  final pulumi.Input<String>? id;

  /// A raw PKIX SubjectPublicKeyInfo format public key.
  /// NOTE: id may be explicitly provided by the caller when using this
  /// type of public key, but it MUST be a valid RFC3986 URI. If id is left
  /// blank, a default one will be computed based on the digest of the DER
  /// encoding of the public key.
  /// Structure is documented below.
  final pulumi.Input<AttestorAttestationAuthorityNotePublicKeyPkixPublicKey>?
  pkixPublicKey;

  /// Creates a new [AttestorAttestationAuthorityNotePublicKey].
  /// [asciiArmoredPgpPublicKey] ASCII-armored representation of a PGP public key, as the
  /// [comment] A descriptive comment. This field may be updated.
  /// [id] The ID of this public key. Signatures verified by BinAuthz
  /// [pkixPublicKey] A raw PKIX SubjectPublicKeyInfo format public key.
  AttestorAttestationAuthorityNotePublicKey({
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
      'pkixPublicKey':
          ?pulumi.Input.mapOptionalInputValue<
            AttestorAttestationAuthorityNotePublicKeyPkixPublicKey,
            Map<String, dynamic>
          >(pkixPublicKey, (value) => value.toMap()),
    };
  }

  factory AttestorAttestationAuthorityNotePublicKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttestorAttestationAuthorityNotePublicKey(
      asciiArmoredPgpPublicKey: (() {
        final guardedValue = map['asciiArmoredPgpPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pkixPublicKey: (() {
        final guardedValue = map['pkixPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AttestorAttestationAuthorityNotePublicKeyPkixPublicKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
