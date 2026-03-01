// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_set.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class OwaspCrsExclusionEntry {
  /// The managed rule sets that are associated with the exclusion.
  final List<ExclusionManagedRuleSet>? exclusionManagedRuleSets;
  /// The variable to be excluded.
  final String matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  final String selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  final String selectorMatchOperator;

  /// Creates a new [OwaspCrsExclusionEntry].
  /// [exclusionManagedRuleSets] The managed rule sets that are associated with the exclusion.
  /// [matchVariable] The variable to be excluded.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  OwaspCrsExclusionEntry({
    this.exclusionManagedRuleSets,
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionManagedRuleSets': ?exclusionManagedRuleSets == null ? null : pulumi.Input.encodeList<ExclusionManagedRuleSet, Map<String, dynamic>>(exclusionManagedRuleSets!, (value) => value.toMap()),
      'matchVariable': matchVariable,
      'selector': selector,
      'selectorMatchOperator': selectorMatchOperator,
    };
  }

  factory OwaspCrsExclusionEntry.fromMap(Map<String, dynamic> map) {
    return OwaspCrsExclusionEntry(
      exclusionManagedRuleSets: map['exclusionManagedRuleSets'] == null ? null : pulumi.Input.decodeList<ExclusionManagedRuleSet>(map['exclusionManagedRuleSets'], (value) => ExclusionManagedRuleSet.fromMap((value as Map).cast<String, dynamic>())),
      matchVariable: map['matchVariable'] as String,
      selector: map['selector'] as String,
      selectorMatchOperator: map['selectorMatchOperator'] as String,
    );
  }
}

