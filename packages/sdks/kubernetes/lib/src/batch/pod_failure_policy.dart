// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_failure_policy_rule.dart';

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
class PodFailurePolicy {
  /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  final List<PodFailurePolicyRule> rules;

  /// Creates a new [PodFailurePolicy].
  /// [rules] A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  PodFailurePolicy({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.encodeList<PodFailurePolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory PodFailurePolicy.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicy(
      rules: pulumi.Input.decodeList<PodFailurePolicyRule>(map['rules'], (value) => PodFailurePolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

