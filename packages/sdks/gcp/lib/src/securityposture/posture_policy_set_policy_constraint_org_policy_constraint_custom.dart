// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_org_policy_constraint_custom_custom_constraint.dart';
import 'posture_policy_set_policy_constraint_org_policy_constraint_custom_policy_rule.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom {
  /// Organization policy custom constraint definition.
  /// Structure is documented below.
  final pulumi.Input<
    PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint
  >?
  customConstraint;

  /// Definition of policy rules
  /// Structure is documented below.
  final pulumi.Input<
    List<PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule>
  >
  policyRules;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom].
  /// [customConstraint] Organization policy custom constraint definition.
  /// [policyRules] Definition of policy rules
  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom({
    this.customConstraint,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConstraint':
          ?pulumi.Input.mapOptionalInputValue<
            PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint,
            Map<String, dynamic>
          >(customConstraint, (value) => value.toMap()),
      'policyRules':
          pulumi.Input.mapInputValue<
            List<
              PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule
            >,
            List<Map<String, dynamic>>
          >(
            policyRules,
            (value) =>
                pulumi.Input.encodeList<
                  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom(
      customConstraint: (() {
        final guardedValue = map['customConstraint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule
        >(
          map['policyRules']!,
          (value) =>
              PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
