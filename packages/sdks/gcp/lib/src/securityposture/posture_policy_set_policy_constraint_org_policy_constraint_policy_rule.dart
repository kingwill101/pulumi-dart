// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_condition.dart';
import 'posture_policy_set_policy_constraint_org_policy_constraint_policy_rule_values.dart';

class PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule {
  /// Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  final pulumi.Input<bool>? allowAll;

  /// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// This page details the objects and attributes that are used to the build the CEL expressions for
  /// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
  /// Structure is documented below.
  final pulumi.Input<
    PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleCondition
  >?
  condition;

  /// Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  final pulumi.Input<bool>? denyAll;

  /// If `true`, then the policy is enforced. If `false`, then any configuration is acceptable.
  /// This field can be set only in policies for boolean constraints.
  final pulumi.Input<bool>? enforce;

  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  /// Structure is documented below.
  final pulumi.Input<
    PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues
  >?
  values;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule].
  /// [allowAll] Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  /// [condition] Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// [denyAll] Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  /// [enforce] If `true`, then the policy is enforced. If `false`, then any configuration is acceptable.
  /// [values] List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': ?allowAll,
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'denyAll': ?denyAll,
      'enforce': ?enforce,
      'values':
          ?pulumi.Input.mapOptionalInputValue<
            PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues,
            Map<String, dynamic>
          >(values, (value) => value.toMap()),
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRule(
      allowAll: (() {
        final guardedValue = map['allowAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      denyAll: (() {
        final guardedValue = map['denyAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enforce: (() {
        final guardedValue = map['enforce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
