// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exclusion_managed_rule_set_response.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class OwaspCrsExclusionEntryResponse {
  /// The managed rule sets that are associated with the exclusion.
  final pulumi.Input<List<ExclusionManagedRuleSetResponse>>? exclusionManagedRuleSets;
  /// The variable to be excluded.
  final pulumi.Input<String> matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  final pulumi.Input<String> selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  final pulumi.Input<String> selectorMatchOperator;

  /// Creates a new [OwaspCrsExclusionEntryResponse].
  /// [exclusionManagedRuleSets] The managed rule sets that are associated with the exclusion.
  /// [matchVariable] The variable to be excluded.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  OwaspCrsExclusionEntryResponse({
    this.exclusionManagedRuleSets,
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionManagedRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ExclusionManagedRuleSetResponse>, List<Map<String, dynamic>>>(exclusionManagedRuleSets, (value) => pulumi.Input.encodeList<ExclusionManagedRuleSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchVariable': matchVariable,
      'selector': selector,
      'selectorMatchOperator': selectorMatchOperator,
    };
  }

  factory OwaspCrsExclusionEntryResponse.fromMap(Map<String, dynamic> map) {
    return OwaspCrsExclusionEntryResponse(
      exclusionManagedRuleSets: map['exclusionManagedRuleSets'] == null ? null : (pulumi.Input.decodeList<ExclusionManagedRuleSetResponse>(map['exclusionManagedRuleSets']!, (value) => ExclusionManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchVariable: (map['matchVariable'] as String).input(),
      selector: (map['selector'] as String).input(),
      selectorMatchOperator: (map['selectorMatchOperator'] as String).input(),
    );
  }
}

