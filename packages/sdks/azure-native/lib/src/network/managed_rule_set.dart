// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_group_override.dart';

/// Defines a managed rule set.
class ManagedRuleSet {
  /// Defines the rule group overrides to apply to the rule set.
  final List<ManagedRuleGroupOverride>? ruleGroupOverrides;
  /// Defines the rule set type to use.
  final String ruleSetType;
  /// Defines the version of the rule set to use.
  final String ruleSetVersion;

  /// Creates a new [ManagedRuleSet].
  /// [ruleGroupOverrides] Defines the rule group overrides to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSet({
    this.ruleGroupOverrides,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupOverrides': ?ruleGroupOverrides == null ? null : pulumi.Input.encodeList<ManagedRuleGroupOverride, Map<String, dynamic>>(ruleGroupOverrides!, (value) => value.toMap()),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSet.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSet(
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : pulumi.Input.decodeList<ManagedRuleGroupOverride>(map['ruleGroupOverrides'], (value) => ManagedRuleGroupOverride.fromMap((value as Map).cast<String, dynamic>())),
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

