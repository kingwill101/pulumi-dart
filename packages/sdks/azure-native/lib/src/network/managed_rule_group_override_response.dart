// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_override_response.dart';

/// Defines a managed rule group override setting.
class ManagedRuleGroupOverrideResponse {
  /// The managed rule group to override.
  final pulumi.Input<String> ruleGroupName;
  /// List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  final pulumi.Input<List<ManagedRuleOverrideResponse>>? rules;

  /// Creates a new [ManagedRuleGroupOverrideResponse].
  /// [ruleGroupName] The managed rule group to override.
  /// [rules] List of rules that will be disabled. If none specified, all rules in the group will be disabled.
  ManagedRuleGroupOverrideResponse({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleOverrideResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ManagedRuleOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRuleGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleGroupOverrideResponse(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleOverrideResponse>(guardedValue, (value) => ManagedRuleOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

