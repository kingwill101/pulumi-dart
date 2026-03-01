// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_exclusion_excluded_rule_set_rule_group.dart';

class PolicyManagedRulesExclusionExcludedRuleSet {
  /// One or more `rule_group` block defined below.
  final List<PolicyManagedRulesExclusionExcludedRuleSetRuleGroup>? ruleGroups;
  /// The rule set type. Possible values are `Microsoft_DefaultRuleSet`, `Microsoft_BotManagerRuleSet` and `OWASP`. Defaults to `OWASP`.
  final String? type;
  /// The rule set version. Possible values are `1.0`, `1.1` (for rule set type `Microsoft_BotManagerRuleSet`), `2.1`, `2.2` (for rule set type `Microsoft_DefaultRuleSet`) and `3.2` (for rule set type `OWASP`). Defaults to `3.2`.
  final String? version;

  /// Creates a new [PolicyManagedRulesExclusionExcludedRuleSet].
  /// [ruleGroups] One or more `rule_group` block defined below.
  /// [type] The rule set type. Possible values are `Microsoft_DefaultRuleSet`, `Microsoft_BotManagerRuleSet` and `OWASP`. Defaults to `OWASP`.
  /// [version] The rule set version. Possible values are `1.0`, `1.1` (for rule set type `Microsoft_BotManagerRuleSet`), `2.1`, `2.2` (for rule set type `Microsoft_DefaultRuleSet`) and `3.2` (for rule set type `OWASP`). Defaults to `3.2`.
  PolicyManagedRulesExclusionExcludedRuleSet({
    this.ruleGroups,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroups': ?ruleGroups == null ? null : pulumi.Input.encodeList<PolicyManagedRulesExclusionExcludedRuleSetRuleGroup, Map<String, dynamic>>(ruleGroups!, (value) => value.toMap()),
      'type': ?type,
      'version': ?version,
    };
  }

  factory PolicyManagedRulesExclusionExcludedRuleSet.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesExclusionExcludedRuleSet(
      ruleGroups: map['ruleGroups'] == null ? null : pulumi.Input.decodeList<PolicyManagedRulesExclusionExcludedRuleSetRuleGroup>(map['ruleGroups'], (value) => PolicyManagedRulesExclusionExcludedRuleSetRuleGroup.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

