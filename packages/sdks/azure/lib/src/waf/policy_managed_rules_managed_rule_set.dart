// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_managed_rule_set_rule_group_override.dart';

class PolicyManagedRulesManagedRuleSet {
  /// One or more `ruleGroupOverride` block defined below.
  final pulumi.Input<List<PolicyManagedRulesManagedRuleSetRuleGroupOverride>>? ruleGroupOverrides;
  /// The rule set type. Possible values: `Microsoft_BotManagerRuleSet`, `Microsoft_DefaultRuleSet` and `OWASP`. Defaults to `OWASP`.
  final pulumi.Input<String>? type;
  /// The rule set version. Possible values: `0.1`, `1.0`, `1.1`, `2.1`, `2.2`, `2.2.9`, `3.0`, `3.1` and `3.2`.
  final pulumi.Input<String> version;

  /// Creates a new [PolicyManagedRulesManagedRuleSet].
  /// [ruleGroupOverrides] One or more `ruleGroupOverride` block defined below.
  /// [type] The rule set type. Possible values: `Microsoft_BotManagerRuleSet`, `Microsoft_DefaultRuleSet` and `OWASP`. Defaults to `OWASP`.
  /// [version] The rule set version. Possible values: `0.1`, `1.0`, `1.1`, `2.1`, `2.2`, `2.2.9`, `3.0`, `3.1` and `3.2`.
  const PolicyManagedRulesManagedRuleSet({
    this.ruleGroupOverrides,
    this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupOverrides': ?pulumi.Input.mapOptionalInputValue<List<PolicyManagedRulesManagedRuleSetRuleGroupOverride>, List<Map<String, dynamic>>>(ruleGroupOverrides, (value) => pulumi.Input.encodeList<PolicyManagedRulesManagedRuleSetRuleGroupOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'version': version,
    };
  }

  factory PolicyManagedRulesManagedRuleSet.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesManagedRuleSet(
      ruleGroupOverrides: (() { final guardedValue = map['ruleGroupOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyManagedRulesManagedRuleSetRuleGroupOverride>(guardedValue, (value) => PolicyManagedRulesManagedRuleSetRuleGroupOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
