// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_org_policy_constraint_policy_rule.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraint {
  /// Organization policy canned constraint Id
  final pulumi.Input<String> cannedConstraintId;
  /// Definition of policy rules
  /// Structure is documented below.
  final pulumi.Input<List<PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule>> policyRules;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraint].
  /// [cannedConstraintId] Organization policy canned constraint Id
  /// [policyRules] Definition of policy rules
  PosturePolicySetPolicyConstraintOrgPolicyConstraint({
    required this.cannedConstraintId,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cannedConstraintId': cannedConstraintId,
      'policyRules': pulumi.Input.mapInputValue<List<PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule>, List<Map<String, dynamic>>>(policyRules, (value) => pulumi.Input.encodeList<PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraint.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraint(
      cannedConstraintId: (map['cannedConstraintId'] as String).input(),
      policyRules: (pulumi.Input.decodeList<PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule>(map['policyRules'], (value) => PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

