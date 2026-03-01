// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exception_entry.dart';
import 'managed_rule_set.dart';
import 'owasp_crs_exclusion_entry.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class ManagedRulesDefinition {
  /// The exceptions that are applied on the policy.
  final List<ExceptionEntry>? exceptions;
  /// The Exclusions that are applied on the policy.
  final List<OwaspCrsExclusionEntry>? exclusions;
  /// The managed rule sets that are associated with the policy.
  final List<ManagedRuleSet> managedRuleSets;

  /// Creates a new [ManagedRulesDefinition].
  /// [exceptions] The exceptions that are applied on the policy.
  /// [exclusions] The Exclusions that are applied on the policy.
  /// [managedRuleSets] The managed rule sets that are associated with the policy.
  ManagedRulesDefinition({
    this.exceptions,
    this.exclusions,
    required this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?exceptions == null ? null : pulumi.Input.encodeList<ExceptionEntry, Map<String, dynamic>>(exceptions!, (value) => value.toMap()),
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<OwaspCrsExclusionEntry, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'managedRuleSets': pulumi.Input.encodeList<ManagedRuleSet, Map<String, dynamic>>(managedRuleSets, (value) => value.toMap()),
    };
  }

  factory ManagedRulesDefinition.fromMap(Map<String, dynamic> map) {
    return ManagedRulesDefinition(
      exceptions: map['exceptions'] == null ? null : pulumi.Input.decodeList<ExceptionEntry>(map['exceptions'], (value) => ExceptionEntry.fromMap((value as Map).cast<String, dynamic>())),
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<OwaspCrsExclusionEntry>(map['exclusions'], (value) => OwaspCrsExclusionEntry.fromMap((value as Map).cast<String, dynamic>())),
      managedRuleSets: pulumi.Input.decodeList<ManagedRuleSet>(map['managedRuleSets'], (value) => ManagedRuleSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

