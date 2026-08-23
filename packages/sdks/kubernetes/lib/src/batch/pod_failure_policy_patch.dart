// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_failure_policy_rule_patch.dart';

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
class PodFailurePolicyPatch {
  /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  final pulumi.Input<List<PodFailurePolicyRulePatch>>? rules;

  /// Creates a new [PodFailurePolicyPatch].
  /// [rules] A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  const PodFailurePolicyPatch({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PodFailurePolicyRulePatch>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PodFailurePolicyRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodFailurePolicyPatch.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicyPatch(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodFailurePolicyRulePatch>(guardedValue, (value) => PodFailurePolicyRulePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
