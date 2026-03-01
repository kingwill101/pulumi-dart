// ignore_for_file: unused_element, unnecessary_cast

import 'hint.dart';

/// Note kind that represents a logical attestation "role" or "authority". For example, an organization might have one `Authority` for "QA" and one for "build". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don't all live in the same project.
class AttestationNote {
  /// Hint hints at the purpose of the attestation authority.
  final Hint? hint;

  /// Creates a new [AttestationNote].
  /// [hint] Hint hints at the purpose of the attestation authority.
  AttestationNote({
    this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': ?hint == null ? null : hint!.toMap(),
    };
  }

  factory AttestationNote.fromMap(Map<String, dynamic> map) {
    return AttestationNote(
      hint: map['hint'] == null ? null : Hint.fromMap((map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}

