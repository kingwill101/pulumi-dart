// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_orgpolicy_v2_policy_spec_policy_rule_string_values_response.dart';
import 'google_type_expr_response.dart';

/// A rule used to express this policy.
class GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse {
  /// Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  final bool allowAll;
  /// A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  final GoogleTypeExprResponse condition;
  /// Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  final bool denyAll;
  /// If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This field can be set only in policies for boolean constraints.
  final bool enforce;
  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  final GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValuesResponse values;

  /// Creates a new [GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse].
  /// [allowAll] Setting this to true means that all values are allowed. This field can be set only in policies for list constraints.
  /// [condition] A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// [denyAll] Setting this to true means that all values are denied. This field can be set only in policies for list constraints.
  /// [enforce] If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This field can be set only in policies for boolean constraints.
  /// [values] List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse({
    required this.allowAll,
    required this.condition,
    required this.denyAll,
    required this.enforce,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': allowAll,
      'condition': condition.toMap(),
      'denyAll': denyAll,
      'enforce': enforce,
      'values': values.toMap(),
    };
  }

  factory GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse(
      allowAll: map['allowAll'] as bool,
      condition: GoogleTypeExprResponse.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      denyAll: map['denyAll'] as bool,
      enforce: map['enforce'] as bool,
      values: GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValuesResponse.fromMap((map['values'] as Map).cast<String, dynamic>()),
    );
  }
}

