// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_dry_run_spec_rule_condition.dart';
import 'policy_dry_run_spec_rule_values.dart';

class PolicyDryRunSpecRule {
  /// Setting this to `"TRUE"` means that all values are allowed. This field can be set only in Policies for list constraints.
  final pulumi.Input<String?>? allowAll;
  /// A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where keyName and valueName are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// Structure is documented below.
  final pulumi.Input<PolicyDryRunSpecRuleCondition?>? condition;
  /// Setting this to `"TRUE"` means that all values are denied. This field can be set only in Policies for list constraints.
  final pulumi.Input<String?>? denyAll;
  /// If `"TRUE"`, then the `Policy` is enforced. If `"FALSE"`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.
  final pulumi.Input<String?>? enforce;
  /// Optional. Required for Managed Constraints if parameters defined in constraints. Pass parameter values when policy enforcement is enabled. Ensure that parameter value types match those defined in the constraint definition. For example: { \"allowedLocations\" : [\"us-east1\", \"us-west1\"], \"allowAll\" : true }
  final pulumi.Input<String?>? parameters;
  /// List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  /// Structure is documented below.
  final pulumi.Input<PolicyDryRunSpecRuleValues?>? values;

  /// Creates a new [PolicyDryRunSpecRule].
  /// [allowAll] Setting this to `"TRUE"` means that all values are allowed. This field can be set only in Policies for list constraints.
  /// [condition] A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the "||" or "&&" operators. Each subexpression must be of the form "resource.matchTag('/tag_key_short_name, 'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')". where keyName and valueName are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: "resource.matchTag('123456789/environment, 'prod')". or "resource.matchTagId('tagKeys/123', 'tagValues/456')".
  /// [denyAll] Setting this to `"TRUE"` means that all values are denied. This field can be set only in Policies for list constraints.
  /// [enforce] If `"TRUE"`, then the `Policy` is enforced. If `"FALSE"`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.
  /// [parameters] Optional. Required for Managed Constraints if parameters defined in constraints. Pass parameter values when policy enforcement is enabled. Ensure that parameter value types match those defined in the constraint definition. For example: { \"allowedLocations\" : [\"us-east1\", \"us-west1\"], \"allowAll\" : true }
  /// [values] List of values to be used for this policy rule. This field can be set only in policies for list constraints.
  const PolicyDryRunSpecRule({
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
      'condition': ?pulumi.Input.mapOptionalInputValue<PolicyDryRunSpecRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'denyAll': ?denyAll,
      'enforce': ?enforce,
      'parameters': ?parameters,
      'values': ?pulumi.Input.mapOptionalInputValue<PolicyDryRunSpecRuleValues, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory PolicyDryRunSpecRule.fromMap(Map<String, dynamic> map) {
    return PolicyDryRunSpecRule(
      allowAll: (() { final guardedValue = map['allowAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDryRunSpecRuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denyAll: (() { final guardedValue = map['denyAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDryRunSpecRuleValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
