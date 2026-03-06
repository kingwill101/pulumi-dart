// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_policy_spec_policy_rule_string_values.dart';
import 'google_type_expr.dart';

/// A rule used to express this policy.
class GoogleCloudOrgpolicyV2PolicySpecPolicyRule {
  /// Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  final pulumi.Input<bool>? allowAll;
  /// A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  final pulumi.Input<GoogleTypeExpr>? condition;
  /// Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  final pulumi.Input<bool>? denyAll;
  /// If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This field can be set only in policies for boolean constraints.
  final pulumi.Input<bool>? enforce;
  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues>? values;

  /// Creates a new [GoogleCloudOrgpolicyV2PolicySpecPolicyRule].
  /// [allowAll] Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  /// [condition] A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// [denyAll] Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  /// [enforce] If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This field can be set only in policies for boolean constraints.
  /// [values] List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  const GoogleCloudOrgpolicyV2PolicySpecPolicyRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': ?allowAll,
      'condition': ?pulumi.Input.mapOptionalInputValue<GoogleTypeExpr, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'denyAll': ?denyAll,
      'enforce': ?enforce,
      'values': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudOrgpolicyV2PolicySpecPolicyRule(
      allowAll: (() { final guardedValue = map['allowAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeExpr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denyAll: (() { final guardedValue = map['denyAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

