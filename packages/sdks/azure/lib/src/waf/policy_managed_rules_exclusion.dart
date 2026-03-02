// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_exclusion_excluded_rule_set.dart';

class PolicyManagedRulesExclusion {
  /// One or more `excluded_rule_set` block defined below.
  final pulumi.Input<PolicyManagedRulesExclusionExcludedRuleSet>? excludedRuleSet;
  /// The name of the Match Variable. Possible values: `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames`, `RequestHeaderValues`.
  final pulumi.Input<String> matchVariable;
  /// Describes field of the matchVariable collection.
  final pulumi.Input<String> selector;
  /// Describes operator to be matched. Possible values: `Contains`, `EndsWith`, `Equals`, `EqualsAny`, `StartsWith`.
  final pulumi.Input<String> selectorMatchOperator;

  /// Creates a new [PolicyManagedRulesExclusion].
  /// [excludedRuleSet] One or more `excluded_rule_set` block defined below.
  /// [matchVariable] The name of the Match Variable. Possible values: `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames`, `RequestHeaderValues`.
  /// [selector] Describes field of the matchVariable collection.
  /// [selectorMatchOperator] Describes operator to be matched. Possible values: `Contains`, `EndsWith`, `Equals`, `EqualsAny`, `StartsWith`.
  PolicyManagedRulesExclusion({
    this.excludedRuleSet,
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedRuleSet': ?pulumi.Input.mapOptionalInputValue<PolicyManagedRulesExclusionExcludedRuleSet, Map<String, dynamic>>(excludedRuleSet, (value) => value.toMap()),
      'matchVariable': matchVariable,
      'selector': selector,
      'selectorMatchOperator': selectorMatchOperator,
    };
  }

  factory PolicyManagedRulesExclusion.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesExclusion(
      excludedRuleSet: map['excludedRuleSet'] == null ? null : (PolicyManagedRulesExclusionExcludedRuleSet.fromMap((map['excludedRuleSet'] as Map).cast<String, dynamic>())).input(),
      matchVariable: (map['matchVariable'] as String).input(),
      selector: (map['selector'] as String).input(),
      selectorMatchOperator: (map['selectorMatchOperator'] as String).input(),
    );
  }
}

