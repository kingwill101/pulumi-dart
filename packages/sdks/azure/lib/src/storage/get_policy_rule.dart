// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule_action.dart';
import 'get_policy_rule_filter.dart';

class GetPolicyRule {
  /// An `actions` block as documented below.
  final pulumi.Input<List<GetPolicyRuleAction>> actions;
  /// Boolean to specify whether the rule is enabled.
  final pulumi.Input<bool> enabled;
  /// A `filter` block as documented below.
  final pulumi.Input<List<GetPolicyRuleFilter>> filters;
  /// The filter tag name used for tag based filtering for blob objects.
  final pulumi.Input<String> name;

  /// Creates a new [GetPolicyRule].
  /// [actions] An `actions` block as documented below.
  /// [enabled] Boolean to specify whether the rule is enabled.
  /// [filters] A `filter` block as documented below.
  /// [name] The filter tag name used for tag based filtering for blob objects.
  GetPolicyRule({
    required this.actions,
    required this.enabled,
    required this.filters,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetPolicyRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetPolicyRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'filters': pulumi.Input.mapInputValue<List<GetPolicyRuleFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPolicyRuleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyRule(
      actions: (pulumi.Input.decodeList<GetPolicyRuleAction>(map['actions'], (value) => GetPolicyRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
      filters: (pulumi.Input.decodeList<GetPolicyRuleFilter>(map['filters'], (value) => GetPolicyRuleFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

