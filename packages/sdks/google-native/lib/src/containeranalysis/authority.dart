// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hint_containeranalysis_v1beta1.dart';

/// Note kind that represents a logical attestation "role" or "authority". For example, an organization might have one `Authority` for "QA" and one for "build". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don't all live in the same project.
class Authority {
  /// Hint hints at the purpose of the attestation authority.
  final pulumi.Input<HintContaineranalysisV1beta1>? hint;

  /// Creates a new [Authority].
  /// [hint] Hint hints at the purpose of the attestation authority.
  Authority({
    this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': ?pulumi.Input.mapOptionalInputValue<HintContaineranalysisV1beta1, Map<String, dynamic>>(hint, (value) => value.toMap()),
    };
  }

  factory Authority.fromMap(Map<String, dynamic> map) {
    return Authority(
      hint: map['hint'] == null ? null : (HintContaineranalysisV1beta1.fromMap((map['hint'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

