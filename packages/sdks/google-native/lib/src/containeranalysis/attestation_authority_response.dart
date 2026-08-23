// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authority_hint_response.dart';

/// Note kind that represents a logical attestation "role" or "authority". For example, an organization might have one `AttestationAuthority` for "QA" and one for "build". This Note is intended to act strictly as a grouping mechanism for the attached Occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an Occurrence to a given Note. It also provides a single point of lookup to find all attached Attestation Occurrences, even if they don't all live in the same project.
class AttestationAuthorityResponse {
  final pulumi.Input<AttestationAuthorityHintResponse> hint;

  /// Creates a new [AttestationAuthorityResponse].
  /// [hint] Required.
  const AttestationAuthorityResponse({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': pulumi.Input.mapInputValue<AttestationAuthorityHintResponse, Map<String, dynamic>>(hint, (value) => value.toMap()),
    };
  }

  factory AttestationAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return AttestationAuthorityResponse(
      hint: pulumi.Input.fromValue(AttestationAuthorityHintResponse.fromMap((map['hint']! as Map).cast<String, dynamic>())),
    );
  }
}
