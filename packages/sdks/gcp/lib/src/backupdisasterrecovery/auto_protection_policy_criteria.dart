// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_criteria_matching_condition.dart';

class AutoProtectionPolicyCriteria {
  /// A list of matching conditions that a resource must meet to be protected by the policy.
  /// Currently, only one condition is supported.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyCriteriaMatchingCondition>> matchingConditions;

  /// Creates a new [AutoProtectionPolicyCriteria].
  /// [matchingConditions] A list of matching conditions that a resource must meet to be protected by the policy.
  const AutoProtectionPolicyCriteria({
    required this.matchingConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchingConditions': pulumi.Input.mapInputValue<List<AutoProtectionPolicyCriteriaMatchingCondition>, List<Map<String, dynamic>>>(matchingConditions, (value) => pulumi.Input.encodeList<AutoProtectionPolicyCriteriaMatchingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoProtectionPolicyCriteria.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyCriteria(
      matchingConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyCriteriaMatchingCondition>(map['matchingConditions']!, (value) => AutoProtectionPolicyCriteriaMatchingCondition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
