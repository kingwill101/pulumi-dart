// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_spec_rule_condition.dart';
import 'policy_spec_rule_values.dart';

class PolicySpecRule {
  /// Setting this to `"TRUE"` means that all values are allowed. This field can be set only in Policies for list constraints.
  final pulumi.Input<String>? allowAll;
  /// A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// Structure is documented below.
  final pulumi.Input<PolicySpecRuleCondition>? condition;
  /// Setting this to `"TRUE"` means that all values are denied. This field can be set only in Policies for list constraints.
  final pulumi.Input<String>? denyAll;
  /// If `"TRUE"`, then the `Policy` is enforced. If `"FALSE"`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.
  final pulumi.Input<String>? enforce;
  /// Optional. Required for Managed Constraints if parameters defined in constraints. Pass parameter values when policy enforcement is enabled. Ensure that parameter value types match those defined in the constraint definition. For example: { \"allowedLocations\" : [\"us-east1\", \"us-west1\"], \"allowAll\" : true }
  final pulumi.Input<String>? parameters;
  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  /// Structure is documented below.
  final pulumi.Input<PolicySpecRuleValues>? values;

  /// Creates a new [PolicySpecRule].
  /// [allowAll] Setting this to `"TRUE"` means that all values are allowed. This field can be set only in Policies for list constraints.
  /// [condition] A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// [denyAll] Setting this to `"TRUE"` means that all values are denied. This field can be set only in Policies for list constraints.
  /// [enforce] If `"TRUE"`, then the `Policy` is enforced. If `"FALSE"`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.
  /// [parameters] Optional. Required for Managed Constraints if parameters defined in constraints. Pass parameter values when policy enforcement is enabled. Ensure that parameter value types match those defined in the constraint definition. For example: { \"allowedLocations\" : [\"us-east1\", \"us-west1\"], \"allowAll\" : true }
  /// [values] List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  PolicySpecRule({
    this.allowAll,
    this.condition,
    this.denyAll,
    this.enforce,
    this.parameters,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': ?allowAll,
      'condition': ?pulumi.Input.mapOptionalInputValue<PolicySpecRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'denyAll': ?denyAll,
      'enforce': ?enforce,
      'parameters': ?parameters,
      'values': ?pulumi.Input.mapOptionalInputValue<PolicySpecRuleValues, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory PolicySpecRule.fromMap(Map<String, dynamic> map) {
    return PolicySpecRule(
      allowAll: map['allowAll'] == null ? null : (map['allowAll']! as String).input(),
      condition: map['condition'] == null ? null : (PolicySpecRuleCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      denyAll: map['denyAll'] == null ? null : (map['denyAll']! as String).input(),
      enforce: map['enforce'] == null ? null : (map['enforce']! as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      values: map['values'] == null ? null : (PolicySpecRuleValues.fromMap((map['values']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

