// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_actions.dart';
import 'management_policy_rule_filters.dart';

class ManagementPolicyRule {
  /// An `actions` block as documented below.
  final pulumi.Input<ManagementPolicyRuleActions> actions;
  /// Boolean to specify whether the rule is enabled.
  final pulumi.Input<bool> enabled;
  /// A `filters` block as documented below.
  final pulumi.Input<ManagementPolicyRuleFilters> filters;
  /// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
  final pulumi.Input<String> name;

  /// Creates a new [ManagementPolicyRule].
  /// [actions] An `actions` block as documented below.
  /// [enabled] Boolean to specify whether the rule is enabled.
  /// [filters] A `filters` block as documented below.
  /// [name] The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
  ManagementPolicyRule({
    required this.actions,
    required this.enabled,
    required this.filters,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<ManagementPolicyRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'enabled': enabled,
      'filters': pulumi.Input.mapInputValue<ManagementPolicyRuleFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ManagementPolicyRule.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRule(
      actions: (ManagementPolicyRuleActions.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
      filters: (ManagementPolicyRuleFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

