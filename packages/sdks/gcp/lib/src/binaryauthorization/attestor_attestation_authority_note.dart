// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_attestation_authority_note_public_key.dart';

class AttestorAttestationAuthorityNote {
  /// (Output)
  /// This field will contain the service account email address that
  /// this Attestor will use as the principal when querying Container
  /// Analysis. Attestor administrators must grant this service account
  /// the IAM role needed to read attestations from the noteReference in
  /// Container Analysis (containeranalysis.notes.occurrences.viewer).
  /// This email address is fixed for the lifetime of the Attestor, but
  /// callers should not make any other assumptions about the service
  /// account email; future versions may use an email based on a
  /// different naming pattern.
  final pulumi.Input<String>? delegationServiceAccountEmail;
  /// The resource name of a ATTESTATION_AUTHORITY Note, created by the
  /// user. If the Note is in a different project from the Attestor, it
  /// should be specified in the format `projects/*/notes/*` (or the legacy
  /// `providers/*/notes/*`). This field may not be updated.
  /// An attestation by this attestor is stored as a Container Analysis
  /// ATTESTATION_AUTHORITY Occurrence that names a container image
  /// and that links to this Note.
  final pulumi.Input<String> noteReference;
  /// Public keys that verify attestations signed by this attestor. This
  /// field may be updated.
  /// If this field is non-empty, one of the specified public keys must
  /// verify that an attestation was signed by this attestor for the
  /// image specified in the admission request.
  /// If this field is empty, this attestor always returns that no valid
  /// attestations exist.
  /// Structure is documented below.
  final pulumi.Input<List<AttestorAttestationAuthorityNotePublicKey>>? publicKeys;

  /// Creates a new [AttestorAttestationAuthorityNote].
  /// [delegationServiceAccountEmail] (Output)
  /// [noteReference] The resource name of a ATTESTATION_AUTHORITY Note, created by the
  /// [publicKeys] Public keys that verify attestations signed by this attestor. This
  AttestorAttestationAuthorityNote({
    this.delegationServiceAccountEmail,
    required this.noteReference,
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegationServiceAccountEmail': ?delegationServiceAccountEmail,
      'noteReference': noteReference,
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<AttestorAttestationAuthorityNotePublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<AttestorAttestationAuthorityNotePublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttestorAttestationAuthorityNote.fromMap(Map<String, dynamic> map) {
    return AttestorAttestationAuthorityNote(
      delegationServiceAccountEmail: map['delegationServiceAccountEmail'] == null ? null : (map['delegationServiceAccountEmail'] as String).input(),
      noteReference: (map['noteReference'] as String).input(),
      publicKeys: map['publicKeys'] == null ? null : (pulumi.Input.decodeList<AttestorAttestationAuthorityNotePublicKey>(map['publicKeys'], (value) => AttestorAttestationAuthorityNotePublicKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

