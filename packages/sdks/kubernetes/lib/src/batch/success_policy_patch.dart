// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'success_policy_rule_patch.dart';

/// SuccessPolicy describes when a Job can be declared as succeeded based on the success of some indexes.
class SuccessPolicyPatch {
  /// rules represents the list of alternative rules for the declaring the Jobs as successful before `.status.succeeded &gt;= .spec.completions`. Once any of the rules are met, the "SuccessCriteriaMet" condition is added, and the lingering pods are removed. The terminal state for such a Job has the "Complete" condition. Additionally, these rules are evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most 20 elements are allowed.
  final pulumi.Input<List<SuccessPolicyRulePatch>>? rules;

  /// Creates a new [SuccessPolicyPatch].
  /// [rules] rules represents the list of alternative rules for the declaring the Jobs as successful before `.status.succeeded &gt;= .spec.completions`. Once any of the rules are met, the "SuccessCriteriaMet" condition is added, and the lingering pods are removed. The terminal state for such a Job has the "Complete" condition. Additionally, these rules are evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most 20 elements are allowed.
  SuccessPolicyPatch({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SuccessPolicyRulePatch>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SuccessPolicyRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SuccessPolicyPatch.fromMap(Map<String, dynamic> map) {
    return SuccessPolicyPatch(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SuccessPolicyRulePatch>(guardedValue, (value) => SuccessPolicyRulePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

