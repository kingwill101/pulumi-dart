// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_exclusion.dart';
import 'policy_managed_rules_managed_rule_set.dart';

class PolicyManagedRules {
  /// One or more `exclusion` block defined below.
  final pulumi.Input<List<PolicyManagedRulesExclusion>>? exclusions;
  /// One or more `managed_rule_set` block defined below.
  final pulumi.Input<List<PolicyManagedRulesManagedRuleSet>> managedRuleSets;

  /// Creates a new [PolicyManagedRules].
  /// [exclusions] One or more `exclusion` block defined below.
  /// [managedRuleSets] One or more `managed_rule_set` block defined below.
  PolicyManagedRules({
    this.exclusions,
    required this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<PolicyManagedRulesExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<PolicyManagedRulesExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedRuleSets': pulumi.Input.mapInputValue<List<PolicyManagedRulesManagedRuleSet>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<PolicyManagedRulesManagedRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyManagedRules.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRules(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyManagedRulesExclusion>(guardedValue, (value) => PolicyManagedRulesExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedRuleSets: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyManagedRulesManagedRuleSet>(map['managedRuleSets']!, (value) => PolicyManagedRulesManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

