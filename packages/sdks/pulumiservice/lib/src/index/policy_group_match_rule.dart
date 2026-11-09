// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_tag_condition.dart';

class PolicyGroupMatchRule {
  /// Tag conditions that must all hold for the rule to match. At least one is required.
  final pulumi.Input<List<PolicyGroupTagCondition>> conditions;

  /// Creates a new [PolicyGroupMatchRule].
  /// [conditions] Tag conditions that must all hold for the rule to match. At least one is required.
  const PolicyGroupMatchRule({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<PolicyGroupTagCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PolicyGroupTagCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyGroupMatchRule.fromMap(Map<String, dynamic> map) {
    return PolicyGroupMatchRule(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyGroupTagCondition>(map['conditions']!, (value) => PolicyGroupTagCondition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
