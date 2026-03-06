// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'success_policy_rule.dart';

/// SuccessPolicy describes when a Job can be declared as succeeded based on the success of some indexes.
class SuccessPolicy {
  /// rules represents the list of alternative rules for the declaring the Jobs as successful before `.status.succeeded &gt;= .spec.completions`. Once any of the rules are met, the "SuccessCriteriaMet" condition is added, and the lingering pods are removed. The terminal state for such a Job has the "Complete" condition. Additionally, these rules are evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most 20 elements are allowed.
  final pulumi.Input<List<SuccessPolicyRule>> rules;

  /// Creates a new [SuccessPolicy].
  /// [rules] rules represents the list of alternative rules for the declaring the Jobs as successful before `.status.succeeded &gt;= .spec.completions`. Once any of the rules are met, the "SuccessCriteriaMet" condition is added, and the lingering pods are removed. The terminal state for such a Job has the "Complete" condition. Additionally, these rules are evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most 20 elements are allowed.
  const SuccessPolicy({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<SuccessPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SuccessPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SuccessPolicy.fromMap(Map<String, dynamic> map) {
    return SuccessPolicy(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<SuccessPolicyRule>(map['rules']!, (value) => SuccessPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

