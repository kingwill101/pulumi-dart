// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDefaultAdmissionRule {
  /// The action when a pod creation is denied by the admission rule.
  /// Possible values are: `ENFORCED_BLOCK_AND_AUDIT_LOG`, `DRYRUN_AUDIT_LOG_ONLY`.
  final pulumi.Input<String> enforcementMode;
  /// How this admission rule will be evaluated.
  /// Possible values are: `ALWAYS_ALLOW`, `REQUIRE_ATTESTATION`, `ALWAYS_DENY`.
  final pulumi.Input<String> evaluationMode;
  /// The resource names of the attestors that must attest to a
  /// container image. If the attestor is in a different project from the
  /// policy, it should be specified in the format `projects/*/attestors/*`.
  /// Each attestor must exist before a policy can reference it. To add an
  /// attestor to a policy the principal issuing the policy change
  /// request must be able to read the attestor resource.
  /// Note: this field must be non-empty when the evaluationMode field
  /// specifies REQUIRE_ATTESTATION, otherwise it must be empty.
  final pulumi.Input<List<String>>? requireAttestationsBies;

  /// Creates a new [PolicyDefaultAdmissionRule].
  /// [enforcementMode] The action when a pod creation is denied by the admission rule.
  /// [evaluationMode] How this admission rule will be evaluated.
  /// [requireAttestationsBies] The resource names of the attestors that must attest to a
  const PolicyDefaultAdmissionRule({
    required this.enforcementMode,
    required this.evaluationMode,
    this.requireAttestationsBies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementMode': enforcementMode,
      'evaluationMode': evaluationMode,
      'requireAttestationsBies': ?requireAttestationsBies,
    };
  }

  factory PolicyDefaultAdmissionRule.fromMap(Map<String, dynamic> map) {
    return PolicyDefaultAdmissionRule(
      enforcementMode: pulumi.Input.fromValue(map['enforcementMode'] as String),
      evaluationMode: pulumi.Input.fromValue(map['evaluationMode'] as String),
      requireAttestationsBies: (() { final guardedValue = map['requireAttestationsBies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
